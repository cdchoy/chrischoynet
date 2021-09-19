# www.chrischoy.net
My personal website.  
A Constant Work in Progress

## Directory Structure
* archtypes/  
* content/en/  
  * home         - Home page content including header, about section, and contact section.
  * projects     - Images and files for the Project section's blocks.
* layouts/       - Empty since we use a pre-made theme. Holds .html templates.
* static/        - Files that will exist in root dir of site build  
* themes/        - Pre-made html&css submodules used for website.
* config.toml    - holds site.* settings  
* .gitignore  
* .gitmodules
* CNAME          - links chrischoy.github.io to chrischoy.net  
* LICENSE 
* README.md      
* publish.sh     - script for building/deploying Hugo website to production with Github hosting

## Usage 
First, ensure hugo is installed with `$ hugo version`. If not, you can install it with `$ brew install hugo`. 

To run the server locally, `$ hugo server -D`.

Once your changes are finalized, merge them to master and run the `publish.sh` script.

## Development Notes
Reference [gohugo.io](https://gohugo.io/getting-started/quick-start/) and [Introduction Theme](https://themes.gohugo.io/themes/hugo-theme-introduction/) for refresher on configuring website content. For deployment, see [Hosting with Github](https://gohugo.io/hosting-and-deployment/hosting-on-github/).

This is the light theme background-color I prefer over the default: #F9FBFF. You can edit this in `themes/introduction/assets/sass/_light-variables.sass:$background`.