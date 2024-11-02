namespace ztr_so_flow_demo;

entity ZELOQUA
{
    key Opp_Id : String(10);
    key Asset_Id : TY_Asset_Id;
    Opp_Status : Document_Status;
    Opp_Docdate : Date;
    Material : String(10);
    Customer_No : String(10);
    zCONGA : Association to one ZCONGA on zCONGA.Opp_Id = $self.Opp_Id and zCONGA.Asset_Id = $self.Asset_Id;
}

entity ZCONGA
{
    key Quote_Id : TY_Document_No;
    key Asset_Id : TY_Asset_Id;
    key Quote_Itemno : TY_Item_No;
    Quote_Status : Document_Status;
    Quote_DocDate : Date;
    Material_No : TY_Material_No
        @Core.Description : 'Quote Status';
    Customer_No : TY_Customer_No;
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Price;
    Amount_Total : TY_Amount(6,2);
    Order_Type : Order_Type;
    Opp_Id : TY_Document_No;
    zSAP_ORDER : Association to one ZSAP_ORDER on zSAP_ORDER.Quote_Id = $self.Quote_Id and zSAP_ORDER.Asset_Id = $self.Asset_Id;
    Quote_Opp : Association to one ZELOQUA on Quote_Opp.Opp_Id = $self.Opp_Id and Quote_Opp.Asset_Id = $self.Asset_Id;
}

entity ZSAP_ORDER
{
    key Order_Id : TY_Document_No;
    key Order_Itemno : TY_Item_No;
    key Asset_Id : TY_Asset_Id;
    Quote_Id : TY_Document_No;
    Order_Status : Document_Status;
    Order_DocDate : Date;
    Order_Type : Order_Type;
    Material_No : TY_Material_No;
    Customer_No : TY_Customer_No
        @Core.Description : 'Quote Status';
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Amount(6,2);
    Amount_Total : TY_Amount(6,2);
    Currency : String(3);
    Quote_Order : Association to one ZCONGA on Quote_Order.Quote_Id = $self.Quote_Id and Quote_Order.Asset_Id = $self.Asset_Id;
    zSAP_Contract : Association to one ZSAP_CONTRACT on zSAP_Contract.Order_Id = $self.Order_Id and zSAP_Contract.Asset_Id = $self.Asset_Id;
}

entity ZSAP_CONTRACT
{
    key Contract_Id : TY_Document_No;
    key Contract_Itemno : TY_Item_No;
    key Asset_Id : TY_Asset_Id;
    Order_Id : TY_Document_No;
    Contract_Status : Document_Status;
    Contract_DocDate : Date;
    Order_Type : Order_Type;
    Material_No : TY_Material_No;
    Customer_No : TY_Customer_No;
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Amount(6,2);
    Amount_Total : TY_Amount(6,2);
    Currency : String(3);
    zSAP_Shipment : Association to one ZSAP_SUBSHP on zSAP_Shipment.Contract_Id = $self.Contract_Id and zSAP_Shipment.Asset_Id = $self.Asset_Id;
    zSAP_ORDER : Association to one ZSAP_ORDER on zSAP_ORDER.Order_Id = $self.Order_Id and zSAP_ORDER.Asset_Id = $self.Asset_Id;
}

entity ZSAP_SUBSHP
{
    key Shipment_Id : TY_Document_No;
    key Shipment_Itemno : TY_Item_No;
    key Asset_Id : TY_Asset_Id;
    Contract_Id : TY_Document_No;
    Shipment_Status : Document_Status;
    Shipment_DocDate : Date;
    Order_Type : Order_Type;
    Material_No : TY_Material_No;
    Customer_No : TY_Customer_No;
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Amount(6,2);
    Amount_Total : TY_Amount(6,2);
    Currency : String(3);
    zSAP_Delivery : Association to one ZSAP_Delivery on zSAP_Delivery.Shipment_Id = $self.Shipment_Id and zSAP_Delivery.Asset_Id = $self.Asset_Id;
    zSAP_contract : Association to one ZSAP_CONTRACT on zSAP_contract.Contract_Id = $self.Contract_Id and zSAP_contract.Asset_Id = $self.Asset_Id;
}

entity ZSAP_Delivery
{
    key Delivery_Id : TY_Document_No;
    Delivery_Itemno : TY_Item_No;
    Shipment_Id : TY_Document_No;
    Delivery_Status : Document_Status;
    Delivery_DocDate : Date;
    Order_Type : Order_Type;
    key Asset_Id : TY_Asset_Id;
    Material_No : TY_Material_No
        @Core.Description : 'Quote Status';
    Customer_No : TY_Customer_No not null;
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Amount(6,2);
    Amount_Total : TY_Amount(6,2);
    Shipment_Del : Association to one ZSAP_SUBSHP on Shipment_Del.Shipment_Id = $self.Shipment_Id and Shipment_Del.Asset_Id = $self.Asset_Id;
    zSAP_INVOICE : Association to one ZSAP_INVOICE on zSAP_INVOICE.Delivery_Id = $self.Delivery_Id and zSAP_INVOICE.Asset_Id = $self.Asset_Id;
}

entity ZSAP_INVOICE
{
    key Invoice_Id : TY_Document_No;
    key Invoice_Itemno : TY_Item_No;
    key Asset_Id : TY_Asset_Id;
    Delivery_Id : TY_Document_No;
    Invoice_Status : Document_Status;
    Invoice_DocDate : Date;
    Order_Type : Order_Type;
    Material_No : TY_Material_No;
    Customer_No : TY_Customer_No;
    Quantity : TY_QUANTITY;
    UOM : String(3);
    Price : TY_Amount(6,2);
    Amount_Total : TY_Amount(6,2);
    Inv_Del : Association to one ZSAP_Delivery on Inv_Del.Delivery_Id = $self.Delivery_Id and Inv_Del.Asset_Id = $self.Asset_Id;
    zBILL_TRUST : Association to one ZBILL_TRUST on zBILL_TRUST.Asset_Id = $self.Asset_Id;
    zHIGH_RADIUS : Association to one ZHIGH_RADIUS on zHIGH_RADIUS.Asset_Id = $self.Asset_Id;
}

entity ZBILL_TRUST
{
    key Asset_Id : String(10);
    key BT_Id : TY_Document_No;
    BT_Status : Document_Status;
    BT_DocDate : Date;
    Order_Type: Order_Type;
    BT_Inv : Association to one ZSAP_INVOICE on BT_Inv.Asset_Id = $self.Asset_Id;
}

entity ZHIGH_RADIUS
{
    key Asset_Id : String(10);
    key HR_Id : TY_Document_No;
    HR_Status : Document_Status not null;
    HR_Date : Date not null;
    HR_Inv : Association to one ZSAP_INVOICE on HR_Inv.Asset_Id = $self.Asset_Id;
}

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
    Entitled;
    Not_Entitled;
    Entitlement_in_progress;
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

type TY_Price : Decimal(6,2);

type TY_QUANTITY : Decimal(6,3);
