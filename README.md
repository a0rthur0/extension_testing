# Avira UI - basic check for Avira Browser Safety extension
Two basic checks for Avira Browser Safety, when opens safe and unsafe websites and tests check browser extension behavior.
This test suite created for Chrome extension. Installation of Chrome extension required before executing tests. 
Change extension path in /extension-testing/features/support/hooks.rb

## Installation

For linux machines:

- Install RVM:

 $ curl -L get.rvm.io | bash -s stable
 $ source ~/.rvm/scripts/rvm
 $ rvm list known
 $ rvm install 2.1.3


- Download project

    $ git clone git@github.com:a0rthur0/extension_testing

- Make sure you have chrome and chromedriver installed
- Install the bundler gem:

    $ rvm 2.1.3 do gem install bundler

- Install all of the required gems defined in the gemfile:

    $ cd /project_folder_path/extension-testing/
    $ rvm 2.1.3 do bundle install


## Usage

- Run cucumber through:

    $ cucumber features/extension_basic_detection_checks.feature --format html > avira_feature_test.html

- Check report in root project folder: open avira_feature_test.html