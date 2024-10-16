using ztr_so_flow_demoService as service from '../../srv/service';
annotate service.ZTR_SO_FLOW_JOIN with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Opp_Id',
                Value : Opp_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Opp_Status',
                Value : Opp_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Opp_Docdate',
                Value : Opp_Docdate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer_No',
                Value : Customer_No,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Material',
                Value : Material,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quote_Id',
                Value : Quote_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quote_DocDate',
                Value : Quote_DocDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quote_Status',
                Value : Quote_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Asset_Id',
                Value : Asset_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quantity',
                Value : Quantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Price',
                Value : Price,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Amount_Total',
                Value : Amount_Total,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Id',
                Value : Order_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_DocDate',
                Value : Order_DocDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Status',
                Value : Order_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_Id',
                Value : Delivery_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_DocDate',
                Value : Delivery_DocDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_Status',
                Value : Delivery_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Invoice_Id',
                Value : Invoice_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Invoice_DocDate',
                Value : Invoice_DocDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Invoice_Status',
                Value : Invoice_Status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Opp_Id',
            Value : Opp_Id,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Opp_Status',
            Value : Opp_Status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Opp_Docdate',
            Value : Opp_Docdate,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer_No',
            Value : Customer_No,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Material',
            Value : Material,
        },
        {
            $Type : 'UI.DataField',
            Value : Amount_Total,
            Label : 'Amount_Total',
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_DocDate,
            Label : 'Delivery_DocDate',
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_Id,
        },
        {
            $Type : 'UI.DataField',
            Value : Delivery_Status,
            Label : 'Delivery_Status',
        },
        {
            $Type : 'UI.DataField',
            Value : Invoice_DocDate,
            Label : 'Invoice_DocDate',
        },
    ],
    UI.SelectionFields : [
        Customer_No,
        Delivery_Id,
    ],
);

annotate service.ZTR_SO_FLOW_JOIN with {
    Customer_No @Common.Label : 'Customer_No'
};

annotate service.ZTR_SO_FLOW_JOIN with {
    Delivery_Id @Common.Label : 'Delivery_Id'
};

