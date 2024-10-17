sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        onPress: function(oEvent) {
            MessageToast.show("Custom handler invoked.");
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
            MessageToast.show("Lane 1 pressed.");
        }
    };
});