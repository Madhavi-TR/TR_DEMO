sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ztrsoflowdemo.soflow',
            componentId: 'ZTR_SO_FLOW_JOINList',
            contextPath: '/ZTR_SO_FLOW_JOIN'
        },
        CustomPageDefinitions
    );
});