sap.ui.define([
    "sap/m/MessageToast",
    "sap/m/Dialog",
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/Fragment",
    "sap/m/Button",
    "sap/m/Text",
    "sap/ui/model/odata/v4/ODataModel"
], function(MessageToast, Dialog, Button, Text, ODataModel,Controller, Fragment) {
    'use strict'
    
    return Controller.extend("ztrsoflowdemo.soflow1.ext.fragment.Process_Flow", {
    onlane1: function(oEvent) {
            var sOrderNumber = oEvent.getSource().getBindingContext().getProperty("Order_Id");
            var sAssetNumber = oEvent.getSource().getBindingContext().getProperty("Asset_Id");
            var oModel = new ODataModel({
                serviceUrl: "/service/ztr_so_flow_demoService1/"
            });

            var oDialog = new Dialog({
                title: "ZSAP_ORDER Details",
                content: new Text({ text: "Loading..." }),
                beginButton: new Button({
                    text: "Close",
                    press: function () {
                        oDialog.close();
                    }
                }),
                afterClose: function() {
                    oDialog.destroy();
                }
            });

            oModel.bindContext("/ZSAP_ORDER(Order_Id='" + sOrderNumber + "',Asset_Id='" + sAssetNumber + "',IsActiveEntity=true)").requestObject().then(function(oData) {
                var sDetails = JSON.stringify(oData, null, 2);
                oDialog.getContent()[0].setText(sDetails);
            }).catch(function() {
                oDialog.getContent()[0].setText("Failed to load data.");
            });

            oDialog.open();

            // var oView = this.getView();

            // if (!this.byId("orderDialog")) {
            //     Fragment.load({
            //         id: oView.getId(),
            //         name: "ztrsoflowdemo.soflow1.ext.fragment.OrderForm",
            //         controller: this
            //     }).then(function (oDialog) {
            //         oView.addDependent(oDialog);
            //         oDialog.bindElement({
            //             path: oEvent.getSource().getBindingContext().getPath()
            //         });
            //         oDialog.open();
            //     });

            // } else {
            //     this.byId("orderDialog").bindElement({
            //         path: oEvent.getSource().getBindingContext().getPath()
            //     });
            //     this.byId("orderDialog").open();
            // }
        },
        // onCloseDialog: function () {
        //     this.byId("orderDialog").close();
        // }
    })

    ; })