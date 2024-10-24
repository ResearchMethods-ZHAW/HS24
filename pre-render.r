list.files(path = c("statistik"), pattern = "\\.qmd$", recursive = TRUE, full.names = TRUE) |>
    sapply(\(x){
        y <- file.path("purl", paste0(tools::file_path_sans_ext(basename(x)), ".R"))
        knitr::purl(x, output = y, documentation = 2L)
    })
