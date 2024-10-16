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
            zCONGA.Quote_Id,
            zCONGA.Asset_Id,
            zCONGA.Quote_Status,
            zCONGA.Material_No,
            zCONGA.Quantity,
            zCONGA.UOM,
            zCONGA.Price,
            zCONGA.Amount_Total,
            zCONGA.Order_Type,
            zCONGA.zSAP_ORDER.Order_Id,
            zCONGA.zSAP_ORDER.Order_Status,
            zCONGA.zSAP_ORDER.zSAP_Delivery.Delivery_Id,
            zCONGA.zSAP_ORDER.zSAP_Delivery.Delivery_Status,
            zCONGA.zSAP_ORDER.zSAP_Delivery.zSAP_INVOICE.Invoice_Id,
            zCONGA.zSAP_ORDER.zSAP_Delivery.zSAP_INVOICE.Invoice_Status
        }
        excluding
        {
            zCONGA
        };
}

annotate ztr_so_flow_demoService1 with @requires :
[
    'authenticated-user'
];
