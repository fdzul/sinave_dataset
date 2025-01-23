

load("~/Library/CloudStorage/OneDrive-Personal/automatic_read_sinave/8.RData/den/den2008_2024.RData")



path_sinave_2024 <- "/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/datasets/DGE/denv/2024/DENGUE2_.txt"
x <- data.table::fread(path_sinave,
                       #select = vect_cols2,
                       encoding = "Latin-1",
                       quote="",
                       fill=TRUE)

densnv::mp_treemap(country = TRUE,
                   year = 2024,
                   snv_dataset = x)

y <- densnv::cases_by_agem(path_vbd = "/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/datasets/DGE/denv/2024",
                           vbd = "DENGUE2_",
                           status_case = 2,
                           country = TRUE) |>
    dplyr::mutate(n_scale = scale(n))

mapview::mapview(y,
                 zcol = "n_scale",
                 layer.name = "Casos de Dengue")


#######

path_sinave <- "/Users/felipedzul/Library/CloudStorage/OneDrive-Personal/datasets/DGE/denv/2024/DENGUE2_.txt"

den2024 <- data.table::fread(path_sinave,
                             #select = vect_cols2,
                             encoding = "Latin-1",
                             quote="",
                             fill=TRUE)
source("~/Dropbox/r_developments/r_new_functions/3.Functions/static_bump_map.R")
static_bump_map(dataset = den2024,
                year = "2024",
                state = TRUE,
                size_text_value = 2,
                size_text = 2,
                country_text_x = 0.5,
                country_text_y = 0.8,
                line_size = 1.5,
                pal_vir = "viridis")




