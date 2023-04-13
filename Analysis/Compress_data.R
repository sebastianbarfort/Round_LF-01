library("tidyverse")
library("lubridate")

# Read Linkedin data
df_li = read_csv("../Data/LinkedIn_csv_ids.zip")

df_li = mutate(df_li, posted_at_d = ymd(posted_at))

df = distinct(df_li)

df_lf = filter(df, campaign_id == 133)

df_lf = filter(df_li, campaign_id == 141)


