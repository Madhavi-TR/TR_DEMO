
sap.ui.define([
    "sap/m/MessageToast",
    "sap/m/Dialog",
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/Fragment",
    "sap/m/Button",
    "sap/m/Text",
    "sap/ui/model/json/JSONModel",
    "sap/ui/model/odata/v4/ODataModel",
    "sap/m/library",
    "sap/m/StandardListItem",
    "sap/m/List"
], function(MessageToast, Dialog,Controller,Fragment, Button, Text,JSONModel, ODataModel,mobileLibrary,StandardListItem,List) {
    'use strict';

    return Controller.extend("app.ztr_so_flow_demo.so_flow1.webapp.ext.fragment.Process_Flow.js") ,{

      onInit: function() {
        var oView = this.getView();
      },
        SendState: function(State) {
            if (State === "Released") {
              return[ 
                // { 
                // state: "Positive",
                // value: 50},
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
                        state: "Neutral",
                        value: 50
                      }
                  ]
                 } 
                 else if (State === "Blocked") {
                    return[ {                
                      state: "Negative",
                      value: 100}]
         
                     } 
        },

        onlane1: function(oEvent) {
          var sOrderNumber = oEvent.getSource().getBindingContext().getProperty("Order_Id");
          var sAssetNumber = oEvent.getSource().getBindingContext().getProperty("Asset_Id");
        
        var oView = this;

        if (!this.byId("orderDialog")) {
                this.loadFragment({
                    id: "orderDialog",
                    name: "ztrsoflowdemo.soflow1.ext.fragment.OrderForm",
                }).then(function (oDialog) {
                    oView.addDependent(oDialog);
                    oDialog.bindElement({
                        path: "/ZSAP_ORDER(Order_Id='" + sOrderNumber + "',Asset_Id='" + sAssetNumber + "',IsActiveEntity=true)"
                    });
                    oDialog.open();
                    oView.oDialog = oDialog;
                });

            } else {
                this.byId("orderDialog").bindElement({
                    path: "/ZSAP_ORDER(Order_Id='" + sOrderNumber + "',Asset_Id='" + sAssetNumber + "',IsActiveEntity=true)"
                });
                this.byId("orderDialog").open();
            }

        },
        closebutton:function (oEvent) {
              this.oDialog.destroy();
          }

           
        }
}
);