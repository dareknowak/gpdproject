# Automated test for williamhill.com

Cucumber/capybara tests POC for williamhill.com
## Getting Started

### Prerequisites and installing

What things you need to install the software and how to install them

Install ruby >=2.2.2 with e.g. ruby version manager, see:
https://rvm.io/rvm/install
```
rvm install ruby 2.2.2
```
Although the Gemfile is provided within the cloned project you should install
gems with the command, issue following from the cloned project root directory, see:
http://bundler.io/v1.15/man/bundle-install.1.html
```
bundle install
```
Make sure geckodriver is available on your path, download it add to PATH, see:
https://github.com/mozilla/geckodriver/releases


## Running the tests

From the root directory issue, e.g.
```
cucumber features/{featurename}.feature 
```
