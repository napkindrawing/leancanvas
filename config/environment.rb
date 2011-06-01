# Load the rails application
require File.expand_path('../application', __FILE__)

ActiveRecord::Base.pluralize_table_names = false

# Initialize the rails application
Lean::Application.initialize!
