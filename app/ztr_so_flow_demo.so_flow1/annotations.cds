using ztr_so_flow_demoService1 as service from '../../srv/service1';
annotate service.ZELOQUA with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OpportunityId1}',
                Value : Opp_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OpportunityStatus}',
                Value : Opp_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OpportunityDocumentDate1}',
                Value : Opp_Docdate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Material}',
                Value : Material,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>CustomerNo}',
                Value : Customer_No,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OrderStatus}',
                Value : Order_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>InvoiceId}',
                Value : Invoice_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>InvoiceStatus1}',
                Value : Invoice_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>QuoteId}',
                Value : Quote_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>QuoteStatus}',
                Value : Quote_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>AssetId}',
                Value : Asset_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>MaterialNo}',
                Value : Material_No,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quantity',
                Value : Quantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UOM',
                Value : UOM,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : Price,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>AmountTotal}',
                Value : Amount_Total,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OrderType}',
                Value : Order_Type,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>OrderId}',
                Value : Order_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DeliveryId}',
                Value : Delivery_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>DeliveryStatus}',
                Value : Delivery_Status,
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
            Label : '{i18n>OpportunityStatus}',
            Value : Opp_Status,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>OpportunityId}',
            Value : Opp_Id,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>OpportunityDocumentDate}',
            Value : Opp_Docdate,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Material}',
            Value : Material,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>CustomerNo}',
            Value : Customer_No,
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_Status,
            Label : '{i18n>DeliveryStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : Amount_Total,
            Label : '{i18n>AmountTotal}',
        },
        {
            $Type : 'UI.DataField',
            Value : Invoice_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Invoice_Status,
            Label : '{i18n>InvoiceStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : Material_No,
        },
        {
            $Type : 'UI.DataField',
            Value : Order_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Order_Status,
            Label : '{i18n>OrderStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : Order_Type,
            Label : '{i18n>OrderType}',
        },
        {
            $Type : 'UI.DataField',
            Value : Price,
            Label : '{i18n>Price}',
        },
        {
            $Type : 'UI.DataField',
            Value : Quantity,
            Label : '{i18n>Quantity}',
        },
        {
            $Type : 'UI.DataField',
            Value : Quote_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Quote_Status,
            Label : '{i18n>QuoteStatus}',
        },
        {
            $Type : 'UI.DataField',
            Value : UOM,
            Label : '{i18n>Uom}',
        },
    ],
    UI.SelectionFields : [
        Asset_Id,
        Customer_No,
        Invoice_Id,
        Delivery_Id,
        Opp_Id,
        Material_No,
        Order_Id,
        Quote_Id,
    ],
    UI.HeaderInfo : {
        TypeName : '{i18n>StatusDetails}',
        TypeNamePlural : '',
        Title : {
            $Type : 'UI.DataField',
            Value : Asset_Id,
        },
    },
);

annotate service.ZELOQUA with {
    Asset_Id @(
        Common.Label : '{i18n>AssetId}',
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
            CollectionPath : 'ZELOQUA',
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
        Common.Label : '{i18n>InvoiceId}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZELOQUA',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Invoice_Id,
                    ValueListProperty : 'Invoice_Id',
                },
            ],
            Label : 'Invoice ID',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ZELOQUA with {
    Delivery_Id @(
        Common.Label : '{i18n>DeliveryId}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZELOQUA',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Delivery_Id,
                    ValueListProperty : 'Delivery_Id',
                },
            ],
            Label : 'Delivery ID',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ZELOQUA with {
    Opp_Id @(
        Common.Label : '{i18n>OpportunityId}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZELOQUA',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Opp_Id,
                    ValueListProperty : 'Opp_Id',
                },
            ],
            Label : 'Opportunity ID',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ZELOQUA with {
    Material_No @(
        Common.Label : '{i18n>MaterialNo}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZELOQUA',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Material_No,
                    ValueListProperty : 'Material',
                },
            ],
            Label : 'Material No',
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ZELOQUA with {
    Order_Id @(
        Common.Label : '{i18n>OrderId}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZELOQUA',
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
        Common.Label : '{i18n>QuoteId}',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ZELOQUA',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Quote_Id,
                    ValueListProperty : 'Quote_Id',
                },
            ],
            Label : 'Quote ID',
        },
        Common.ValueListWithFixedValues : true,
    )
};

