# The Amazing Graduation Timer

This is an application that is meant to show the amount of time left until
graduation in obscure measurements, such as hot dogs eaten or games bought on
steam.

How to get the application running:
1. Follow the steps to install ruby here: https://www.ruby-lang.org/en/documentation/installation/ 
2. Install rails using the command "gem install rails"
3. Download the zip using the github "Clone or download" button and then extract it
4. Navigate to the root of extracted file
5. Install dependencies using the command "bundle install"
6. Use the command "rails server"
7. You're done!

In order to run the test suite, simply go to the graduation_countdown directory
in command line with RUBY or something similar, and run the command rspec.

Ted George, Rasheed El Kassed


---
Notes from Kenney & Flori

Additional routes have been created to ```./calc_grads```

Which displays all students and multipliers.
Features on the page include:
* route to manage students
* route to manage multipliers
* selection for students and multipliers

Features that were pending include
* calcuation of graduation time based on selected options

Obstacles included
* Conflicts with capybara not recognizing a found selection option

---

## Additional Installation steps

### Guard
* add guard to the project 
in __Gemfile__
```ruby
group :development do
  ...
  gem 'guard-rspec', require: false
  ...
end
```

run the command `bundle exec guard init rspec`

### Simplcov
>Simplecov is a st coverage visualizer to get a gauge on how much of a code base are under tests

anywhere in your __Gemfile__
```gem 'simplecov', require: false, group: :test```

at the top of __test/test_helper.rb__
```ruby
require 'simplecov'
SimpleCov.start

# Everything else after
```

in __bin/rails__ under `#!/usr/bin/env ruby.exe`
```
if ENV['RAILS_ENV'] == 'test'
  require 'simplecov'
    SimpleCov.start 'rails'
    puts "required simplecov"
end
```

add to __.gitignore__ to not be tracked by git
`echo "coverage" >> .gitignore`
