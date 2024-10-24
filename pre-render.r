
if(!dir.exists("purl")){dir.create("purl")}

qmd_files <- list.files(path = c("statistik"), pattern = "\\.qmd$", recursive = TRUE, full.names = TRUE)

sapply(qmd_files, \(x){
        y <- file.path("purl", paste0(tools::file_path_sans_ext(basename(x)), ".R"))
        knitr::purl(x, output = y, documentation = 2L, quiet = TRUE)
        
    }) |> 
  invisible()
