/*-
 * ============LICENSE_START=======================================================
 * ONAP - SO
 * ================================================================================
 * Copyright (C) 2017 - 2018 AT&T Intellectual Property. All rights reserved.
 * ================================================================================
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * ============LICENSE_END=========================================================
 */

package org.onap.so.bpmn.infrastructure.flowspecific.tasks;

import java.util.Optional;

import org.onap.so.bpmn.common.BuildingBlockExecution;
import org.onap.so.client.aai.entities.AAIResultWrapper;
import org.onap.so.client.exception.ExceptionBuilder;
import org.onap.so.logger.MsoLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UnassignNetworkBB {

	private static final MsoLogger msoLogger = MsoLogger.getMsoLogger(MsoLogger.Catalog.BPEL, UnassignNetworkBB.class);
	
	private static String MESSAGE_CANNOT_PERFORM_UNASSIGN = "Cannot perform Unassign Network. Network is still related to ";	
	private static String MESSAGE_ERROR_ROLLBACK = " Rollback is not possible. Please restore data manually.";	
	
	@Autowired
	private ExceptionBuilder exceptionUtil;

	@Autowired
	private NetworkBBUtils networkBBUtils;

	/**
	 * BPMN access method to prepare overall error messages.
	 * 
	 * @param execution - BuildingBlockExecution
	 * @param relatedToValue - String, ex: vf-module
	 * @return void - nothing
	 * @throws Exception
	 */
	
	public void checkRelationshipRelatedTo(BuildingBlockExecution execution, String relatedToValue) throws Exception {
		try {
			AAIResultWrapper aaiResultWrapper = execution.getVariable("l3NetworkAAIResultWrapper");
			Optional<org.onap.aai.domain.yang.L3Network> l3network = aaiResultWrapper.asBean(org.onap.aai.domain.yang.L3Network.class);
			if (networkBBUtils.isRelationshipRelatedToExists(l3network, relatedToValue)) {
				String msg = MESSAGE_CANNOT_PERFORM_UNASSIGN + relatedToValue;
				execution.setVariable("ErrorUnassignNetworkBB", msg);
				exceptionUtil.buildAndThrowWorkflowException(execution, 7000, msg);
			}
		} catch (Exception ex) {
			exceptionUtil.buildAndThrowWorkflowException(execution, 7000, ex);
		}
	}	
	
	/**
	 * BPMN access method to getCloudRegionId
	 * 
	 * @param execution - BuildingBlockExecution
	 * @return void - nothing
	 * @throws Exception
	 */
	
	public void getCloudSdncRegion(BuildingBlockExecution execution) throws Exception {
		try {
			String cloudRegionSdnc = networkBBUtils.getCloudRegion(execution, SourceSystem.SDNC);
			execution.setVariable("cloudRegionSdnc", cloudRegionSdnc);
		} catch (Exception ex) {
			exceptionUtil.buildAndThrowWorkflowException(execution, 7000, ex);
		}
	}		
	
	/**
	 * BPMN access method to prepare overall error messages.
	 * 
	 * @param execution - BuildingBlockExecution
	 * @return void - nothing
	 */
	public void errorEncountered(BuildingBlockExecution execution) {
		String msg;
		boolean isRollbackNeeded = execution.getVariable("isRollbackNeeded") != null ? execution.getVariable("isRollbackNeeded") : false;
		if (isRollbackNeeded == true) {
			msg = execution.getVariable("ErrorUnassignNetworkBB") + MESSAGE_ERROR_ROLLBACK;
		} else {
			msg = execution.getVariable("ErrorUnassignNetworkBB");
		}
		exceptionUtil.buildAndThrowWorkflowException(execution, 7000, msg);
	}	
	
	
}