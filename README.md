
# Set-up development environment

1. Install
2. Make changes & commit
3. Push to master
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
If you changed the content and style, run `gulp sass`, but if you want to change style(s) only, run `gulp`

4. Run Jekyll
```jekyll serve```

## Changes
After making changes, push them to master branch. Every push triggers an automated build & deploy via Travis.

