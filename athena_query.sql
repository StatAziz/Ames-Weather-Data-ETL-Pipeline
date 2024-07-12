
# read the data
#################
SELECT *
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
limit 1000


# Average temperature
######################
# Average temperature(F) in March

SELECT round(avg(temp_f),1) avg_temperature_in_F
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=3
;

# Average temperature(F) in April

SELECT round(avg(temp_f),1) avg_temperature_in_F
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=4
;

# Total rain_sum
######################
#total rain_sum in March

SELECT sum(rain_sum) 
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=3
;

# total rain_sum in April

SELECT sum(rain_sum) 
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=4
;

# Total precipitation_sum
##########################
# total precipitation_sum in March

SELECT sum(precipitation_sum) total_precipitation_sum
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=3
;

# total precipitation_sum in April

SELECT sum(precipitation_sum) total_precipitation_sum
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=4
;

#Average daylight_duration
###########################
# Average daylight_duration in March

SELECT round(avg(daylight_duration)/3600,1) avg_daylight_duration
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=3
;

# Average daylight_duration in April

SELECT round(avg(daylight_duration)/3600,1) avg_daylight_duration
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=4
;

#Average sunshine_duration
###########################
# Average sunshine_duration in March
SELECT round(avg(sunshine_duration)/3600,1) avg_sunshine_duration
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=3
;

# Average sunshine_duration in April
SELECT round(avg(sunshine_duration)/3600,1) avg_sunshine_duration
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=4
;

# Average maximum wind speed
################################
# Average maximum wind speed in March

SELECT round(avg(wind_speed_10m_max),1) avg_max_wind_speed
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=3
;

# Average maximum wind speed in April

SELECT round(avg(wind_speed_10m_max),1) avg_max_wind_speed
FROM "de_proj_database_hist_final"."historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335"
where month(cast(time as timestamp))=3
;

# Grafana code
  SELECT 
    CAST(time as TIMESTAMP) time,
    temp_f
  FROM historical_weather_data_final_prod_tbl_2024_05_28_21_31_39_890335 
  WHERE $__timeFilter(CAST(time as TIMESTAMP))
  order by 1 




