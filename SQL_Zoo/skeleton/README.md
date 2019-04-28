First run bundle install

If at any point your database becomes corrupt, simply run ./import_db.sh again to reset it.

lib/ directory is where the .rb test files are located.

spec is run by example command: bundle exec rspec spec/01_select_basics_spec.rb. Running a single example spec can be done by: bundle exec rspec spec/01_select_basics_spec.rb:42