using { ztr_so_flow_demo as my } from '../db/schema.cds';

@path : '/service/ztr_so_flow_demoService1'
service ztr_so_flow_demoService1
{
    annotate ZELOQUA
    {
        Opp_Id
            @Common.Label : 'Opportunity ID';
    }

    @readonly
    entity ZELOQUA as
        projection on my.ZELOQUA
        {
            *,
            zCONGA.Quote_Id,
            zCONGA.Quote_Status,
            zCONGA.Order_Type,
            zCONGA.zSAP_ORDER.Order_Id,
            zCONGA.zSAP_ORDER.Order_Status,
            zCONGA.zSAP_ORDER.Order_DocDate,
            zCONGA.zSAP_ORDER.Material_No,
            zCONGA.zSAP_ORDER.Quantity,
            zCONGA.zSAP_ORDER.UOM,
            zCONGA.zSAP_ORDER.Price,
            zCONGA.zSAP_ORDER.Amount_Total,
            zCONGA.zSAP_ORDER.Currency,
            zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Id,
            zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status,
            zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Id,
            zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status,
            zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Id,
            zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status,
            zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.zSAP_INVOICE.Invoice_Id,
            zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.zSAP_INVOICE.Invoice_Status,
            zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.zSAP_INVOICE.zBILL_TRUST.BT_Id as BT_Id,
            zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.zSAP_INVOICE.zBILL_TRUST.BT_Status as BT_Status,

            case when ZELOQUA.Opp_Status = 'Released' then 'Oppurtunity in Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Released' then 'Quotation in Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Blocked' then 'Quotation Blocked' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Released' then 'Order in Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Blocked' then 'Order Blocked' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Released' then 'Contract in Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Blocked' then 'Contract Blocked' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Released'
                and zCONGA.Order_Type = 'Physical' then 'Subscription Shipment In Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Blocked'
                and zCONGA.Order_Type = 'Physical' then 'Subscription Shipment Blocked' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Released'
                and zCONGA.Order_Type = 'Subscription' then 'Usage  In Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Blocked'
                and zCONGA.Order_Type = 'Subscription' then ' Usage Blocked' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Completed'
                and zCONGA.Order_Type = 'Physical'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Released' then 'Delivery in Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Completed'
                and zCONGA.Order_Type = 'Physical'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Blocked' then 'Delivery Blocked' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Completed'
                and zCONGA.Order_Type = 'Subscription'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Entitlement_in_progress' then 'Entitlement in Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Completed'
                and zCONGA.Order_Type = 'Subscription'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Not_Entitled' then 'Not yet Entitled' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.zSAP_INVOICE.Invoice_Status = 'Blocked' then 'Invoice Blocked' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.zSAP_INVOICE.Invoice_Status = 'Released' then 'Invoice in Process' when ZELOQUA.Opp_Status = 'Completed'
                and zCONGA.Quote_Status = 'Completed'
                and zCONGA.zSAP_ORDER.Order_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.Shipment_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Completed'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.zSAP_INVOICE.Invoice_Status = 'Completed' then 'Invoice Completed' else 'Invalid Record' end as Overall_status : String,
            case when zCONGA.Order_Type = 'Subscription' then 'Usage' else 'SubShpmnt' end as Shipment_Desc : String,
            case when zCONGA.Order_Type = 'Subscription' then 'Entitlement' else 'Delivery' end as Delivery_Desc : String,
            case when zCONGA.Order_Type = 'Subscription'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Entitlement_in_progress' then 'in Process' when zCONGA.Order_Type = 'Subscription'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Not_Entitled' then 'not Started' when zCONGA.Order_Type = 'Subscription'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Completed' then 'Completed' when zCONGA.Order_Type = 'Physical'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Released' then 'in Process' when zCONGA.Order_Type = 'Physical'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Blocked' then 'Blocked' when zCONGA.Order_Type = 'Physical'
                and zCONGA.zSAP_ORDER.zSAP_Contract.zSAP_Shipment.zSAP_Delivery.Delivery_Status = 'Completed' then 'Completed' else '' end as Delivery_Status1 : String,
          Case when Opp_Status = 'Released' then 'in Process'  else Opp_Status end as Opp_Status1: String,
          Case when zCONGA.Quote_Status = 'Released' then 'in Process'  else zCONGA.Quote_Status end as Quote_Status1: String,
          Case when zCONGA.zSAP_ORDER.Order_Status = 'Released' then 'in Process'  else zCONGA.zSAP_ORDER.Order_Status end as Order_Status1: String,
          Case when zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status = 'Released' then 'in Process'  else zCONGA.zSAP_ORDER.zSAP_Contract.Contract_Status end as Contract_Status1: String
          


        }
        excluding
        {
            zCONGA
        }
        actions
        {
        };

    @odata.draft.enabled
    entity ZSAP_ORDER as
        projection on my.ZSAP_ORDER
        {
            *
        }
        excluding
        {
            Order_Itemno,
            zSAP_Delivery
        };
}

annotate ztr_so_flow_demoService1 with @requires :
[
    'authenticated-user'
];
