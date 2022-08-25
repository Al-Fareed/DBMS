create table Orders(
OrderId char(4) ,
Order_date Date ,
Item_No Number(4),
Qty Number(4) constraint Above_0_qty check(Qty>0),
Amount number(7,2) constraint Chk_amt check(Amount>100),
CustNo Number(7) constraint Fk_custno References Customer(Custid),
Delivery_status char(1) constraint Valid_status check(Delivery_status IN ('D','C','P')),
constraint Id_ord_pk Primary Key(OrderId,Order_date,Item_No));