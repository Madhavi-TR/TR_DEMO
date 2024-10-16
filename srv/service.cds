using { ztr_so_flow_demo as my } from '../db/schema.cds';

@path : '/service/ztr_so_flow_demoService'
service ztr_so_flow_demoService
{
    @odata.draft.enabled
    entity ZTR_SO_FLOW_JOIN as
        projection on my.ZTR_SO_FLOW_JOIN;
}

annotate ztr_so_flow_demoService with @requires :
[
    'authenticated-user'
];
