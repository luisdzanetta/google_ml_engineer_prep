CREATE OR REPLACE MODEL
  `google_ml_predict_visitor_purchases.sample_model`
OPTIONS(model_type='logistic_reg') AS
SELECT
  *
FROM
  `google_ml_predict_visitor_purchases.training_data`;
