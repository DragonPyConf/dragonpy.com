
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

3. Run Jekyll locally

To build the pages and serve them use

```jekyll serve --config _config_local.yml```

This `config_local.yml` file is used for localhost only, `_config.yml` is used by Travis for production and you can use `_config_github_pages.yml`.

If you want to deploy to your forked repo's Github page (resides in a subfolder) you can set up your own Travis integration and update the `.travis.yml` with following:
```- bundle exec jekyll build --config _config_gh_pages.yml```

After you're ready to push to production, change the line back to default one:
```- bundle exec jekyll build```

4. Build assets
We use gulp to build the assets (SCSS to css, copy vendor files).
Use `gulp build` to build the assets.

**Important**: when developing locally, run the `gulp build` command *after* Jekyll files are built, since compiled css files are not included in the repository.


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