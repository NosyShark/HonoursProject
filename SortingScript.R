# Figuring out where the data is I need to download - FIN WHALE DATA
AAR1 <- read.csv("merged_AAR1_All_calls_data_chl_sst_wind_ssh_stress_CP_daily.csv")
AAR2 <- read.csv("merged_AAR2_All_calls_data_chl_sst_wind_ssh_stress_WC_daily.csv")
AAR3 <- read.csv("merged_AAR3_data_SSHA_CHL_SSTA_WIND_daily_seasonal.csv")
AAR4 <- read.csv ("merged_AAR4_data_SSHA_CHL_SST_WIND_daily_seasonal.csv")

install.packages("dplyr")
library(dplyr)

# Filtering the df to include only rows in which FWs were present
AAR1_present <- AAR1 %>%
  filter(FinLow != 0 | FWH != 0) %>%
  select(year, month, day, Date, Month, Time, DayNight, FinLow, FWH, Season)
AAR1_present

AAR2_present <- AAR2 %>%
  filter(FinLow != 0 | FWH != 0) %>%
  select(year, month, day, Date, Month, Time, DayNight, FinLow, FWH, Season)
AAR2_present

AAR3_present <- AAR3 %>%
  filter(FinLow != 0 | FWH != 0) %>%
  select(Year, month, day, Month, Time, DayNight, FinLow, FWH, Season, Date, File.name)
AAR3_present

AAR4_present <- AAR4 %>%
  filter(FinLow != 0 | FWH != 0) %>%
  select(Year, month, day, Month, Time, DayNight, FinLow, FWH, Season, Date, File.name)
AAR4_present
