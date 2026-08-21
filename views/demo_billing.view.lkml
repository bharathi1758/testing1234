
view: demo_billing {
  derived_table: {
    sql: {% raw %} SELECT 'BILL001' bill_id,'CUST001' customer_id,'Cloud Subscription' product_name,'Software' category,'2024-02-01' billing_date,135000 billing_amount,10 quantity,'Paid' billing_status
      
      
      UNION ALL
      
      SELECT 'BILL002','CUST002','Printer','Electronics','2024-02-05',44000,3,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL003','CUST003','Office Chair','Furniture','2024-02-15',17500,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL004','CUST004','Desk','Furniture','2024-03-01',30000,4,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL005','CUST005','Software License','Software','2024-03-12',92000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL006','CUST006','Monitor','Electronics','2024-03-22',27000,4,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL007','CUST013','Server','Electronics','2024-03-25',208000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL008','CUST013','Cloud Subscription','Software','2024-05-12',148000,12,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL009','CUST009','Laptop','Electronics','2024-04-08',130000,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL010','CUST010','Printer','Electronics','2024-04-18',41000,3,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL011','CUST011','Office Chair','Furniture','2024-04-24',24000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL012','CUST007','Desk','Furniture','2024-05-02',37000,5,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL013','CUST013','Software License','Software','2024-06-01',118000,9,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL014','CUST014','Monitor','Electronics','2024-05-20',35000,5,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL015','CUST015','Server','Electronics','2024-06-01',218000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL016','CUST001','Software License','Software','2024-06-11',138000,11,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL017','CUST017','Laptop','Electronics','2024-06-18',143000,7,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL018','CUST018','Printer','Electronics','2024-06-27',46000,4,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL019','CUST019','Office Chair','Furniture','2024-07-08',28000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL020','CUST008','Desk','Furniture','2024-07-15',40000,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL021','CUST021','Software License','Software','2024-07-24',102000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL022','CUST022','Monitor','Electronics','2024-08-02',32000,4,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL023','CUST008','Server','Electronics','2024-08-10',202000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL024','CUST024','Cloud Subscription','Software','2024-08-20',152000,15,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL025','CUST025','Laptop','Electronics','2024-08-30',135000,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL026','CUST026','Printer','Electronics','2024-09-08',48000,5,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL027','CUST015','Office Chair','Furniture','2024-09-18',25500,7,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL028','CUST028','Desk','Furniture','2024-09-25',35000,4,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL029','CUST020','Software License','Software','2024-10-06',116000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL030','CUST030','Monitor','Electronics','2024-10-16',34000,4,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL031','CUST031','Server','Electronics','2024-10-24',215000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL032','CUST032','Cloud Subscription','Software','2024-11-01',160000,16,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL033','CUST033','Laptop','Electronics','2024-11-10',140000,7,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL034','CUST034','Printer','Electronics','2024-11-20',50000,4,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL035','CUST018','Office Chair','Furniture','2024-11-28',30000,9,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL036','CUST036','Desk','Furniture','2024-12-08',46000,5,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL037','CUST037','Software License','Software','2024-12-18',122000,11,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL038','CUST006','Monitor','Electronics','2024-12-26',38000,5,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL039','CUST039','Server','Electronics','2025-01-12',228000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL040','CUST040','Cloud Subscription','Software','2025-01-20',168000,18,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL041','CUST041','Laptop','Electronics','2025-01-30',145000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL042','CUST004','Printer','Electronics','2025-02-08',54000,5,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL043','CUST043','Office Chair','Furniture','2025-02-18',33000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL044','CUST044','Desk','Furniture','2025-02-26',49000,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL045','CUST019','Software License','Software','2025-03-08',130000,12,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL046','CUST046','Monitor','Electronics','2025-03-16',41000,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL047','CUST039','Server','Electronics','2025-03-25',238000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL048','CUST070','Cloud Subscription','Software','2025-04-02',174000,20,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL049','CUST049','Laptop','Electronics','2025-04-12',152000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL050','CUST063','Printer','Electronics','2025-04-22',57000,5,'Paid'
       
      UNION ALL
      
      SELECT 'BILL051','CUST051','Office Chair','Furniture','2025-05-03',35000,12,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL052','CUST022','Desk','Furniture','2025-05-11',51000,7,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL053','CUST053','Software License','Software','2025-05-20',136000,14,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL054','CUST002','Monitor','Electronics','2025-05-28',44000,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL055','CUST055','Server','Electronics','2025-06-05',245000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL056','CUST003','Cloud Subscription','Software','2025-06-15',180000,22,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL057','CUST057','Laptop','Electronics','2025-06-24',160000,9,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL058','CUST017','Printer','Electronics','2025-07-04',60000,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL059','CUST059','Office Chair','Furniture','2025-07-13',37000,11,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL060','CUST061','Desk','Furniture','2025-07-21',54000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL061','CUST061','Software License','Software','2025-07-30',143000,15,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL062','CUST082','Monitor','Electronics','2025-08-08',46000,7,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL063','CUST063','Server','Electronics','2025-08-18',252000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL064','CUST014','Cloud Subscription','Software','2025-08-28',186000,24,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL065','CUST065','Laptop','Electronics','2025-09-06',166000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL066','CUST066','Printer','Electronics','2025-09-15',63000,6,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL067','CUST067','Office Chair','Furniture','2025-09-25',40000,12,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL068','CUST068','Desk','Furniture','2025-10-04',57000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL069','CUST096','Software License','Software','2025-10-13',150000,16,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL070','CUST070','Monitor','Electronics','2025-10-23',48000,7,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL071','CUST071','Server','Electronics','2025-11-01',260000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL072','CUST072','Cloud Subscription','Software','2025-11-10',192000,25,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL073','CUST073','Laptop','Electronics','2025-11-20',170000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL074','CUST074','Printer','Electronics','2025-11-30',67000,7,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL075','CUST075','Office Chair','Furniture','2025-12-09',42000,13,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL076','CUST055','Desk','Furniture','2025-12-18',60000,9,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL077','CUST077','Software License','Software','2025-12-27',156000,17,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL078','CUST078','Monitor','Electronics','2026-01-08',51000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL079','CUST079','Server','Electronics','2026-01-18',268000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL080','CUST080','Cloud Subscription','Software','2026-01-28',203000,26,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL081','CUST081','Laptop','Electronics','2026-02-07',176000,11,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL082','CUST082','Printer','Electronics','2026-02-16',70000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL083','CUST021','Office Chair','Furniture','2026-02-26',45000,14,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL084','CUST084','Desk','Furniture','2026-03-07',63000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL085','CUST085','Software License','Software','2026-03-16',163000,18,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL086','CUST086','Monitor','Electronics','2026-03-26',53000,8,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL087','CUST087','Server','Electronics','2026-04-05',275000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL088','CUST088','Cloud Subscription','Software','2026-04-14',210000,28,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL089','CUST089','Laptop','Electronics','2026-04-24',183000,11,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL090','CUST090','Printer','Electronics','2026-05-03',73000,9,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL091','CUST073','Office Chair','Furniture','2026-05-12',48000,15,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL092','CUST092','Desk','Furniture','2026-05-22',67000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL093','CUST043','Software License','Software','2026-05-31',170000,19,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL094','CUST094','Monitor','Electronics','2026-06-10',55000,9,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL095','CUST095','Server','Electronics','2026-06-19',282000,2,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL096','CUST096','Cloud Subscription','Software','2026-06-29',218000,30,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL097','CUST097','Laptop','Electronics','2026-07-08',190000,12,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL098','CUST099','Printer','Electronics','2026-07-18',77000,10,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL099','CUST099','Office Chair','Furniture','2026-07-27',51000,16,'Paid'
      
      
      UNION ALL
      
      SELECT 'BILL100','CUST100','Desk','Furniture','2026-08-05',71000,11,'Paid' {% endraw %} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: bill_id {
    type: string
    sql: ${TABLE}.bill_id ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: billing_date {
    type: string
    sql: ${TABLE}.billing_date ;;
  }

  dimension: billing_amount {
    type: number
    sql: ${TABLE}.billing_amount ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: billing_status {
    type: string
    sql: ${TABLE}.billing_status ;;
  }

  set: detail {
    fields: [
        bill_id,
	customer_id,
	product_name,
	category,
	billing_date,
	billing_amount,
	quantity,
	billing_status
    ]
  }
}
