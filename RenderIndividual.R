rmarkdown::render("50-video.rmd", output_format = "html_document")
rmarkdown::render("10-List.Rmd", output_format = "html_document")
rmarkdown::render("test.rmd", output_format = "html_document")
rmarkdown::render("src/Best.Rmd", output_format = "html_document")

rmarkdown::render("11-Rank.Rmd", output_format = "html_document", encoding = "UTF-8")
rmarkdown::render("11-Rank.Rmd", output_format = "pdf_document", encoding = "UTF-8")
rmarkdown::render("11-Rank.Rmd", output_format = "prettydoc::html_pretty", encoding = "UTF-8")
