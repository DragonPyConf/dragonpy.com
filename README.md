
# Set-up development environment

1. Install
2. Make changes & commit
3. Push/merge to master
4. Let Travis do the magic :)

## Installation

1. To set-up the environment for you'll need:

- [Ruby](https://www.ruby-lang.org/en/downloads/) (2.4 or above)
- [Jekyll](https://jekyllrb.com/)
- [NodeJS](https://nodejs.org/en/) (0.12 or greater)
- [Git](https://git-scm.com/)


2. After installation clone this repository and install dependencies :
```npm install```

3. Build assets
Use `gulp build` to build the assets or `gulp` to watch the changes while you make them (style only).

4. Run Jekyll locally
If you made any changes to the configuration or added new pages, you'll have to rebuild the site.

```jekyll serve```

## Deployment
After making changes, push them to master branch. Every push triggers an automated build & deploy via Travis.

# Adding new pages
All pages should be saved as markdown files (*.md) since kramdown markdown parser makes it possible to mix markdown content (simple) with HTML snippets for some specific parts.

## Templates
All pages but the landing one use default template (for now).

## Menus
Links in menus in header and footer are automatically generated from `_data/links.yml` for easier maintenance.

## Members
Team members data is in `_data/members.yml`, just add new entry for a new member or edit existing ones. They will be automatically displayed on the page.