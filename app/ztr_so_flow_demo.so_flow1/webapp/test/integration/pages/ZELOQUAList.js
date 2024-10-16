sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'ztrsoflowdemo.soflow1',
            componentId: 'ZELOQUAList',
            contextPath: '/ZELOQUA'
        },
        CustomPageDefinitions
    );
});