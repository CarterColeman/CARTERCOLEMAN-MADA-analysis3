The two .RMD file located here explore the processed data from Brian McKay's repository and conducts statistical analysis required for MADA Module 8.

Processed data contains variables related to symptoms of viral infections, primarily the Flu. To see the processed data used (clean_df), run the following code:
```{r}
clean_df_location <- here::here("data", "processed_data", "processeddata.RDS")

clean_df <- readRDS(clean_df_location)
```

Based on our assignment, we predetermined that our outcomes of interest are "Nausea" (Categorical (Y/N)) and "body temperature" (Continuous).