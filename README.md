# Automated test for williamhill.com

Cucumber/capybara tests POC for williamhill.com
## Getting Started

### Prerequisites and installing (in a nutshell)

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

From the root directory issue
```
cucumber features/{featurename}.feature 
```

## Test environment
Ubuntu 14.04 64bit
JDK Java 64bit 1.7.0_55
ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
rvm 1.29.2 (latest)
geckodriver 0.18.0
ffox 55.0.2 (64-bit) ubuntu

