# www.chrischoy.net
My personal portfolio/CV website.  
A Constant Work in Progress

## Directory Structure
* archtypes  
* content  
  * about.md  
  * contact.md  
  * resume.md  
* layouts        - Holds .html templates  
* static         - Files that will exist in root dir of site build  
* themes  
* .gitignore  
* CNAME          - links chrischoy.github.io to chrischoy.net  
* LICENSE        - Creative License  
* README.md      - This file  
* config.toml    - holds site.* settings  
* publish.sh     - script for building Hugo website  

## Usage 
First, ensure hugo is installed with `$ hugo version`. If not, you can install it with `$ brew install hugo`. 

To run the server locally, `$ hugo server -D`.

Once your changes are finalized, merge them to master and run the `publish.sh` script.