SELECT
  country,
  SUM(predicted_label) as total_predicted_purchases
FROM
  ml.PREDICT(MODEL `google_ml_predict_visitor_purchases.sample_model`, (
SELECT * FROM `google_ml_predict_visitor_purchases.testing_data`))
GROUP BY country
ORDER BY total_predicted_purchases DESC
LIMIT 10;
