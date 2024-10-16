using ztr_so_flow_demoService1 as service from '../../srv/service1';
annotate service.ZELOQUA with @(
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
                Label : 'Material',
                Value : Material,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer_No',
                Value : Customer_No,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Status',
                Value : Order_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_Id1',
                Value : Delivery_Id1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_Status1',
                Value : Delivery_Status1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Invoice_Id',
                Value : Invoice_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Invoice_Status',
                Value : Invoice_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quote_Id',
                Value : Quote_Id,
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
                Label : 'Material_No',
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
                Label : 'Amount_Total',
                Value : Amount_Total,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Type',
                Value : Order_Type,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Id',
                Value : Order_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Order_Itemno',
                Value : Order_Itemno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_Id',
                Value : Delivery_Id,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_Itemno',
                Value : Delivery_Itemno,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_Status',
                Value : Delivery_Status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Delivery_DocDate',
                Value : Delivery_DocDate,
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
            Label : 'Material',
            Value : Material,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Customer_No',
            Value : Customer_No,
        },
    ],
);

