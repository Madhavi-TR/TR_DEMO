sap.ui.define([
    "sap/ui/test/opaQunit"
], function (opaTest) {
    "use strict";

    var Journey = {
        run: function() {
            QUnit.module("First journey");

            opaTest("Start application", function (Given, When, Then) {
                Given.iStartMyApp();

                Then.onTheZTR_SO_FLOW_JOINList.iSeeThisPage();

            });


            opaTest("Navigate to ObjectPage", function (Given, When, Then) {
                // Note: this test will fail if the ListReport page doesn't show any data
                
                When.onTheZTR_SO_FLOW_JOINList.onFilterBar().iExecuteSearch();
                
                Then.onTheZTR_SO_FLOW_JOINList.onTable().iCheckRows();

                When.onTheZTR_SO_FLOW_JOINList.onTable().iPressRow(0);
                Then.onTheZTR_SO_FLOW_JOINObjectPage.iSeeThisPage();

            });

            opaTest("Teardown", function (Given, When, Then) { 
                // Cleanup
                Given.iTearDownMyApp();
            });
        }
    }

    return Journey;
});