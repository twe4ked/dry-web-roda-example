source "https://rubygems.org"

gem "rake"

# Web framework
gem "dry-web", "~> 0.3.0"
gem "dry-web-roda", "~> 0.2.1"
gem "puma"
gem "rack_csrf"
gem "shotgun"

# Database persistence
gem "pg"
gem "rom",            github: "rom-rb/rom"
gem "rom-mapper",     github: "rom-rb/rom-mapper"
gem "rom-repository", github: "rom-rb/rom-repository"
gem "rom-sql",        github: "rom-rb/rom-sql"
gem "rom-support",    github: "rom-rb/rom-support"

# Application dependencies
gem "dry-result_matcher"
gem "dry-transaction"
gem "dry-types"
gem "dry-validation"
gem "dry-view"
gem "slim"

group :development, :test do
  gem "guard-rspec"
  gem "pry-byebug"
end

group :test do
  gem "capybara"
  gem "capybara-screenshot"
  gem "database_cleaner"
  gem "poltergeist"
  gem "rspec"
end
