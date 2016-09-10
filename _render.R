quiet = "--quiet" %in% commandArgs(FALSE) #formats = commandArgs(TRUE)
formats = "bookdown::gitbook" #formats = "bookdown::pdf_book"
bookdown::render_book('index.Rmd', 'bookdown::gitbook', quiet = TRUE)

# provide default formats if necessary
if (length(formats) == 0) formats = c(
  'bookdown::pdf_book', 'bookdown::epub_book', 'bookdown::gitbook'
)

travis = !is.na(Sys.getenv('CI', NA))
# render the book to all formats unless they are specified via command-line args
for (fmt in formats) {
  cmd = sprintf("bookdown::render_book('index.Rmd', '%s', quiet = %s)", fmt, quiet)
  res = bookdown:::Rscript(c('-e', shQuote(cmd)))
  if (res != 0) stop('Failed to compile the book to ', fmt)
  if (!travis && fmt == 'bookdown::epub_book')
    bookdown::calibre('_book/bookdown.epub', 'mobi')
}
