# Main run file
# Depends on configuration objects defined in config.R

source("code/loader.R")

# Load data
mx_data  <- readr::read_csv("data/mx_data.csv", show_col_types = FALSE)
cod_data <- readr::read_csv("data/cod_data.csv", show_col_types = FALSE)

# Time differentials

# Females 1993-2023
res <- decompose_time(1993, 2023, "f", mx_data, cod_data)
print(out_tab(res))
out_fig(res, -0.3, 1.1)

# Females 1993-2003
res <- decompose_time(1993, 2003, "f", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

#Females 2003-2013
res <- decompose_time(2003, 2013, "f", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Females 2013-2023
res <- decompose_time(2013, 2023, "f", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Females 2013-2019
res <- decompose_time(2013, 2019, "f", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Females 2019-2021
res <- decompose_time(2019, 2021, "f", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Females 2021-2023
res <- decompose_time(2021, 2023, "f", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Males 1993-2023
res <- decompose_time(1993, 2023, "m", mx_data, cod_data)
print(out_tab(res))
out_fig(res, -0.3, 1.1)

# Males 1993-2003
res <- decompose_time(1993, 2003, "m", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Males 2003-2013
res <- decompose_time(2003, 2013, "m", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Males 2013-2023
res <- decompose_time(2013, 2023, "m", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Males 2013-2019
res <- decompose_time(2013, 2019, "m", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Males 2019-2021
res <- decompose_time(2019, 2021, "m", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Males 2021-2023
res <- decompose_time(2021, 2023, "m", mx_data, cod_data)
print(out_tab(res))
out_fig(res)

# Sex differentials

# 1993
res <- decompose_sex(1993, mx_data, cod_data)
print(out_tab(res))
out_fig(res, -0.1, 0.8)

# 2003
res <- decompose_sex(2003, mx_data, cod_data)
print(out_tab(res))
out_fig(res, -0.1, 0.8)

# 2013
res <- decompose_sex(2013, mx_data, cod_data)
print(out_tab(res))
out_fig(res, -0.1, 0.8)

# 2019
res <- decompose_sex(2019, mx_data, cod_data)
print(out_tab(res))
out_fig(res, -0.1, 0.8)

# 2021
res <- decompose_sex(2021, mx_data, cod_data)
print(out_tab(res))
out_fig(res, -0.1, 0.8)

# 2023
res <- decompose_sex(2023, mx_data, cod_data)
print(out_tab(res))
out_fig(res, -0.1, 0.8)

