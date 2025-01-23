
load("~/Library/CloudStorage/OneDrive-Personal/automatic_read_sinave/8.RData/den/den2008_2024.RData")

###
x <- den2008_2015 |>
    dplyr::filter(ANO == 2008) |>
    dplyr::filter(CVE_EDO == "12") |>
    dplyr::select(-IDE_CAL, -IDE_CALLE1, 
                  -IDE_CALLE2, -DES_LOC,
                  -IDE_CP,
                  -IDE_COL, -CVE_LOC, -DES_LOC) |>
    dplyr::rename(DES_EDO = DES_EDO.x,
                  DES_MPO = DES_MPO.x)

write.csv(x,
          file = "dengue_2008_guerrero.txt")


##
y <- den2016_2024 |>
    dplyr::filter(ANO == 2024) |>
    dplyr::filter(CVE_EDO_REP == "12") |>
    dplyr::select(-IDE_CAL, -NUM_EXT,-NUM_INT,
                  -DES_LOC_RES,-CVE_LOC_RES,
                  -CVE_LOC_REP, -DES_LOC_REP,
                  -IDE_CP,
                  -IDE_COL) 


write.csv(y,
          file = "dengue_2024_guerrero.txt")


