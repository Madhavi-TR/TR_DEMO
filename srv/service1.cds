using { ztr_so_flow_demo as my } from '../db/schema.cds';

@path : '/service/ztr_so_flow_demoService1'
service ztr_so_flow_demoService1
{
    annotate ZELOQUA
    {
        Material_No
            @Core.Description : 'Quote Status';
    }

    @odata.draft.enabled
    entity ZELOQUA as
        projection on my.ZELOQUA
        {
            *,
            zSAP_ORDER.Order_Status,
            zSAP_ORDER.zSAP_Delivery.Delivery_Id as Delivery_Id1,
            zSAP_ORDER.zSAP_Delivery.Delivery_Status as Delivery_Status1,
            zSAP_ORDER.zSAP_Delivery.zSAP_INVOICE.Invoice_Id,
            zSAP_ORDER.zSAP_Delivery.zSAP_INVOICE.Invoice_Status,
            zCONGA.Quote_Id,
            zCONGA.Quote_Status,
            zCONGA.Asset_Id,
            zCONGA.Material_No,
            zCONGA.Quantity,
            zCONGA.UOM,
            zCONGA.Price,
            zCONGA.Amount_Total,
            zCONGA.Order_Type,
            zCONGA.Quote_Opp.zSAP_ORDER.Order_Id,
            zCONGA.Quote_Opp.zSAP_ORDER.Order_Itemno,
            zCONGA.Quote_Opp.zSAP_ORDER.zSAP_Delivery.Delivery_Id,
            zCONGA.Quote_Opp.zSAP_ORDER.zSAP_Delivery.Delivery_Itemno,
            zCONGA.Quote_Opp.zSAP_ORDER.zSAP_Delivery.Delivery_Status,
            zCONGA.Quote_Opp.zSAP_ORDER.zSAP_Delivery.Delivery_DocDate
        }
        excluding
        {
            zSAP_ORDER,
            zCONGA
        };
}

annotate ztr_so_flow_demoService1 with @requires :
[
    'authenticated-user'
];
