sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ztrsoflowdemo/soflow1/test/integration/FirstJourney',
		'ztrsoflowdemo/soflow1/test/integration/pages/ZELOQUAList',
		'ztrsoflowdemo/soflow1/test/integration/pages/ZELOQUAObjectPage'
    ],
    function(JourneyRunner, opaJourney, ZELOQUAList, ZELOQUAObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ztrsoflowdemo/soflow1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheZELOQUAList: ZELOQUAList,
					onTheZELOQUAObjectPage: ZELOQUAObjectPage
                }
            },
            opaJourney.run
        );
    }
);