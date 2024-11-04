using ztr_so_flow_demoService1 as service from '../../srv/service1';
annotate service.ZELOQUA with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>AssetId1}',
                Value : Asset_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OrderType}',
                Value : Order_Type,
            },
            {
                $Type : 'UI.DataField',
                Value : Overall_status,
                Label : '{i18n>OverallStatus1}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>CustomerNo}',
                Value : Customer_No,
            },
            {
                $Type : 'UI.DataField',
                Value : Customer_Name,
                Label : '{i18n>CustomerName}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>MaterialNo}',
                Value : Material_No,
            },
            {
                $Type : 'UI.DataField',
                Value : Material_Desc,
                Label : '{i18n>MaterialDescription}',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quantity',
                Value : Quantity,
            },
            {
                $Type : 'UI.DataField',
                Value : UOM,
                Label : 'UOM',
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : Price,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>TotalAmount}',
                Value : Amount_Total,
            },
            {
                $Type : 'UI.DataField',
                Value : Currency,
                Label : 'Currency',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OpportunityId1}',
                Value : Opp_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OpportunityDocumentDate1}',
                Value : Opp_Docdate,
            },
            {
                $Type : 'UI.DataField',
                Value : Opp_Status1,
                Label : '{i18n>OpportunityStatus}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>QuoteId1}',
                Value : Quote_Id,
            },
            {
                $Type : 'UI.DataField',
                Value : Quote_Status1,
                Label : '{i18n>QuoteStatus}',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OrderId1}',
                Value : Order_Id,
            },
            {
                $Type : 'UI.DataField',
                Value : Order_Status1,
                Label : '{i18n>OrderStatus}',
            },
            {
                $Type : 'UI.DataField',
                Value : Contract_Id,
                Label : '{i18n>ContractId1}',
            },
            {
                $Type : 'UI.DataField',
                Value : Contract_Status1,
                Label : '{i18n>ContractStatus}',
            },
            {
                $Type : 'UI.DataField',
                Value : Shipment_Id,
                Label : '{Shipment_Desc} ID',
            },
            {
                $Type : 'UI.DataField',
                Value : Shipment_Status1,
                Label : '{Shipment_Desc} Status',
            },
            {
                $Type : 'UI.DataField',
                Label : '{Delivery_Desc} ID',
                Value : Delivery_Id,
            },
            {
                $Type : 'UI.DataField',
                Value : Delivery_Status1,
                Label : '{Delivery_Desc} Status',
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>InvoiceId1}',
                Value : Invoice_Id,
            },
            {
                $Type : 'UI.DataField',
                Value : Invoice_Status1,
                Label : '{i18n>InvoiceStatus}',
            },
            {
                $Type : 'UI.DataField',
                Value : BT_Id,
                Label : '{i18n>HrcPaymentId}',
            },
            {
                $Type : 'UI.DataField',
                Value : BT_Status1,
                Label : '{i18n>HrcPaymentStatus}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Asset_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Order_Type,
            Label : '{i18n>OrderType}',
        },
        {
            $Type : 'UI.DataField',
            Value : Customer_Name,
            Label : '{i18n>CustomerName}',
        },
        {
            $Type : 'UI.DataField',
            Value : Material_Desc,
            Label : '{i18n>MaterialDescription}',
        },
        {
            $Type : 'UI.DataField',
            Value : Overall_status,
            Label : '{i18n>OverallStatus1}',
        },
        {
            $Type : 'UI.DataField',
            Value : Quantity,
            Label : '{i18n>Quantity}',
        },
        {
            $Type : 'UI.DataField',
            Value : UOM,
            Label : '{i18n>Uom}',
        },
        {
            $Type : 'UI.DataField',
            Value : Price,
            Label : '{i18n>Price}',
        },
        {
            $Type : 'UI.DataField',
            Value : Amount_Total,
            Label : '{i18n>TotalAmount}',
        },
        {
            $Type : 'UI.DataField',
            Value : Currency,
            Label : 'Currency',
        },
        {
            $Type : 'UI.DataField',
            Value : Material_No,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>CustomerNo}',
            Value : Customer_No,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>OpportunityId1}',
            Value : Opp_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Opp_Status1,
            Label : '{i18n>OpportunityStatus}',
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>OpportunityDocumentDate}',
            Value : Opp_Docdate,
        },
        {
            $Type : 'UI.DataField',
            Value : Quote_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Quote_Status1,
            Label : '{i18n>QuoteStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : Order_Id,
        },

        {
            $Type : 'UI.DataField',
            Value : Order_Status1,
            Label : '{i18n>OrderStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : Contract_Id,
            Label : '{i18n>ContractId1}',
        },
        {
            $Type : 'UI.DataField',
            Value : Contract_Status1,
            Label : '{i18n>ContractStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : Shipment_Id,
            Label : '{i18n>ShipmentId}',
        },
        {
            $Type : 'UI.DataField',
            Value : Shipment_Status1,
            Label : '{i18n>ShipmentStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_Status1,
            Label : '{i18n>DeliveryStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : Invoice_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Invoice_Status1,
            Label : '{i18n>InvoiceStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : BT_Id,
            Label : '{i18n>HrcPaymentId}',
        },
        {
            $Type : 'UI.DataField',
            Value : BT_Status1,
            Label : '{i18n>HrcPaymentStatus}',
        },
    ],
    UI.SelectionFields : [
        Asset_Id,
        Customer_No,
        Material_No,
        Opp_Id,
        Quote_Id,
        Order_Id,
        Delivery_Id,
        Invoice_Id,
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>SalesFlow}',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : 'Asset {Asset_Id}',
        },
    },
);

annotate service.ZELOQUA with {
    Asset_Id @(
        Common.Label : 'Asset ID',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZELOQUA',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Asset_Id,
                    ValueListProperty : 'Asset_Id',
                },
            ],
            Label : 'Asset ID',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ZELOQUA with {
    Customer_No @(
        Common.Label : '{i18n>CustomerNo}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Customer_Data',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Customer_No,
                    ValueListProperty : 'Customer_No',
                },
            ],
            Label : 'Customer No',
        },
        Common.ValueListWithFixedValues : true,
        )
};

annotate service.ZELOQUA with {
    Invoice_Id @(
        Common.Label : '{i18n>InvoiceId1}',
        )
};

annotate service.ZELOQUA with {
    Delivery_Id @(
        Common.Label : '{i18n>DeliveryId1}',
        )
};

annotate service.ZELOQUA with {
    Material_No @(
        Common.Label : '{i18n>MaterialNo}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Material_Data',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Material_No,
                    ValueListProperty : 'Material_No',
                },
            ],
            Label : 'Material No',
        },
        Common.ValueListWithFixedValues : true,
        )
};

annotate service.ZELOQUA with {
    Order_Id @(
        Common.Label : '{i18n>OrderId1}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Order_Data',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Order_Id,
                    ValueListProperty : 'Order_Id',
                },
            ],
            Label : 'Order ID',
        },
        Common.ValueListWithFixedValues : true,
        )
};

annotate service.ZELOQUA with {
    Quote_Id @(
        Common.Label : '{i18n>QuoteId1}',
        )
};

annotate service.Customer_Data with {
    Customer_No @Common.Text : Customer_Name
};

annotate service.Material_Data with {
    Material_No @Common.Text : Material_Desc
};

annotate service.ZELOQUA with {
    BT_Id @Common.Label : 'BT_Id'
};

annotate service.ZELOQUA with {
    Overall_status @(
        Common.Label : 'Overall_status',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZELOQUA',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Overall_status,
                    ValueListProperty : 'Overall_status',
                },
            ],
            Label : 'Overall Status',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ZELOQUA with {
    Opp_Id @Common.Label : '{i18n>OpportunityId1}'
};

