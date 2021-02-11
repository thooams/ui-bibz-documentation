![Ui Bibz logo](https://ui-bibz-documentation.herokuapp.com/assets/ui-bibz-logo-79e4c924791cf5af86703e09ba1993fdbc42549f0bc164297911b9757536c493.png)

[![Gem Version](https://badge.fury.io/rb/ui_bibz.svg)](http://badge.fury.io/rb/ui_bibz)
[![Build Status](https://travis-ci.org/thooams/Ui-Bibz.svg)](https://travis-ci.org/thooams/Ui-Bibz)
[![Code Climate](https://codeclimate.com/github/thooams/Ui-Bibz/badges/gpa.svg)](https://codeclimate.com/github/thooams/Ui-Bibz)
[![Test Coverage](https://codeclimate.com/github/thooams/Ui-Bibz/badges/coverage.svg)](https://codeclimate.com/github/thooams/Ui-Bibz)
[![Inline docs](http://inch-ci.org/github/thooams/Ui-Bibz.svg?branch=master)](http://inch-ci.org/github/thooams/Ui-Bibz)
[![security](https://hakiri.io/github/thooams/Ui-Bibz/master.svg)](https://hakiri.io/github/thooams/Ui-Bibz/master)

# Ui Bibz Documentation
> This is the documentation website for Ui Bibz.


# Generate doc

    rm -R public/packs && rm -R public/assets
    RAILS_ENV=production rails assets:precompile
    RAILS_ENV=production RAILS_SERVE_STATIC_FILES=yes rails s
    wget -r -k -E "http://localhost:3000"

# Remove href errors


Vscode => search and replace: `nav-link" href="([^"#]*)#"` by `nav-link" href="#"`
