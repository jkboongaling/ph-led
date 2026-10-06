# Run file for figures in the manuscript
# Depends on configuration objects defined in config.R

source("code/loader.R")

# Load data
mx_data  <- readr::read_csv("data/mx_data.csv", show_col_types = FALSE)
cod_data <- readr::read_csv("data/cod_data.csv", show_col_types = FALSE)

# ------------------------------------------------------------------------------
# Age- and cause-decomposition of the change in life expectancy
# Philippines 1993–2023

pf1 <- out_fig(decompose_time(1993, 2023, "f", mx_data, cod_data), -0.3, 1.1)
pm1 <- out_fig(decompose_time(1993, 2023, "m", mx_data, cod_data), -0.3, 1.1)

main <- patchwork::wrap_plots(pf1, pm1, ncol = 2,
                              guides = "collect", axes = "collect")

main

ggplot2::ggsave("out/PH_Decomp_Time.png",
                plot = main,
                width = 12, height = 6, dpi = 300, bg = "white")

# ------------------------------------------------------------------------------
# Age- and cause-decomposition of the change in life expectancy
# Philippines 1993–2003, 2003–2013, 2013–2023

no_t  <- ggplot2::theme(plot.title = ggplot2::element_blank())

pf2 <- out_fig(decompose_time(1993, 2003, "f", mx_data, cod_data))
pf3 <- out_fig(decompose_time(2003, 2013, "f", mx_data, cod_data)) + no_t
pf4 <- out_fig(decompose_time(2013, 2023, "f", mx_data, cod_data)) + no_t

pm2 <- out_fig(decompose_time(1993, 2003, "m", mx_data, cod_data))
pm3 <- out_fig(decompose_time(2003, 2013, "m", mx_data, cod_data)) + no_t
pm4 <- out_fig(decompose_time(2013, 2023, "m", mx_data, cod_data)) + no_t

main <- 
  patchwork::wrap_plots(pf2, pm2, pf3, pm3, pf4, pm4, ncol = 2, 
                        guides = "collect", axes ="collect")

main

ggplot2::ggsave("out/PH_Decomp_Dec123.png",
                plot = main,
                width = 12, height = 15, dpi = 300, bg = "white")

# ------------------------------------------------------------------------------
# Age- and cause-decomposition of the change in life expectancy
# Philippines 2013–2019, 2019–2021, 2021–2023

no_t  <- ggplot2::theme(plot.title = ggplot2::element_blank())

pf5 <- out_fig(decompose_time(2013, 2019, "f", mx_data, cod_data))
pf6 <- out_fig(decompose_time(2019, 2021, "f", mx_data, cod_data)) + no_t
pf7 <- out_fig(decompose_time(2021, 2023, "f", mx_data, cod_data)) + no_t

pm5 <- out_fig(decompose_time(2013, 2019, "m", mx_data, cod_data))
pm6 <- out_fig(decompose_time(2019, 2021, "m", mx_data, cod_data)) + no_t
pm7 <- out_fig(decompose_time(2021, 2023, "m", mx_data, cod_data)) + no_t

main <- 
  patchwork::wrap_plots(pf5, pm5, pf6, pm6, pf7, pm7, ncol = 2, 
                        guides = "collect", axes="collect")

main

ggplot2::ggsave("out/PH_Decomp_Dec3Sub.png",
                plot = main,
                width = 12, height = 15, dpi = 300, bg = "white")

# ------------------------------------------------------------------------------
# Age- and cause-decomposition of the sex gap
# Philippines 1993 and 2023

p1 <- out_fig(decompose_sex(2023, mx_data, cod_data), -0.1, 0.8)
p2 <- out_fig(decompose_sex(1993, mx_data, cod_data), -0.1, 0.8)

main <- patchwork::wrap_plots(p2, p1, ncol = 2,
                              guides = "collect", axes = "collect")

main

ggplot2::ggsave("out/PH_Decomp_Sex.png",
                plot = main,
                width = 12, height = 6, dpi = 300, bg = "white")

