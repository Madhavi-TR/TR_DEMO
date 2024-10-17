sap.ui.define([
    "sap/m/MessageToast",
    "sap/m/Dialog",
    "sap/ui/core/mvc/Controller",
    "sap/ui/core/Fragment",
    "sap/m/Button",
    "sap/m/Text",
    "sap/ui/model/odata/v4/ODataModel"
], function(MessageToast, Dialog, Button, Text, ODataModel,Controller, Fragment) {
    'use strict';

    return {
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

            
        }
}
);