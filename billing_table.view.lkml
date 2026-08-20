
view: billing_table {
  derived_table: {
    sql: {% raw %} SELECT 'TICKET001' ticket_id,'CUST001' customer_id,'ABC Technologies' customer_name,
      
      'Login Issue' issue_type,'High' priority,'Open' status,
      
      '2024-01-05' created_date,'2024-01-06' resolved_date,'Agent A' assigned_to
      
      
      UNION ALL
      
      
      SELECT 'TICKET002','CUST002','Global Retail Ltd',
      
      'Password Reset','Medium','Resolved',
      
      '2024-01-08','2024-01-08','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET003','CUST003','Sunrise Traders',
      
      'Billing Issue','High','Resolved',
      
      '2024-01-12','2024-01-14','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET004','CUST004','Metro Services',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-01-15','2024-01-16','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET005','CUST005','Innovate Labs',
      
      'Feature Request','Low','Closed',
      
      '2024-01-18','2024-01-25','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET006','CUST006','Prime Industries',
      
      'Application Crash','Critical','Resolved',
      
      '2024-01-22','2024-01-23','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET007','CUST007','Tech Solutions',
      
      'Performance Issue','High','Resolved',
      
      '2024-01-25','2024-01-27','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET008','CUST008','Future Retail',
      
      'Account Locked','Medium','Resolved',
      
      '2024-01-29','2024-01-29','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET009','CUST009','Skyline Ltd',
      
      'Login Issue','Low','Closed',
      
      '2024-02-02','2024-02-03','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET010','CUST010','Vision Corp',
      
      'Billing Issue','High','Resolved',
      
      '2024-02-05','2024-02-07','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET011','CUST011','ABC Technologies',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-02-09','2024-02-10','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET012','CUST012','Global Retail Ltd',
      
      'Feature Request','Low','Closed',
      
      '2024-02-12','2024-02-18','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET013','CUST013','Sunrise Traders',
      
      'Application Crash','Critical','Resolved',
      
      '2024-02-15','2024-02-16','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET014','CUST014','Metro Services',
      
      'Performance Issue','High','Resolved',
      
      '2024-02-18','2024-02-20','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET015','CUST015','Innovate Labs',
      
      'Password Reset','Medium','Resolved',
      
      '2024-02-22','2024-02-22','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET016','CUST016','Prime Industries',
      
      'Account Locked','Medium','Resolved',
      
      '2024-02-24','2024-02-25','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET017','CUST017','Tech Solutions',
      
      'Login Issue','High','Resolved',
      
      '2024-02-28','2024-03-01','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET018','CUST018','Future Retail',
      
      'Billing Issue','High','Resolved',
      
      '2024-03-03','2024-03-05','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET019','CUST019','Skyline Ltd',
      
      'Feature Request','Low','Closed',
      
      '2024-03-06','2024-03-12','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET020','CUST020','Vision Corp',
      
      'Application Crash','Critical','Resolved',
      
      '2024-03-10','2024-03-11','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET021','CUST021','ABC Technologies',
      
      'Performance Issue','High','Resolved',
      
      '2024-03-14','2024-03-17','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET022','CUST022','Global Retail Ltd',
      
      'Password Reset','Medium','Resolved',
      
      '2024-03-18','2024-03-18','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET023','CUST023','Sunrise Traders',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-03-21','2024-03-22','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET024','CUST024','Metro Services',
      
      'Login Issue','High','Open',
      
      '2024-03-25',NULL,'Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET025','CUST025','Innovate Labs',
      
      'Billing Issue','Medium','In Progress',
      
      '2024-03-28',NULL,'Agent E'
       
       UNION ALL
      
      
      SELECT 'TICKET026','CUST026','Prime Industries',
      
      'Password Reset','Medium','Resolved',
      
      '2024-04-02','2024-04-02','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET027','CUST027','Tech Solutions',
      
      'Application Crash','Critical','Resolved',
      
      '2024-04-05','2024-04-06','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET028','CUST028','Future Retail',
      
      'Performance Issue','High','Resolved',
      
      '2024-04-08','2024-04-10','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET029','CUST029','Skyline Ltd',
      
      'Account Locked','Medium','Resolved',
      
      '2024-04-11','2024-04-11','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET030','CUST030','Vision Corp',
      
      'Billing Issue','High','Resolved',
      
      '2024-04-15','2024-04-17','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET031','CUST031','ABC Technologies',
      
      'Feature Request','Low','Closed',
      
      '2024-04-18','2024-04-24','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET032','CUST032','Global Retail Ltd',
      
      'Login Issue','High','Resolved',
      
      '2024-04-21','2024-04-22','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET033','CUST033','Sunrise Traders',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-04-25','2024-04-26','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET034','CUST034','Metro Services',
      
      'Password Reset','Medium','Resolved',
      
      '2024-04-28','2024-04-28','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET035','CUST035','Innovate Labs',
      
      'Performance Issue','High','Resolved',
      
      '2024-05-02','2024-05-04','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET036','CUST036','Prime Industries',
      
      'Application Crash','Critical','Resolved',
      
      '2024-05-06','2024-05-07','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET037','CUST037','Tech Solutions',
      
      'Account Locked','Medium','Resolved',
      
      '2024-05-09','2024-05-10','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET038','CUST038','Future Retail',
      
      'Login Issue','High','Resolved',
      
      '2024-05-13','2024-05-15','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET039','CUST039','Skyline Ltd',
      
      'Billing Issue','Medium','Resolved',
      
      '2024-05-18','2024-05-20','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET040','CUST040','Vision Corp',
      
      'Feature Request','Low','Closed',
      
      '2024-05-21','2024-05-28','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET041','CUST041','ABC Technologies',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-05-25','2024-05-26','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET042','CUST042','Global Retail Ltd',
      
      'Performance Issue','High','Resolved',
      
      '2024-05-29','2024-05-31','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET043','CUST043','Sunrise Traders',
      
      'Password Reset','Medium','Resolved',
      
      '2024-06-02','2024-06-02','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET044','CUST044','Metro Services',
      
      'Application Crash','Critical','Resolved',
      
      '2024-06-06','2024-06-07','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET045','CUST045','Innovate Labs',
      
      'Login Issue','High','Resolved',
      
      '2024-06-10','2024-06-11','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET046','CUST046','Prime Industries',
      
      'Feature Request','Low','Closed',
      
      '2024-06-14','2024-06-20','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET047','CUST047','Tech Solutions',
      
      'Billing Issue','High','Resolved',
      
      '2024-06-18','2024-06-20','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET048','CUST048','Future Retail',
      
      'Account Locked','Medium','Resolved',
      
      '2024-06-22','2024-06-22','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET049','CUST049','Skyline Ltd',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-06-26','2024-06-27','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET050','CUST050','Vision Corp',
      
      'Performance Issue','High','In Progress',
      
      '2024-06-30',NULL,'Agent E'
      
      UNION ALL
      
      
      SELECT 'TICKET051','CUST051','ABC Technologies',
      
      'Password Reset','Medium','Resolved',
      
      '2024-07-03','2024-07-03','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET052','CUST052','Global Retail Ltd',
      
      'Application Crash','Critical','Resolved',
      
      '2024-07-06','2024-07-07','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET053','CUST053','Sunrise Traders',
      
      'Login Issue','High','Resolved',
      
      '2024-07-10','2024-07-11','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET054','CUST054','Metro Services',
      
      'Feature Request','Low','Closed',
      
      '2024-07-14','2024-07-21','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET055','CUST055','Innovate Labs',
      
      'Billing Issue','High','Resolved',
      
      '2024-07-18','2024-07-20','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET056','CUST056','Prime Industries',
      
      'Account Locked','Medium','Resolved',
      
      '2024-07-22','2024-07-22','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET057','CUST057','Tech Solutions',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-07-25','2024-07-26','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET058','CUST058','Future Retail',
      
      'Performance Issue','High','Resolved',
      
      '2024-07-29','2024-07-31','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET059','CUST059','Skyline Ltd',
      
      'Password Reset','Medium','Resolved',
      
      '2024-08-02','2024-08-02','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET060','CUST060','Vision Corp',
      
      'Application Crash','Critical','Resolved',
      
      '2024-08-06','2024-08-07','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET061','CUST061','ABC Technologies',
      
      'Login Issue','High','Resolved',
      
      '2024-08-10','2024-08-11','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET062','CUST062','Global Retail Ltd',
      
      'Billing Issue','Medium','Resolved',
      
      '2024-08-14','2024-08-16','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET063','CUST063','Sunrise Traders',
      
      'Feature Request','Low','Closed',
      
      '2024-08-18','2024-08-25','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET064','CUST064','Metro Services',
      
      'Performance Issue','High','Resolved',
      
      '2024-08-22','2024-08-24','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET065','CUST065','Innovate Labs',
      
      'Password Reset','Medium','Resolved',
      
      '2024-08-26','2024-08-26','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET066','CUST066','Prime Industries',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-08-30','2024-08-31','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET067','CUST067','Tech Solutions',
      
      'Application Crash','Critical','Resolved',
      
      '2024-09-03','2024-09-04','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET068','CUST068','Future Retail',
      
      'Account Locked','Medium','Resolved',
      
      '2024-09-07','2024-09-08','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET069','CUST069','Skyline Ltd',
      
      'Login Issue','High','Resolved',
      
      '2024-09-11','2024-09-13','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET070','CUST070','Vision Corp',
      
      'Billing Issue','High','Resolved',
      
      '2024-09-15','2024-09-17','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET071','CUST071','ABC Technologies',
      
      'Feature Request','Low','Closed',
      
      '2024-09-19','2024-09-26','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET072','CUST072','Global Retail Ltd',
      
      'Performance Issue','High','Resolved',
      
      '2024-09-23','2024-09-25','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET073','CUST073','Sunrise Traders',
      
      'Password Reset','Medium','Resolved',
      
      '2024-09-27','2024-09-27','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET074','CUST074','Metro Services',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-10-01','2024-10-02','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET075','CUST075','Innovate Labs',
      
      'Application Crash','Critical','In Progress',
      
      '2024-10-05',NULL,'Agent E'
      UNION ALL
      
      
      SELECT 'TICKET076','CUST076','Prime Industries',
      
      'Account Locked','Medium','Resolved',
      
      '2024-10-09','2024-10-10','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET077','CUST077','Tech Solutions',
      
      'Login Issue','High','Resolved',
      
      '2024-10-13','2024-10-14','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET078','CUST078','Future Retail',
      
      'Billing Issue','Medium','Resolved',
      
      '2024-10-17','2024-10-19','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET079','CUST079','Skyline Ltd',
      
      'Feature Request','Low','Closed',
      
      '2024-10-21','2024-10-28','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET080','CUST080','Vision Corp',
      
      'Performance Issue','High','Resolved',
      
      '2024-10-25','2024-10-27','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET081','CUST081','ABC Technologies',
      
      'Password Reset','Medium','Resolved',
      
      '2024-10-29','2024-10-29','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET082','CUST082','Global Retail Ltd',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-11-02','2024-11-03','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET083','CUST083','Sunrise Traders',
      
      'Application Crash','Critical','Resolved',
      
      '2024-11-06','2024-11-07','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET084','CUST084','Metro Services',
      
      'Account Locked','Medium','Resolved',
      
      '2024-11-10','2024-11-10','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET085','CUST085','Innovate Labs',
      
      'Login Issue','High','Resolved',
      
      '2024-11-14','2024-11-15','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET086','CUST086','Prime Industries',
      
      'Billing Issue','High','Resolved',
      
      '2024-11-18','2024-11-20','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET087','CUST087','Tech Solutions',
      
      'Feature Request','Low','Closed',
      
      '2024-11-22','2024-11-29','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET088','CUST088','Future Retail',
      
      'Performance Issue','High','Resolved',
      
      '2024-11-26','2024-11-28','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET089','CUST089','Skyline Ltd',
      
      'Password Reset','Medium','Resolved',
      
      '2024-11-30','2024-11-30','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET090','CUST090','Vision Corp',
      
      'Payment Failure','Critical','Resolved',
      
      '2024-12-04','2024-12-05','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET091','CUST091','ABC Technologies',
      
      'Application Crash','Critical','Resolved',
      
      '2024-12-08','2024-12-09','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET092','CUST092','Global Retail Ltd',
      
      'Account Locked','Medium','Resolved',
      
      '2024-12-12','2024-12-12','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET093','CUST093','Sunrise Traders',
      
      'Login Issue','High','Resolved',
      
      '2024-12-16','2024-12-17','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET094','CUST094','Metro Services',
      
      'Billing Issue','Medium','Resolved',
      
      '2024-12-20','2024-12-22','Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET095','CUST095','Innovate Labs',
      
      'Feature Request','Low','Closed',
      
      '2024-12-24','2024-12-31','Agent E'
      
      
      UNION ALL
      
      
      SELECT 'TICKET096','CUST096','Prime Industries',
      
      'Performance Issue','High','Resolved',
      
      '2025-01-03','2025-01-05','Agent A'
      
      
      UNION ALL
      
      
      SELECT 'TICKET097','CUST097','Tech Solutions',
      
      'Password Reset','Medium','Resolved',
      
      '2025-01-07','2025-01-07','Agent B'
      
      
      UNION ALL
      
      
      SELECT 'TICKET098','CUST098','Future Retail',
      
      'Payment Failure','Critical','Resolved',
      
      '2025-01-11','2025-01-12','Agent C'
      
      
      UNION ALL
      
      
      SELECT 'TICKET099','CUST099','Skyline Ltd',
      
      'Application Crash','Critical','Open',
      
      '2025-01-15',NULL,'Agent D'
      
      
      UNION ALL
      
      
      SELECT 'TICKET100','CUST100','Vision Corp',
      
      'Login Issue','High','In Progress',
      
      '2025-01-18',NULL,'Agent E' {% endraw %} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ticket_id {
    type: string
    sql: ${TABLE}.ticket_id ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}.customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.customer_name ;;
  }

  dimension: issue_type {
    type: string
    sql: ${TABLE}.issue_type ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}.priority ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: created_date {
    type: string
    sql: ${TABLE}.created_date ;;
  }

  dimension: resolved_date {
    type: string
    sql: ${TABLE}.resolved_date ;;
  }

  dimension: assigned_to {
    type: string
    sql: ${TABLE}.assigned_to ;;
  }

  set: detail {
    fields: [
        ticket_id,
	customer_id,
	customer_name,
	issue_type,
	priority,
	status,
	created_date,
	resolved_date,
	assigned_to
    ]
  }
}
