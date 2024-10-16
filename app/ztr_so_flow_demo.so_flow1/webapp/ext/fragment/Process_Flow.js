sap.ui.define([
    "sap/m/MessageToast",
    "sap/m/Dialog",
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/Fragment",
    "sap/m/Button",
    "sap/m/Text",
    "sap/ui/model/json/JSONModel",
    "sap/ui/model/odata/v4/ODataModel"
], function(MessageToast, Dialog,Controller,Fragment, Button, Text,JSONModel, ODataModel) {
    'use strict';

    return Controller.extend("app.ztr_so_flow_demo.so_flow1.webapp.ext.fragment.Process_Flow.js") ,{

      onInit: function() {
        var oView = this.getView();
      },
        SendState: function(State) {
            if (State === "Released") {
              return[ { 
                state: "Positive",
                value: 50},
              {
                state: "Neutral",
                value: 50
              } ]             
            } else if (State === "Completed") {
           return[ {                
             state: "Positive",
             value: 100}]

            } 
            else if (State === "Incomplete") {
                return[                 
                    { 
                        state: "Positive",
                        value: 50},
                      {
                        state: "Negative",
                        value: 50
                      }
                  ]
                 } 
                 else if (State === "Blocked") {
                    return[ {                
                      state: "Critical",
                      value: 100}]
         
                     } 
        },

        onlane1: function(oEvent) {
          var sOrderNumber = oEvent.getSource().getBindingContext().getProperty("Order_Id");
          var sAssetNumber = oEvent.getSource().getBindingContext().getProperty("Asset_Id");
          var oModel = new ODataModel({
              serviceUrl: "/service/ztr_so_flow_demoService1/"
          });

          var oDialog = new Dialog({
              title: "ORDER Details",
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
          
               if (!this.byId("orderDialog")) {
                Fragment.load({
                    id: oView.getId(),
                    name: "ztrsoflowdemo.soflow1.ext.fragment.OrderForm",
                    controller: this
                }).then(function (oDialog) {
                    oView.addDependent(oDialog);
                    oDialog.bindElement({
                        path: oEvent.getSource().getBindingContext().getPath()
                    });
                    oDialog.open();
                });

            } else {
                this.byId("orderDialog").bindElement({
                    path: oEvent.getSource().getBindingContext().getPath()
                });
                this.byId("orderDialog").open();
            }
        },
        onCloseDialog: function () {
              this.byId("orderDialog").close();
          }
            
        }
}
);