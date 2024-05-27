# Figuring out where the data is I need to download - FIN WHALE DATA
# Starting with reading in the data to generic dfs
AAR1 <- read.csv("merged_AAR1_All_calls_data_chl_sst_wind_ssh_stress_CP_daily.csv")
AAR2 <- read.csv("merged_AAR2_All_calls_data_chl_sst_wind_ssh_stress_WC_daily.csv")
AAR3 <- read.csv("merged_AAR3_data_SSHA_CHL_SSTA_WIND_daily_seasonal.csv")
AAR4 <- read.csv ("merged_AAR4_data_SSHA_CHL_SST_WIND_daily_seasonal.csv")

# Installing all necessary packages
install.packages("dplyr") # for sorting dfs
library(dplyr)

# Filtering and ordering the df to include only rows in which FWs were present
AAR1_present <- AAR1 %>%
  filter(FinLow != 0 | FWH != 0) %>%
  select(year, month, day, Date, Month, Time, DayNight, Rec_Dur, FinLow, FWH, Season)
AAR1_present<- AAR1_present[order(-AAR1_present$FinLow, -AAR1_present$FWH), ]
AAR1_present

AAR2_present <- AAR2 %>%
  filter(FinLow != 0 | FWH != 0) %>%
  select(year, month, day, Date, Month, Time, DayNight, Rec_Dur, FinLow, FWH, Season)
AAR2_present<- AAR2_present[order(-AAR2_present$FinLow, -AAR2_present$FWH), ]
AAR2_present

AAR3_present <- AAR3 %>%
  filter(FinLow != 0 | FWH != 0) %>%
  select(Year, month, day, Month, Time, DayNight, Rec_Dur, FinLow, FWH, Season, Date, File.name)
AAR3_present<- AAR3_present[order(-AAR3_present$FinLow, -AAR3_present$FWH), ]
AAR3_present
print(AAR3_present$File.name)

AAR4_present <- AAR4 %>%
  filter(FinLow != 0 | FWH != 0) %>%
  select(Year, month, day, Month, Time, DayNight, Rec_Dur, FinLow, FWH, Season, Date, File.name)
AAR4_present<- AAR4_present[order(-AAR4_present$FinLow, -AAR4_present$FWH), ]
AAR4_present
print(AAR4_present$File.name)

