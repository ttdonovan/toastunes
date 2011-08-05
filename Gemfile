source 'http://rubygems.org'

gem 'rails', '3.1.0.rc5'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
end

gem 'jquery-rails'

gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'mongoid'
gem 'bson_ext'                                # faster C-based JSON lib
gem 'ruby-mp3info'                            # for ID3 tag parsing
gem 'haml'                                    # for view templates
gem 'ejs'                                     # for JST templates
gem 'rabl'                                    # for JSON templates
gem 'yajl-ruby',    :require => 'yajl'        # faster JSON encoding engine
gem 'rmagick',      :require => "RMagick"     # for image processing
gem 'devise'                                  # for user authentication
gem 'httparty'                                # for talking to AWS
gem 'ruby-hmac'                               # for generating AWS API signatures

group :development, :test do
  gem 'jasmine'
  gem 'rspec-rails'
  gem 'spork'
end

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'