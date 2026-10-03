-- Revenue contribution by RFM segment
-- Note: segment labels (Champions, At Risk, etc.) were assigned in Python
-- based on r_score, f_score, m_score thresholds from 01_rfm_scoring.sql

SELECT 
    segment,
    COUNT(customer_unique_id) AS customer_count,
    SUM(monetary) AS total_revenue,
    AVG(monetary) AS avg_revenue_per_customer
FROM rfm_segmented
GROUP BY segment
ORDER BY total_revenue DESC;