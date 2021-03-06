/*-
 * ============LICENSE_START=======================================================
 *  Copyright (C) 2019 Samsung Electronics Co., Ltd. All rights reserved.
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
 *
 * SPDX-License-Identifier: Apache-2.0
 * ============LICENSE_END=========================================================
 */

package org.onap.so.bpmn.infrastructure.workflow.tasks;

import java.util.List;
import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.onap.so.bpmn.servicedecomposition.entities.WorkflowResourceIds;
import org.onap.so.db.catalog.beans.macro.OrchestrationFlow;
import org.onap.so.serviceinstancebeans.RequestDetails;
import org.onap.so.serviceinstancebeans.ServiceInstancesRequest;

public class ConfigBuildingBlocksDataObject {

    private ServiceInstancesRequest sIRequest;
    private List<OrchestrationFlow> orchFlows;
    private String requestId;
    private Resource resourceKey;
    private String apiVersion;
    private String resourceId;
    private String requestAction;
    private boolean aLaCarte;
    private String vnfType;
    private WorkflowResourceIds workflowResourceIds;
    private RequestDetails requestDetails;
    private DelegateExecution execution;

    public ServiceInstancesRequest getsIRequest() {
        return sIRequest;
    }

    public ConfigBuildingBlocksDataObject setsIRequest(ServiceInstancesRequest sIRequest) {
        this.sIRequest = sIRequest;
        return this;
    }

    public List<OrchestrationFlow> getOrchFlows() {
        return orchFlows;
    }

    public ConfigBuildingBlocksDataObject setOrchFlows(List<OrchestrationFlow> orchFlows) {
        this.orchFlows = orchFlows;
        return this;
    }

    public String getRequestId() {
        return requestId;
    }

    public ConfigBuildingBlocksDataObject setRequestId(String requestId) {
        this.requestId = requestId;
        return this;
    }

    public Resource getResourceKey() {
        return resourceKey;
    }

    public ConfigBuildingBlocksDataObject setResourceKey(Resource resourceKey) {
        this.resourceKey = resourceKey;
        return this;
    }

    public String getApiVersion() {
        return apiVersion;
    }

    public ConfigBuildingBlocksDataObject setApiVersion(String apiVersion) {
        this.apiVersion = apiVersion;
        return this;
    }

    public String getResourceId() {
        return resourceId;
    }

    public ConfigBuildingBlocksDataObject setResourceId(String resourceId) {
        this.resourceId = resourceId;
        return this;
    }

    public String getRequestAction() {
        return requestAction;
    }

    public ConfigBuildingBlocksDataObject setRequestAction(String requestAction) {
        this.requestAction = requestAction;
        return this;
    }

    public boolean isaLaCarte() {
        return aLaCarte;
    }

    public ConfigBuildingBlocksDataObject setaLaCarte(boolean aLaCarte) {
        this.aLaCarte = aLaCarte;
        return this;
    }

    public String getVnfType() {
        return vnfType;
    }

    public ConfigBuildingBlocksDataObject setVnfType(String vnfType) {
        this.vnfType = vnfType;
        return this;
    }

    public WorkflowResourceIds getWorkflowResourceIds() {
        return workflowResourceIds;
    }

    public ConfigBuildingBlocksDataObject setWorkflowResourceIds(WorkflowResourceIds workflowResourceIds) {
        this.workflowResourceIds = workflowResourceIds;
        return this;
    }

    public RequestDetails getRequestDetails() {
        return requestDetails;
    }

    public ConfigBuildingBlocksDataObject setRequestDetails(RequestDetails requestDetails) {
        this.requestDetails = requestDetails;
        return this;
    }

    public DelegateExecution getExecution() {
        return execution;
    }

    public ConfigBuildingBlocksDataObject setExecution(DelegateExecution execution) {
        this.execution = execution;
        return this;
    }



}
