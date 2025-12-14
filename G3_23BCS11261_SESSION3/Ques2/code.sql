 SELECT v.customer_id
     , count(v.customer_id) count_no_trans
  FROM visits v
 WHERE v.visit_id NOT IN (SELECT visit_id FROM transactions)
 GROUP BY v.customer_id;