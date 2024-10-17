namespace ztr_so_flow_demo;

entity ZELOQUA
{
    key Opp_Id : String(10);
    Opp_Status : Document_Status;
    Opp_Docdate : Date;
    Material : String(10);
    Customer_No : String(10);
    zCONGA : Association to one ZCONGA on zCONGA.Opp_Id = $self.Opp_Id;
}

entity ZCONGA
{
    key Quote_Id : TY_Document_No;
    key Asset_Id : TY_Asset_Id;
    Quote_Itemno : TY_Item_No;
    Quote_Status : Document_Status not null;
    Quote_DocDate : Date not null;
    Material_No : TY_Material_No not null
        @Core.Description : 'Quote Status';
    Customer_No : TY_Customer_No not null;
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Price;
    Amount_Total : TY_Amount(6,2);
    Order_Type : Order_Type;
    Opp_Id : TY_Document_No;
    zSAP_ORDER : Association to one ZSAP_ORDER on zSAP_ORDER.Quote_Id = $self.Quote_Id and zSAP_ORDER.Asset_Id = $self.Asset_Id;
    Quote_Opp : Composition of many ZELOQUA on Quote_Opp.Opp_Id = Opp_Id;
}

entity ZSAP_ORDER
{
    key Order_Id : TY_Document_No;
    key Order_Itemno : TY_Item_No;
    key Asset_Id : TY_Asset_Id;
    Quote_Id : TY_Document_No;
    Order_Status : Document_Status not null;
    Order_DocDate : Date not null;
    Order_Type : Order_Type;
    Material_No : TY_Material_No not null;
    Customer_No : TY_Customer_No not null
        @Core.Description : 'Quote Status';
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Amount(6,2);
    Amount_Total : TY_Amount(6,2);
    zSAP_Delivery : Association to one ZSAP_Delivery on zSAP_Delivery.Order_Id = $self.Order_Id;
    Quote_Order : Composition of many ZCONGA on Quote_Order.Quote_Id = $self.Quote_Id and Quote_Order.Asset_Id = $self.Asset_Id;
}

entity ZSAP_Delivery
{
    key Delivery_Id : TY_Document_No;
    Delivery_Itemno : TY_Item_No;
    Order_Id : TY_Document_No;
    Delivery_Status : Document_Status not null;
    Delivery_DocDate : Date not null;
    Order_Type : Order_Type;
    key Asset_Id : TY_Asset_Id;
    Material_No : TY_Material_No not null
        @Core.Description : 'Quote Status';
    Customer_No : TY_Customer_No not null;
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Amount(6,2);
    Amount_Total : TY_Amount(6,2);
    Order_Del : Composition of many ZSAP_ORDER on Order_Del.Order_Id = $self.Order_Id and Order_Del.Asset_Id = $self.Asset_Id;
    zSAP_INVOICE : Association to one ZSAP_INVOICE on zSAP_INVOICE.Delivery_Id = $self.Delivery_Id and zSAP_INVOICE.Asset_Id = $self.Asset_Id;
}

entity ZSAP_INVOICE
{
    key Invoice_Id : TY_Document_No;
    key Invoice_Itemno : TY_Item_No;
    Delivery_Id : TY_Document_No;
    Invoice_Status : Document_Status not null;
    Invoice_DocDate : Date not null;
    Order_Type : Order_Type;
    key Asset_Id : TY_Asset_Id;
    Material_No : TY_Material_No not null
        @Core.Description : 'Quote Status';
    Customer_No : TY_Customer_No not null;
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Amount(6,2);
    Amount_Total : TY_Amount(6,2);
    Inv_Del : Composition of many ZSAP_Delivery on Inv_Del.Delivery_Id = $self.Delivery_Id and Inv_Del.Asset_Id = $self.Asset_Id;
    zBILL_TRUST : Association to one ZBILL_TRUST;
    zHIGH_RADIUS : Association to one ZHIGH_RADIUS;
}

entity ZBILL_TRUST
{
    key Asset_Id : String(10);
    BT_Status : Document_Status;
    BT_Date : Date;
    BT_Inv : Composition of many ZSAP_INVOICE on BT_Inv.Asset_Id = $self.Asset_Id;
}

entity ZHIGH_RADIUS
{
    key Asset_Id : String(10);
    HR_Status : Document_Status not null;
    HR_Date : Date not null;
    HR_Inv : Composition of many ZSAP_INVOICE on HR_Inv.Asset_Id = $self.Asset_Id;
}

entity ZTR_SO_FLOW_JOIN as
    select from ZELOQUA as Opp
    left outer join ZCONGA as Qte on Opp.Opp_Id = Qte.Opp_Id
    left outer join ZSAP_ORDER as Ord on Qte.Quote_Id = Ord.Quote_Id
        and Qte.Asset_Id = Ord.Asset_Id
    left outer join ZSAP_Delivery as Del on Ord.Order_Id = Del.Order_Id
        and Ord.Asset_Id = Del.Asset_Id
    left outer join ZSAP_INVOICE as Inv on Del.Delivery_Id = Inv.Delivery_Id
        and Del.Asset_Id = Inv.Asset_Id
    {
        Key Opp.Opp_Id,
        Opp.Opp_Status,
        Opp_Docdate,
        Opp.Customer_No,
        Opp.Material,
        Qte.Quote_Id,
        Qte.Quote_DocDate,
        Qte.Quote_Status,
        Qte.Asset_Id,
        Qte.Quantity,
        Qte.Price,
        Qte.Amount_Total,
        Ord.Order_Id,
        Ord.Order_DocDate,
        Ord.Order_Status,
        Del.Delivery_Id,
        Del.Delivery_DocDate,
        Del.Delivery_Status,
        Inv.Invoice_Id,
        Inv.Invoice_DocDate,
        Inv.Invoice_Status,
    };

entity Entity1
{
    key ID : UUID;
}

type Doc_Category : String enum
{
    Order;
    Contract;
}

type Document_Status : String enum
{
    Released;
    Completed;
    Incomplete;
    Blocked;
}

type Order_Type : String enum
{
    Physical;
    Subscription;
}

type TY_Amount : Decimal;

type TY_Asset_Id : String(10);

type TY_Customer_No : String(10);

type TY_Document_No : String(10);

type TY_Item_No : Integer;

type TY_Material_No : String(20);

type TY_Price : String(100);

type TY_QUANTITY : Integer;
