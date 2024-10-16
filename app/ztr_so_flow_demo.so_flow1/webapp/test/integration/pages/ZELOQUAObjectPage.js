sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ztrsoflowdemo.soflow1',
            componentId: 'ZELOQUAObjectPage',
            contextPath: '/ZELOQUA'
        },
        CustomPageDefinitions
    );
});