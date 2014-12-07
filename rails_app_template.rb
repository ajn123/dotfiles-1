# For example run rails new blog -m app_template.rb

remove_file 'README.doc'
create_file 'README.md'

gem 'haml-rails'

group :development, :test do
  gem 'rspec-rails'
  gem 'annotate'
  gem 'guard-rspec'
end

run 'bundle install'
generate 'rspec:install'
git :init
git add: '--all', commit: '-m "Initial Commit" '