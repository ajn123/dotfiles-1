# For example run rails new blog -m app_template.rb

run   'rm README.doc'
run   'touch README.md'

gem 'haml-rails'

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'annotate'
  gem 'guard-rspec'
end

run 'bundle install'
generate 'rspec:install'
git :init
git add: '--all', commit: '-m "Initial Commit" '
