sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ztrsoflowdemo.soflow',
            componentId: 'ZTR_SO_FLOW_JOINObjectPage',
            contextPath: '/ZTR_SO_FLOW_JOIN'
        },
        CustomPageDefinitions
    );
});