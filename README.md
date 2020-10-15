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

    rails s && bin/webpack --output-public-path=packs/ --watch
    wget -r -k -E "http://localhost:3000"

# Move packs/media


You must copy the folder `packs/media` presents on the documentation to

  - `thooams.github.io/ui-bibz/packs/`
  - `thooams.github.io/ui-bibz/docs/new-vesrsion/packs/`
