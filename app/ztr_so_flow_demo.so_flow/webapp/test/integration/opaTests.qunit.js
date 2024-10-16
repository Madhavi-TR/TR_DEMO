sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ztrsoflowdemo/soflow/test/integration/FirstJourney',
		'ztrsoflowdemo/soflow/test/integration/pages/ZTR_SO_FLOW_JOINList',
		'ztrsoflowdemo/soflow/test/integration/pages/ZTR_SO_FLOW_JOINObjectPage'
    ],
    function(JourneyRunner, opaJourney, ZTR_SO_FLOW_JOINList, ZTR_SO_FLOW_JOINObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ztrsoflowdemo/soflow') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheZTR_SO_FLOW_JOINList: ZTR_SO_FLOW_JOINList,
					onTheZTR_SO_FLOW_JOINObjectPage: ZTR_SO_FLOW_JOINObjectPage
                }
            },
            opaJourney.run
        );
    }
);