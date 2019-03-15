use requestdb;

insert into operation_status(service_id, operation_id, service_name, user_id, result, operation_content, progress, reason, operate_at, finished_at) values
('serviceid', 'operationid', 'servicename', 'userid', 'result', 'operationcontent', 'progress', 'reason', '2016-11-24 13:19:10', '2016-11-24 13:19:10'); 


insert into infra_active_requests(request_id, client_request_id, action, request_status, status_message, progress, start_time, end_time, source, vnf_id, vnf_name, vnf_type, service_type, aic_node_clli, tenant_id, prov_status, vnf_params, vnf_outputs, request_body, response_body, last_modified_by, modify_time, request_type, volume_group_id, volume_group_name, vf_module_id, vf_module_name, vf_module_model_name, aai_service_id, aic_cloud_region, callback_url, correlator, network_id, network_name, network_type, request_scope, request_action, service_instance_id, service_instance_name, requestor_id, configuration_id, configuration_name, operational_env_id, operational_env_name, request_url) values
('00032ab7-3fb3-42e5-965d-8ea592502017', '00032ab7-3fb3-42e5-965d-8ea592502016', 'deleteInstance', 'COMPLETE', 'Vf Module has been deleted successfully.', '100', '2016-12-22 18:59:54', '2016-12-22 19:00:28', 'VID', 'b92f60c8-8de3-46c1-8dc1-e4390ac2b005', null, null, null, null, '6accefef3cb442ff9e644d589fb04107', null, null, null, '{"requestDetails":{"modelInfo":{"modelType":"vfModule","modelName":"vSAMP10aDEV::base::module-0"},"requestInfo":{"source":"VID"},"cloudConfiguration":{"tenantId":"6accefef3cb442ff9e644d589fb04107","lcpCloudRegionId":"mtn6"}}}', null, 'BPMN', '2016-12-22 19:00:28', null, null, null, 'c7d527b1-7a91-49fd-b97d-1c8c0f4a7992', null, 'vSAMP10aDEV::base::module-0', null, 'mtn6', null, null, null, null, null, 'vfModule', 'deleteInstance', 'e3b5744d-2ad1-4cdd-8390-c999a38829bc', null, null, null, null, null, null, 'http://localhost:8080/onap/so/infra/serviceInstantiation/v7/serviceInstances'),
('00093944-bf16-4373-ab9a-3adfe730ff2d', null, 'createInstance', 'FAILED', 'Error: Locked instance - This service (MSODEV_1707_SI_vSAMP10a_011-4) already has a request being worked with a status of IN_PROGRESS (RequestId - 278e83b1-4f9f-450e-9e7d-3700a6ed22f4). The existing request must finish or be cleaned up before proceeding.', '100', '2017-07-11 18:33:26', '2017-07-11 18:33:26', 'VID', null, null, null, null, null, '19123c2924c648eb8e42a3c1f14b7682', null, null, null, '{"requestDetails":{"modelInfo":{"modelInvariantId":"9647dfc4-2083-11e7-93ae-92361f002671","modelType":"service","modelName":"MSOTADevInfra_vSAMP10a_Service","modelVersion":"1.0","modelVersionId":"5df8b6de-2083-11e7-93ae-92361f002671"},"requestInfo":{"source":"VID","instanceName":"MSODEV_1707_SI_vSAMP10a_011-4","suppressRollback":false,"requestorId":"xxxxxx"},"subscriberInfo":{"globalSubscriberId":"MSO_1610_dev","subscriberName":"MSO_1610_dev"},"cloudConfiguration":{"tenantId":"19123c2924c648eb8e42a3c1f14b7682","lcpCloudRegionId":"mtn6"},"requestParameters":{"subscriptionServiceType":"MSO-dev-service-type","userParams":[{"name":"someUserParam","value":"someValue"}],"aLaCarte":true,"autoBuildVfModules":false,"cascadeDelete":false,"usePreload":true,"alaCarteSet":true,"alaCarte":true}}}', null, 'APIH', '2016-12-22 19:00:28', null, null, null, null, null, null, null, 'mtn6', null, null, null, null, null, 'service', 'createInstance', null, 'MSODEV_1707_SI_vSAMP10a_011-4', 'xxxxxx', null, null, null, null, 'http://localhost:8080/onap/so/infra/serviceInstantiation/v7/serviceInstances'),
('001619d2-a297-4a4b-a9f5-e2823c88458f', '001619d2-a297-4a4b-a9f5-e2823c88458f', 'CREATE_VF_MODULE', 'COMPLETE', 'COMPLETED', '100', '2016-07-01 14:11:42', '2017-05-02 16:03:34', 'PORTAL', null, 'test-vscp', 'elena_test21', null, null, '381b9ff6c75e4625b7a4182f90fc68d3', null, null, null, '<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>\n<vnf-request xmlns=\"http://org.onap.so/mso/infra/vnf-request/v1\">\n    <request-info>\n        <request-id>001619d2-a297-4a4b-a9f5-e2823c88458f</request-id>\n        <action>CREATE_VF_MODULE</action>\n        <source>PORTAL</source>\n    </request-info>\n    <vnf-inputs>\n        <vnf-name>test-vscp</vnf-name>\n        <vf-module-name>moduleName</vf-module-name>\n        <vnf-type>elena_test21</vnf-type>\n        <vf-module-model-name>moduleModelName</vf-module-model-name>\n        <asdc-service-model-version>1.0</asdc-service-model-version>\n        <service-id>a9a77d5a-123e-4ca2-9eb9-0b015d2ee0fb</service-id>\n        <aic-cloud-region>mtn9</aic-cloud-region>\n        <tenant-id>381b9ff6c75e4625b7a4182f90fc68d3</tenant-id>\n        <persona-model-id></persona-model-id>\n        <persona-model-version></persona-model-version>\n        <is-base-vf-module>false</is-base-vf-module>\n    </vnf-inputs>\n    <vnf-params xmlns:tns=\"http://org.onap.so/mso/infra/vnf-request/v1\"/>\n</vnf-request>\n', 'NONE', 'RDBTEST', '2016-07-01 14:11:42', 'VNF', null, null, null, 'MODULENAME1', 'moduleModelName', 'a9a77d5a-123e-4ca2-9eb9-0b015d2ee0fb', 'mtn9', null, null, null, null, null, 'vfModule', 'createInstance', null, null, null, null, null, null, null, 'http://localhost:8080/onap/so/infra/serviceInstantiation/v7/serviceInstances'),
('00164b9e-784d-48a8-8973-bbad6ef818ed', null, 'createInstance', 'COMPLETE', 'Service Instance was created successfully.', '100', '2017-09-28 12:45:51', '2017-09-28 12:45:53', 'VID', null, null, null, null, null, '19123c2924c648eb8e42a3c1f14b7682', null, null, null, '{"requestDetails":{"requestDetails":{"modelInfo":{"modelCustomizationName":null,"modelInvariantId":"52b49b5d-3086-4ffd-b5e6-1b1e5e7e062f","modelType":"service","modelNameVersionId":null,"modelName":"MSO Test Network","modelVersion":"1.0","modelCustomizationUuid":null,"modelVersionId":"aed5a5b7-20d3-44f7-90a3-ddbd16f14d1e","modelCustomizationId":null,"modelUuid":null,"modelInvariantUuid":null,"modelInstanceName":null},"requestInfo":{"billingAccountNumber":null,"callbackUrl":null,"correlator":null,"orderNumber":null,"productFamilyId":null,"orderVersion":null,"source":"VID","instanceName":"DEV-MTN6-3100-0927-1","suppressRollback":false,"requestorId":"xxxxxx"},"relatedInstanceList":null,"subscriberInfo":{"globalSubscriberId":"MSO_1610_dev","subscriberName":"MSO_1610_dev"},"cloudConfiguration":{"aicNodeClli":null,"tenantId":"19123c2924c648eb8e42a3c1f14b7682","lcpCloudRegionId":"mtn6"},"requestParameters":{"subscriptionServiceType":"MSO-dev-service-type","userParams":[{"name":"someUserParam","value":"someValue"}],"aLaCarte":true,"autoBuildVfModules":false,"cascadeDelete":false,"usePreload":true,"alaCarte":true},"project":null,"owningEntity":null,"platform":null,"lineOfBusiness":null}}}', null, 'CreateGenericALaCarteServiceInstance', '2017-09-28 12:45:52', null, null, null, null, null, null, null, 'mtn6', null, null, null, null, null, 'service', 'createInstance', 'b2f59173-b7e5-4e0f-8440-232fd601b865', 'DEV-MTN6-3100-0927-1', 'xxxxxx', null, null, null, null, 'http://localhost:8080/onap/so/infra/serviceInstantiation/v7/serviceInstances'),
('00173cc9-5ce2-4673-a810-f87fefb2829e', null, 'createInstance', 'FAILED', 'Error parsing request.  No valid instanceName is specified', '100', '2017-04-14 21:08:46', '2017-04-14 21:08:46', 'VID', null, null, null, null, null, 'a259ae7b7c3f493cb3d91f95a7c18149', null, null, null, '{"requestDetails":{"modelInfo":{"modelInvariantId":"ff6163d4-7214-459e-9f76-507b4eb00f51","modelType":"service","modelName":"ConstraintsSrvcVID","modelVersion":"2.0","modelVersionId":"722d256c-a374-4fba-a14f-a59b76bb7656"},"requestInfo":{"productFamilyId":"LRSI-OSPF","source":"VID","requestorId":"xxxxxx"},"subscriberInfo":{"globalSubscriberId":"a9a77d5a-123e-4ca2-9eb9-0b015d2ee0fb"},"cloudConfiguration":{"tenantId":"a259ae7b7c3f493cb3d91f95a7c18149","lcpCloudRegionId":"mtn16"},"requestParameters":{"subscriptionServiceType":"Mobility","userParams":[{"name":"neutronport6_name","value":"8"},{"name":"neutronnet5_network_name","value":"8"},{"name":"contrailv2vlansubinterface3_name","value":"false"}]}}}', null, 'APIH', '2016-12-22 19:00:28', null, null, null, null, null, null, null, 'mtn16', null, null, null, null, null, 'service', 'createInstance', null, null, null, null, null, null, null, 'http://localhost:8080/onap/so/infra/serviceInstantiation/v7/serviceInstances'),
('0017f68c-eb2d-45bb-b7c7-ec31b37dc349', null, 'activateInstance', 'UNLOCKED', null, '20', '2017-09-26 16:09:29', '2017-09-28 12:45:53', 'VID', null, null, null, null, null, null, null, null, null, '{"requestDetails":{"modelInfo":{"modelCustomizationName":null,"modelInvariantId":"1587cf0e-f12f-478d-8530-5c55ac578c39","modelType":"configuration","modelNameVersionId":null,"modelName":null,"modelVersion":null,"modelCustomizationUuid":null,"modelVersionId":"36a3a8ea-49a6-4ac8-b06c-89a545444455","modelCustomizationId":"68dc9a92-214c-11e7-93ae-92361f002671","modelUuid":null,"modelInvariantUuid":null,"modelInstanceName":null},"requestInfo":{"billingAccountNumber":null,"callbackUrl":null,"correlator":null,"orderNumber":null,"productFamilyId":null,"orderVersion":null,"source":"VID","instanceName":null,"suppressRollback":false,"requestorId":"xxxxxx"},"relatedInstanceList":[{"relatedInstance":{"instanceName":null,"instanceId":"9e15a443-af65-4f05-9000-47ae495e937d","modelInfo":{"modelCustomizationName":null,"modelInvariantId":"de19ae10-9a25-11e7-abc4-cec278b6b50a","modelType":"service","modelNameVersionId":null,"modelName":"MSOTADevInfra_Configuration_Service","modelVersion":"1.0","modelCustomizationUuid":null,"modelVersionId":"ee938612-9a25-11e7-abc4-cec278b6b50a","modelCustomizationId":null,"modelUuid":null,"modelInvariantUuid":null,"modelInstanceName":null},"instanceDirection":null}}],"subscriberInfo":null,"cloudConfiguration":{"aicNodeClli":null,"tenantId":null,"lcpCloudRegionId":"mtn6"},"requestParameters":{"subscriptionServiceType":null,"userParams":[],"aLaCarte":false,"autoBuildVfModules":false,"cascadeDelete":false,"usePreload":true,"alaCarte":false},"project":null,"owningEntity":null,"platform":null,"lineOfBusiness":null}}', null, 'APIH', '2017-09-26 16:09:29', null, null, null, null, null, null, null, 'mtn6', null, null, null, null, null, 'configuration', 'activateInstance', '9e15a443-af65-4f05-9000-47ae495e937d', null, 'xxxxxx', '26ef7f15-57bb-48df-8170-e59edc26234c', null, null, null, 'http://localhost:8080/onap/so/infra/serviceInstantiation/v7/serviceInstances');        
        
insert into watchdog_distributionid_status(distribution_id, distribution_id_status, lock_version, create_time, modify_time) values
('1533c4bd-a3e3-493f-a16d-28c20614415e', '', 0, '2017-11-30 15:48:09', '2017-11-30 15:48:09'),
('55429711-809b-4a3b-9ee5-5120d46d9de0', '', 0, '2017-11-30 16:35:36', '2017-11-30 16:35:36'),
('67f0b2d1-9013-4b2b-9914-bbe2288284fb', '', 0, '2017-11-30 15:54:39', '2017-11-30 15:54:39');   

insert into watchdog_per_component_distribution_status(distribution_id, component_name, component_distribution_status, create_time, modify_time) values
('1533c4bd-a3e3-493f-a16d-28c20614415e', 'MSO', 'COMPONENT_DONE_OK', '2017-11-30 15:48:09', '2017-11-30 15:48:09'),
('55429711-809b-4a3b-9ee5-5120d46d9de0', 'MSO', 'COMPONENT_DONE_ERROR', '2017-11-30 16:35:36', '2017-11-30 16:35:36'),
('67f0b2d1-9013-4b2b-9914-bbe2288284fb', 'MSO', 'COMPONENT_DONE_OK', '2017-11-30 15:54:39', '2017-11-30 15:54:39');        

insert into watchdog_service_mod_ver_id_lookup(distribution_id, service_model_version_id, create_time, modify_time) values
('1533c4bd-a3e3-493f-a16d-28c20614415e', '7e813ab5-88d3-4fcb-86c0-498c5d7eef9a', '2017-11-30 15:48:08', '2017-11-30 15:48:08'),
('55429711-809b-4a3b-9ee5-5120d46d9de0', 'cc031e75-4442-4d1a-b774-8a2b434e0a50', '2017-11-30 16:35:36', '2017-11-30 16:35:36'),
('67f0b2d1-9013-4b2b-9914-bbe2288284fb', 'eade1e9d-c1ec-4ef3-bc31-60570fba1573', '2017-11-30 15:54:39', '2017-11-30 15:54:39');    


insert into site_status(site_name, status, creation_timestamp) values
('testsite', 0, '2017-11-30 15:48:09');

INSERT INTO requestdb.request_processing_data (ID, SO_REQUEST_ID, GROUPING_ID, NAME, VALUE, TAG)
VALUES
(1, '00032ab7-na18-42e5-965d-8ea592502018', '7d2e8c07-4d10-456d-bddc-37abf38ca714', 'requestAction', 'assign', 'pincFabricConfigRequest'),
(2, '00032ab7-na18-42e5-965d-8ea592502018', '7d2e8c07-4d10-456d-bddc-37abf38ca715', 'configurationId', '52234bc0-d6a6-41d4-a901-79015e4877e2', 'pincFabricConfigRequest'),
(3, '5ffbabd6-b793-4377-a1ab-082670fbc7ac', '5ffbabd6-b793-4377-a1ab-082670fbc7ac', 'configId', '52234bc0-d6a6-41d4-a901-79015e4877e2', 'pincFabricConfig');

INSERT INTO activate_operational_env_service_model_distribution_status (OPERATIONAL_ENV_ID, SERVICE_MODEL_VERSION_ID, REQUEST_ID,SERVICE_MOD_VER_FINAL_DISTR_STATUS,RECOVERY_ACTION,RETRY_COUNT_LEFT,WORKLOAD_CONTEXT, CREATE_TIME, MODIFY_TIME, VNF_OPERATIONAL_ENV_ID)
VALUES
('1234', 'TEST1234', '00032ab7-3fb3-42e5-965d-8ea592502017', "Test", "Test", 1, 'DEFAULT', '2018-08-14 16:50:59',  '2018-08-14 16:50:59', 'vnf_1234');
INSERT INTO activate_operational_env_service_model_distribution_status (OPERATIONAL_ENV_ID, SERVICE_MODEL_VERSION_ID, REQUEST_ID,SERVICE_MOD_VER_FINAL_DISTR_STATUS,RECOVERY_ACTION,RETRY_COUNT_LEFT,WORKLOAD_CONTEXT, CREATE_TIME, MODIFY_TIME, VNF_OPERATIONAL_ENV_ID)
VALUES
('1234', 'TEST1235', '00032ab7-3fb3-42e5-965d-8ea592502017', "Test", "Test", 2, 'DEFAULT', '2018-08-14 16:50:59',  '2018-08-14 16:50:59', 'vnf_1234');
INSERT INTO activate_operational_env_service_model_distribution_status (OPERATIONAL_ENV_ID, SERVICE_MODEL_VERSION_ID, REQUEST_ID,SERVICE_MOD_VER_FINAL_DISTR_STATUS,RECOVERY_ACTION,RETRY_COUNT_LEFT,WORKLOAD_CONTEXT, CREATE_TIME, MODIFY_TIME, VNF_OPERATIONAL_ENV_ID)
VALUES
('1234', 'TEST1235', '00032ab7-3fb3-42e5-965d-8ea592502018', "Test", "Test", 2, 'DEFAULT', '2018-08-14 16:50:59',  '2018-08-14 16:50:59', 'vnf_1234');

INSERT INTO `activate_operational_env_per_distributionid_status` (`DISTRIBUTION_ID`, `DISTRIBUTION_ID_STATUS`, `DISTRIBUTION_ID_ERROR_REASON`, `CREATE_TIME`, `MODIFY_TIME`, `OPERATIONAL_ENV_ID`, `SERVICE_MODEL_VERSION_ID`, `REQUEST_ID`)
VALUES
('111', 'TEST', 'ERROR', '2018-09-12 19:29:24', '2018-09-12 19:29:25', '1234', 'TEST1234', '00032ab7-3fb3-42e5-965d-8ea592502017');