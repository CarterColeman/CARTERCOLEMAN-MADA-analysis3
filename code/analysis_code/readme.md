The two .RMD file located here explore the processed data from Brian McKay's repository and conducts statistical analysis required for MADA Module 8.

Processed data contains variables related to symptoms of viral infections, primarily the Flu. To see the processed data used (clean_df), run the following code:
```{r}
clean_df_location <- here::here("data", "processed_data", "processeddata.RDS")

clean_df <- readRDS(clean_df_location)
```

Based on our assignment, we predetermined that our outcomes of interest are "Nausea" (Categorical (Y/N)) and "body temperature" (Continuous).


#########Part 2! Analysis for Module 9##########

The .Rmd file labeled analysis3_part2 contains code to split/train the clean_df file created above. As such, the goal of this code is to assess model fitting in the the module 8 analysis previously done.

In this section, we assessed both logistic regression and linear regression models. Logistic regression models were assessed for fit to the cleaned symptom data using ROC and ROC_AUC. Linear Regression was assessed for fit using RSME.
Logistic modeling was conducted in the following manner:
- Nausea as an outcome of all other variables as a predictor.
- Nausea as an outcome of RunnyNose, specifically.
Linear regression modeling was conducted as followed:
- Body Temperature as an outcome of all other variables as a predictor.
- Body Temperature as an outcome of RunnyNose, specifically.
