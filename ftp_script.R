library(RCurl)

rmarkdown::render_site() #knits site
#since output directory was set to public_html in the _site.yml config file, it generates files in that new folder

#file.rename("_site", "public_html") #renames _site to public_html needed to host site
#already modified this output_dir specification in _site.yml file

RCurl::ftpUpload("public_html", "ftp://cmgienge:G2L|6}jBt_SL@barney.machighway.com/~cmgienge") #ftp upload

#throws error
#still need to use Cyberduck to upload public_html file, overwriting old website