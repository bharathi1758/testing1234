
view: demo_sales_100 {
  derived_table: {
    sql: {% raw %} SELECT 'SALE001' sale_id,'CUST001' customer_id,'ABC Technologies' customer_name,'Laptop' product_name,'Electronics' category,'West' region,'2024-01-15' sale_date,125000 sales_amount,5 quantity,'Completed' status
      UNION ALL
      SELECT 'SALE002','CUST002','Global Retail Ltd','Printer','Electronics','North','2024-01-22',45000,3,'Completed'
      UNION ALL
      SELECT 'SALE003','CUST003','Sunrise Traders','Office Chair','Furniture','South','2024-02-05',18000,6,'Completed'
      UNION ALL
      SELECT 'SALE004','CUST004','Metro Services','Desk','Furniture','East','2024-02-12',32000,4,'Completed'
      UNION ALL
      SELECT 'SALE005','CUST005','Innovate Labs','Software License','Software','West','2024-02-20',95000,10,'Completed'
      UNION ALL
      SELECT 'SALE006','CUST006','Prime Industries','Monitor','Electronics','North','2024-03-08',28000,4,'Completed'
      UNION ALL
      SELECT 'SALE007','CUST013','Tech Solutions','Server','Electronics','South','2024-03-15',210000,2,'Completed'
      UNION ALL
      SELECT 'SALE008','CUST013','Future Retail','Cloud Subscription','Software','East','2024-03-22',150000,12,'Completed'
      UNION ALL
      SELECT 'SALE009','CUST009','Skyline Ltd','Laptop','Electronics','West','2024-04-01',132000,6,'Completed'
      UNION ALL
      SELECT 'SALE010','CUST010','Vision Corp','Printer','Electronics','North','2024-04-12',42000,3,'Completed'
      UNION ALL
      SELECT 'SALE011','CUST011','ABC Technologies','Office Chair','Furniture','South','2024-04-18',25000,8,'Completed'
      UNION ALL
      SELECT 'SALE012','CUST007','Global Retail Ltd','Desk','Furniture','East','2024-04-26',38000,5,'Completed'
      UNION ALL
      SELECT 'SALE013','CUST013','Sunrise Traders','Software License','Software','West','2024-05-06',115000,9,'Completed'
      UNION ALL
      SELECT 'SALE014','CUST014','Metro Services','Monitor','Electronics','North','2024-05-15',36000,5,'Completed'
      UNION ALL
      SELECT 'SALE015','CUST015','Innovate Labs','Server','Electronics','South','2024-05-24',220000,2,'Completed'
      UNION ALL
      SELECT 'SALE016','CUST001','Prime Industries','Cloud Subscription','Software','East','2024-06-03',140000,11,'Completed'
      UNION ALL
      SELECT 'SALE017','CUST017','Tech Solutions','Laptop','Electronics','West','2024-06-12',145000,7,'Completed'
      UNION ALL
      SELECT 'SALE018','CUST018','Future Retail','Printer','Electronics','North','2024-06-20',47000,4,'Completed'
      UNION ALL
      SELECT 'SALE019','CUST019','Skyline Ltd','Office Chair','Furniture','South','2024-07-01',29000,10,'Completed'
      UNION ALL
      SELECT 'SALE020','CUST008','Vision Corp','Desk','Furniture','East','2024-07-10',41000,6,'Completed'
      UNION ALL
      SELECT 'SALE021','CUST021','ABC Technologies','Software License','Software','West','2024-07-18',104000,8,'Completed'
      UNION ALL
      SELECT 'SALE022','CUST022','Global Retail Ltd','Monitor','Electronics','North','2024-07-29',33000,4,'Completed'
      UNION ALL
      SELECT 'SALE023','CUST008','Sunrise Traders','Server','Electronics','South','2024-08-05',205000,2,'Completed'
      UNION ALL
      SELECT 'SALE024','CUST024','Metro Services','Cloud Subscription','Software','East','2024-08-14',155000,15,'Completed'
      UNION ALL
      SELECT 'SALE025','CUST025','Innovate Labs','Laptop','Electronics','West','2024-08-25',138000,6,'Completed'
      UNION ALL
      SELECT 'SALE026','CUST026','Prime Industries',
      'Printer','Electronics','North',
      '2024-09-02',49000,5,'Completed'

      UNION ALL
      SELECT 'SALE027','CUST015','Tech Solutions',
      'Office Chair','Furniture','South',
      '2024-09-12',26000,7,'Completed'

      UNION ALL
      SELECT 'SALE028','CUST028','Future Retail',
      'Desk','Furniture','East',
      '2024-09-20',36000,4,'Completed'

      UNION ALL
      SELECT 'SALE029','CUST020','Skyline Ltd',
      'Software License','Software','West',
      '2024-10-01',118000,10,'Completed'

      UNION ALL
      SELECT 'SALE027','CUST030','Vision Corp',
      'Monitor','Electronics','North',
      '2024-10-10',35000,4,'Completed'

      UNION ALL
      SELECT 'SALE031','CUST031','ABC Technologies',
      'Server','Electronics','South',
      '2024-10-18',218000,2,'Completed'

      UNION ALL
      SELECT 'SALE032','CUST032','Global Retail Ltd',
      'Cloud Subscription','Software','East',
      '2024-10-26',162000,16,'Completed'

      UNION ALL
      SELECT 'SALE031','CUST033','Sunrise Traders',
      'Laptop','Electronics','West',
      '2024-11-05',142000,7,'Completed'

      UNION ALL
      SELECT 'SALE034','CUST034','Metro Services',
      'Printer','Electronics','North',
      '2024-11-14',52000,4,'Completed'

      UNION ALL
      SELECT 'SALE035','CUST018','Innovate Labs',
      'Office Chair','Furniture','South',
      '2024-11-22',31000,9,'Completed'

      UNION ALL
      SELECT 'SALE036','CUST036','Prime Industries',
      'Desk','Furniture','East',
      '2024-12-02',47000,5,'Completed'

      UNION ALL
      SELECT 'SALE037','CUST037','Tech Solutions',
      'Software License','Software','West',
      '2024-12-12',125000,11,'Completed'

      UNION ALL
      SELECT 'SALE038','CUST006','Future Retail',
      'Monitor','Electronics','North',
      '2024-12-20',39000,5,'Completed'

      UNION ALL
      SELECT 'SALE039','CUST039','Skyline Ltd',
      'Server','Electronics','South',
      '2025-01-06',230000,2,'Completed'

      UNION ALL
      SELECT 'SALE040','CUST040','Vision Corp',
      'Cloud Subscription','Software','East',
      '2025-01-15',170000,18,'Completed'

      UNION ALL
      SELECT 'SALE041','CUST041','ABC Technologies',
      'Laptop','Electronics','West',
      '2025-01-25',148000,8,'Completed'

      UNION ALL
      SELECT 'SALE042','CUST004','Global Retail Ltd',
      'Printer','Electronics','North',
      '2025-02-04',55000,5,'Completed'

      UNION ALL
      SELECT 'SALE043','CUST043','Sunrise Traders',
      'Office Chair','Furniture','South',
      '2025-02-13',34000,10,'Completed'

      UNION ALL
      SELECT 'SALE044','CUST044','Metro Services',
      'Desk','Furniture','East',
      '2025-02-21',50000,6,'Completed'

      UNION ALL
      SELECT 'SALE045','CUST019','Innovate Labs',
      'Software License','Software','West',
      '2025-03-03',132000,12,'Completed'

      UNION ALL
      SELECT 'SALE046','CUST046','Prime Industries',
      'Monitor','Electronics','North',
      '2025-03-11',42000,6,'Completed'

      UNION ALL
      SELECT 'SALE047','CUST039','Tech Solutions',
      'Server','Electronics','South',
      '2025-03-20',240000,2,'Completed'

      UNION ALL
      SELECT 'SALE048','CUST070','Future Retail',
      'Cloud Subscription','Software','East',
      '2025-03-29',176000,20,'Completed'

      UNION ALL
      SELECT 'SALE049','CUST049','Skyline Ltd',
      'Laptop','Electronics','West',
      '2025-04-08',155000,8,'Completed'

      UNION ALL
      SELECT 'SALE050','CUST063','Vision Corp',
      'Printer','Electronics','North',
      '2025-04-18',58000,5,'Completed'

      UNION ALL
      SELECT 'SALE051','CUST051','ABC Technologies',
      'Office Chair','Furniture','South',
      '2025-04-28',36000,12,'Completed'

      UNION ALL
      SELECT 'SALE052','CUST022','Global Retail Ltd',
      'Desk','Furniture','East',
      '2025-05-06',52000,7,'Completed'

      UNION ALL
      SELECT 'SALE053','CUST053','Sunrise Traders',
      'Software License','Software','West',
      '2025-05-15',138000,14,'Completed'

      UNION ALL
      SELECT 'SALE054','CUST002','Metro Services',
      'Monitor','Electronics','North',
      '2025-05-24',45000,6,'Completed'

      UNION ALL
      SELECT 'SALE055','CUST055','Innovate Labs',
      'Server','Electronics','South',
      '2025-06-02',248000,2,'Completed'

      UNION ALL
      SELECT 'SALE056','CUST003','Prime Industries',
      'Cloud Subscription','Software','East',
      '2025-06-12',182000,22,'Completed'

      UNION ALL
      SELECT 'SALE057','CUST057','Tech Solutions',
      'Laptop','Electronics','West',
      '2025-06-21',162000,9,'Completed'

      UNION ALL
      SELECT 'SALE058','CUST017','Future Retail',
      'Printer','Electronics','North',
      '2025-07-01',61000,6,'Completed'

      UNION ALL
      SELECT 'SALE059','CUST059','Skyline Ltd',
      'Office Chair','Furniture','South',
      '2025-07-10',38000,11,'Completed'

      UNION ALL
      SELECT 'SALE060','CUST061','Vision Corp',
      'Desk','Furniture','East',
      '2025-07-18',55000,8,'Completed'

      UNION ALL
      SELECT 'SALE061','CUST061','ABC Technologies',
      'Software License','Software','West',
      '2025-07-28',145000,15,'Completed'

      UNION ALL
      SELECT 'SALE062','CUST082','Global Retail Ltd',
      'Monitor','Electronics','North',
      '2025-08-06',47000,7,'Completed'

      UNION ALL
      SELECT 'SALE063','CUST063','Sunrise Traders',
      'Server','Electronics','South',
      '2025-08-15',255000,2,'Completed'

      UNION ALL
      SELECT 'SALE064','CUST014','Metro Services',
      'Cloud Subscription','Software','East',
      '2025-08-25',188000,24,'Completed'

      UNION ALL
      SELECT 'SALE065','CUST065','Innovate Labs',
      'Laptop','Electronics','West',
      '2025-09-03',168000,10,'Completed'

      UNION ALL
      SELECT 'SALE066','CUST066','Prime Industries',
      'Printer','Electronics','North',
      '2025-09-12',64000,6,'Completed'

      UNION ALL
      SELECT 'SALE067','CUST067','Tech Solutions',
      'Office Chair','Furniture','South',
      '2025-09-22',41000,12,'Completed'

      UNION ALL
      SELECT 'SALE068','CUST068','Future Retail',
      'Desk','Furniture','East',
      '2025-10-01',58000,8,'Completed'

      UNION ALL
      SELECT 'SALE069','CUST096','Skyline Ltd',
      'Software License','Software','West',
      '2025-10-10',152000,16,'Completed'

      UNION ALL
      SELECT 'SALE070','CUST070','Vision Corp',
      'Monitor','Electronics','North',
      '2025-10-20',49000,7,'Completed'

      UNION ALL
      SELECT 'SALE071','CUST071','ABC Technologies',
      'Server','Electronics','South',
      '2025-10-29',262000,2,'Completed'

      UNION ALL
      SELECT 'SALE072','CUST072','Global Retail Ltd',
      'Cloud Subscription','Software','East',
      '2025-11-08',194000,25,'Completed'

      UNION ALL
      SELECT 'SALE073','CUST073','Sunrise Traders',
      'Laptop','Electronics','West',
      '2025-11-17',172000,10,'Completed'

      UNION ALL
      SELECT 'SALE074','CUST074','Metro Services',
      'Printer','Electronics','North',
      '2025-11-27',68000,7,'Completed'

      UNION ALL
      SELECT 'SALE075','CUST075','Innovate Labs',
      'Office Chair','Furniture','South',
      '2025-12-06',43000,13,'Completed'

      UNION ALL
      SELECT 'SALE076','CUST055','Prime Industries',
      'Desk','Furniture','East',
      '2025-12-15',61000,9,'Completed'

      UNION ALL
      SELECT 'SALE077','CUST077','Tech Solutions',
      'Software License','Software','West',
      '2025-12-24',158000,17,'Completed'

      UNION ALL
      SELECT 'SALE078','CUST078','Future Retail',
      'Monitor','Electronics','North',
      '2026-01-05',52000,8,'Completed'

      UNION ALL
      SELECT 'SALE079','CUST079','Skyline Ltd',
      'Server','Electronics','South',
      '2026-01-14',270000,2,'Completed'

      UNION ALL
      SELECT 'SALE080','CUST080','Vision Corp',
      'Cloud Subscription','Software','East',
      '2026-01-24',205000,26,'Completed'

      UNION ALL
      SELECT 'SALE081','CUST081','ABC Technologies',
      'Laptop','Electronics','West',
      '2026-02-03',178000,11,'Completed'

      UNION ALL
      SELECT 'SALE082','CUST082','Global Retail Ltd',
      'Printer','Electronics','North',
      '2026-02-12',71000,8,'Completed'

      UNION ALL
      SELECT 'SALE083','CUST021','Sunrise Traders',
      'Office Chair','Furniture','South',
      '2026-02-22',46000,14,'Completed'

      UNION ALL
      SELECT 'SALE084','CUST084','Metro Services',
      'Desk','Furniture','East',
      '2026-03-03',64000,10,'Completed'

      UNION ALL
      SELECT 'SALE085','CUST085','Innovate Labs',
      'Software License','Software','West',
      '2026-03-12',165000,18,'Completed'

      UNION ALL
      SELECT 'SALE086','CUST086','Prime Industries',
      'Monitor','Electronics','North',
      '2026-03-22',54000,8,'Completed'

      UNION ALL
      SELECT 'SALE087','CUST087','Tech Solutions',
      'Server','Electronics','South',
      '2026-04-01',278000,2,'Completed'

      UNION ALL
      SELECT 'SALE088','CUST088','Future Retail',
      'Cloud Subscription','Software','East',
      '2026-04-10',212000,28,'Completed'

      UNION ALL
      SELECT 'SALE089','CUST089','Skyline Ltd',
      'Laptop','Electronics','West',
      '2026-04-20',185000,11,'Completed'

      UNION ALL
      SELECT 'SALE090','CUST090','Vision Corp',
      'Printer','Electronics','North',
      '2026-04-29',74000,9,'Completed'

      UNION ALL
      SELECT 'SALE091','CUST073','ABC Technologies',
      'Office Chair','Furniture','South',
      '2026-05-08',49000,15,'Completed'

      UNION ALL
      SELECT 'SALE092','CUST092','Global Retail Ltd',
      'Desk','Furniture','East',
      '2026-05-18',68000,10,'Completed'

      UNION ALL
      SELECT 'SALE093','CUST043','Sunrise Traders',
      'Software License','Software','West',
      '2026-05-27',172000,19,'Completed'

      UNION ALL
      SELECT 'SALE094','CUST094','Metro Services',
      'Monitor','Electronics','North',
      '2026-06-06',56000,9,'Completed'

      UNION ALL
      SELECT 'SALE095','CUST095','Innovate Labs',
      'Server','Electronics','South',
      '2026-06-15',285000,2,'Completed'

      UNION ALL
      SELECT 'SALE096','CUST096','Prime Industries',
      'Cloud Subscription','Software','East',
      '2026-06-25',220000,30,'Completed'

      UNION ALL
      SELECT 'SALE097','CUST097','Tech Solutions',
      'Laptop','Electronics','West',
      '2026-07-04',192000,12,'Completed'

      UNION ALL
      SELECT 'SALE098','CUST099','Future Retail',
      'Printer','Electronics','North',
      '2026-07-14',78000,10,'Completed'

      UNION ALL
      SELECT 'SALE099','CUST099','Skyline Ltd',
      'Office Chair','Furniture','South',
      '2026-07-23',52000,16,'Completed'

      UNION ALL
      SELECT 'SALE100','CUST100','Vision Corp',
      'Desk','Furniture','East',
      '2026-07-31',72000,11,'Completed' {% endraw %} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: sale_id {
    type: string
    sql: ${TABLE}.sale_id ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: sale_date {
    type: string
    sql: ${TABLE}.sale_date ;;
  }

  dimension: sales_amount {
    type: number
    sql: ${TABLE}.sales_amount ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sales_logo {
    type: string
    sql: 'Mcdonalds' ;;

    html:
    <img src="https://static.vecteezy.com/system/resources/previews/019/909/624/large_2x/mcdonald-s-transparent-mcdonald-s-free-free-png.png" height="400" width = "400">
      ;;
  }

  set: detail {
    fields: [
        sale_id,
  customer_id,
  customer_name,
  product_name,
  category,
  region,
  sale_date,
  sales_amount,
  quantity,
  status
    ]
  }
}
