
view: customer_table {
  derived_table: {
    sql: {% raw %} SELECT 'CUST001' customer_id,'ABC Technologies' customer_name,'Enterprise' segment,'West' region,'2024-09-12' join_date,24500 lifetime_value,'Active' status
      UNION ALL SELECT 'CUST002','Global Retail Ltd','Enterprise','North','2024-10-05',18750,'Active'
      UNION ALL SELECT 'CUST003','Sunrise Traders','SMB','South','2024-11-20',8200,'Active'
      UNION ALL SELECT 'CUST004','Metro Services','SMB','East','2024-12-15',6300,'Inactive'
      UNION ALL SELECT 'CUST005','Innovate Labs','Consumer','West','2025-01-10',2800,'Active'
      UNION ALL SELECT 'CUST006','TechNova Systems','Enterprise','North','2024-01-15',35200,'Active'
      UNION ALL SELECT 'CUST007','Prime Logistics','Enterprise','South','2024-02-10',29800,'Active'
      UNION ALL SELECT 'CUST008','BluePeak Industries','SMB','East','2024-03-05',11200,'Inactive'
      UNION ALL SELECT 'CUST009','GreenLeaf Foods','Consumer','West','2024-04-20',4500,'Active'
      UNION ALL SELECT 'CUST010','Apex Consulting','Enterprise','North','2024-05-11',40000,'Active'
      UNION ALL SELECT 'CUST011','Urban Mart','SMB','South','2024-06-01',9800,'Active'
      UNION ALL SELECT 'CUST012','NextGen Solutions','Enterprise','East','2024-07-18',27500,'Active'
      UNION ALL SELECT 'CUST013','Delta Manufacturing','Enterprise','West','2024-08-09',31200,'Inactive'
      UNION ALL SELECT 'CUST014','Vision Healthcare','SMB','North','2024-09-22',8600,'Active'
      UNION ALL SELECT 'CUST015','CloudBridge Ltd','Enterprise','South','2024-10-12',22500,'Active'
      UNION ALL SELECT 'CUST016','Elite Furnishings','Consumer','East','2024-11-03',3900,'Active'
      UNION ALL SELECT 'CUST017','Silverline Traders','SMB','West','2024-12-19',7200,'Inactive'
      UNION ALL SELECT 'CUST018','Bright Education','Enterprise','North','2025-01-21',19300,'Active'
      UNION ALL SELECT 'CUST019','Everest Engineering','Enterprise','South','2025-02-15',36800,'Active'
      UNION ALL SELECT 'CUST020','Harmony Retail','Consumer','East','2025-03-07',5200,'Active'
      UNION ALL SELECT 'CUST021','Pioneer Telecom','Enterprise','West','2025-04-14',28700,'Active'
      UNION ALL SELECT 'CUST022','Starline Exports','SMB','North','2025-05-18',9100,'Inactive'
      UNION ALL SELECT 'CUST023','Fusion Labs','Enterprise','South','2025-06-09',32800,'Active'
      UNION ALL SELECT 'CUST024','Zenith Services','SMB','East','2025-07-25',10400,'Active'
      UNION ALL SELECT 'CUST025','Quantum Innovations','Enterprise','West','2025-08-12',41200,'Active'
      UNION ALL SELECT 'CUST026','Rapid Transport','SMB','North','2025-09-02',7000,'Inactive'
      UNION ALL SELECT 'CUST027','Insight Analytics','Enterprise','South','2025-10-19',24800,'Active'
      UNION ALL SELECT 'CUST028','Mega Retailers','Consumer','East','2025-11-25',6100,'Active'
      UNION ALL SELECT 'CUST029','Smart Energy','Enterprise','West','2025-12-08',35600,'Active'
      UNION ALL SELECT 'CUST030','Northwind Traders','SMB','North','2026-01-05',8900,'Active'
      UNION ALL SELECT 'CUST031','Orbit Technologies','Enterprise','South','2024-01-28',27600,'Active'
      UNION ALL SELECT 'CUST032','Skyline Constructions','SMB','East','2024-02-14',9700,'Inactive'
      UNION ALL SELECT 'CUST033','Fresh Harvest','Consumer','West','2024-03-22',4300,'Active'
      UNION ALL SELECT 'CUST034','Vertex Systems','Enterprise','North','2024-04-08',38700,'Active'
      UNION ALL SELECT 'CUST035','Golden Retail','SMB','South','2024-05-16',8200,'Active'
      UNION ALL SELECT 'CUST036','Infinity Solutions','Enterprise','East','2024-06-27',29400,'Inactive'
      UNION ALL SELECT 'CUST037','Crystal Labs','Enterprise','West','2024-07-13',33400,'Active'
      UNION ALL SELECT 'CUST038','PowerGrid Services','SMB','North','2024-08-05',11500,'Active'
      UNION ALL SELECT 'CUST039','FutureSoft','Enterprise','South','2024-09-17',26300,'Active'
      UNION ALL SELECT 'CUST040','City Superstore','Consumer','East','2024-10-30',4800,'Inactive'
      UNION ALL SELECT 'CUST041','Summit Manufacturing','Enterprise','West','2024-11-11',37500,'Active'
      UNION ALL SELECT 'CUST042','Eco Ventures','SMB','North','2024-12-22',6900,'Active'
      UNION ALL SELECT 'CUST043','Digital Dynamics','Enterprise','South','2025-01-09',30500,'Active'
      UNION ALL SELECT 'CUST044','Premier Logistics','SMB','East','2025-02-20',8400,'Inactive'
      UNION ALL SELECT 'CUST045','Nova Healthcare','Enterprise','West','2025-03-13',27800,'Active'
      UNION ALL SELECT 'CUST046','Capital Retail','Consumer','North','2025-04-01',5600,'Active'
      UNION ALL SELECT 'CUST047','Core Technologies','Enterprise','South','2025-05-09',39900,'Active'
      UNION ALL SELECT 'CUST048','Velocity Traders','SMB','East','2025-06-21',7700,'Inactive'
      UNION ALL SELECT 'CUST049','Alpha Networks','Enterprise','West','2025-07-04',34300,'Active'
      UNION ALL SELECT 'CUST050','Bright Stores','Consumer','North','2025-08-15',4600,'Active'
      UNION ALL SELECT 'CUST051','Nexus Solutions','Enterprise','South','2025-09-29',31250,'Active'
      UNION ALL SELECT 'CUST052','Omega Exports','SMB','East','2025-10-11',7300,'Inactive'
      UNION ALL SELECT 'CUST053','Vertex Energy','Enterprise','West','2025-11-06',35800,'Active'
      UNION ALL SELECT 'CUST054','Prime Healthcare','SMB','North','2025-12-17',9500,'Active'
      UNION ALL SELECT 'CUST055','Infinity Retail','Consumer','South','2026-01-14',3400,'Active'
      UNION ALL SELECT 'CUST056','Titan Systems','Enterprise','East','2024-02-01',42700,'Active'
      UNION ALL SELECT 'CUST057','Blue Ocean Logistics','SMB','West','2024-03-18',8800,'Inactive'
      UNION ALL SELECT 'CUST058','SunTech Innovations','Enterprise','North','2024-04-26',29100,'Active'
      UNION ALL SELECT 'CUST059','Metro Foods','Consumer','South','2024-05-08',5100,'Active'
      UNION ALL SELECT 'CUST060','Astra Consulting','Enterprise','East','2024-06-19',36600,'Active'
      UNION ALL SELECT 'CUST061','United Traders','SMB','West','2024-07-02',6700,'Inactive'
      UNION ALL SELECT 'CUST062','Rocket Software','Enterprise','North','2024-08-16',28300,'Active'
      UNION ALL SELECT 'CUST063','Crescent Industries','Enterprise','South','2024-09-28',31900,'Active'
      UNION ALL SELECT 'CUST064','Happy Homes','Consumer','East','2024-10-14',3700,'Active'
      UNION ALL SELECT 'CUST065','Ace Manufacturing','Enterprise','West','2024-11-26',40500,'Inactive'
      UNION ALL SELECT 'CUST066','Orbit Retail','SMB','North','2024-12-10',7200,'Active'
      UNION ALL SELECT 'CUST067','Zen Labs','Enterprise','South','2025-01-23',29450,'Active'
      UNION ALL SELECT 'CUST068','Eagle Logistics','SMB','East','2025-02-08',8600,'Active'
      UNION ALL SELECT 'CUST069','Vertex Global','Enterprise','West','2025-03-20',38100,'Inactive'
      UNION ALL SELECT 'CUST070','Mosaic Retail','Consumer','North','2025-04-12',5900,'Active'
      UNION ALL SELECT 'CUST071','Nova Digital','Enterprise','South','2025-05-27',33700,'Active'
      UNION ALL SELECT 'CUST072','Pinnacle Services','SMB','East','2025-06-05',8100,'Inactive'
      UNION ALL SELECT 'CUST073','Quantum Tech','Enterprise','West','2025-07-16',42900,'Active'
      UNION ALL SELECT 'CUST074','BrightPath Education','SMB','North','2025-08-03',6400,'Active'
      UNION ALL SELECT 'CUST075','SkyHigh Telecom','Enterprise','South','2025-09-14',27100,'Active'
      UNION ALL SELECT 'CUST076','Elite Retailers','Consumer','East','2025-10-29',5300,'Inactive'
      UNION ALL SELECT 'CUST077','CrossRoad Logistics','SMB','West','2025-11-18',7800,'Active'
      UNION ALL SELECT 'CUST078','Fusion Dynamics','Enterprise','North','2025-12-09',34900,'Active'
      UNION ALL SELECT 'CUST079','Aurora Energy','Enterprise','South','2026-01-07',39200,'Active'
      UNION ALL SELECT 'CUST080','Metro Markets','Consumer','East','2026-01-19',4100,'Active'
      UNION ALL SELECT 'CUST081','NorthStar Systems','Enterprise','West','2024-01-07',32100,'Inactive'
      UNION ALL SELECT 'CUST082','Silver Oak Traders','SMB','North','2024-02-21',7300,'Active'
      UNION ALL SELECT 'CUST083','BrightWave Labs','Enterprise','South','2024-03-12',28750,'Active'
      UNION ALL SELECT 'CUST084','Green Planet Foods','Consumer','East','2024-04-29',3500,'Active'
      UNION ALL SELECT 'CUST085','Summit Technologies','Enterprise','West','2024-05-20',41800,'Active'
      UNION ALL SELECT 'CUST086','First Choice Retail','SMB','North','2024-06-15',8400,'Inactive'
      UNION ALL SELECT 'CUST087','Horizon Healthcare','Enterprise','South','2024-07-30',30600,'Active'
      UNION ALL SELECT 'CUST088','Titan Logistics','SMB','East','2024-08-24',9200,'Active'
      UNION ALL SELECT 'CUST089','Digital Hub','Enterprise','West','2024-09-06',27400,'Active'
      UNION ALL SELECT 'CUST090','Value Stores','Consumer','North','2024-10-21',4700,'Inactive'
      UNION ALL SELECT 'CUST091','Global Connect','Enterprise','South','2024-11-15',36200,'Active'
      UNION ALL SELECT 'CUST092','Rapid Ventures','SMB','East','2024-12-28',6900,'Active'
      UNION ALL SELECT 'CUST093','BlueSky Technologies','Enterprise','West','2025-01-17',33100,'Active'
      UNION ALL SELECT 'CUST094','Smart Retail Group','Consumer','North','2025-02-26',5200,'Inactive'
      UNION ALL SELECT 'CUST095','Velocity Systems','Enterprise','South','2025-03-11',38600,'Active'
      UNION ALL SELECT 'CUST096','Infinity Logistics','SMB','East','2025-04-24',8800,'Active'
      UNION ALL SELECT 'CUST097','Future Enterprises','Enterprise','West','2025-05-15',44100,'Active'
      UNION ALL SELECT 'CUST098','Urban Retail Hub','Consumer','North','2025-06-28',3900,'Inactive'
      UNION ALL SELECT 'CUST099','Crown Technologies','Enterprise','South','2025-07-22',29700,'Active'
      UNION ALL SELECT 'CUST100','Elite Global Services','Enterprise','East','2025-08-31',35400,'Active' {% endraw %} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: join_date {
    type: string
    sql: ${TABLE}.join_date ;;
  }

  dimension: lifetime_value {
    type: number
    sql: ${TABLE}.lifetime_value ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: capgemini_logo {
    type: string
    sql: 'Capgemini' ;;

    html:
    <img src="https://1000logos.net/wp-content/uploads/2021/08/Capgemini-Logo.png" height="80" width = "400">
      ;;
  }

  set: detail {
    fields: [
        customer_id,
  customer_name,
  segment,
  region,
  join_date,
  lifetime_value,
  status
    ]
  }
}
