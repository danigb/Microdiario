# Load the rails application
require File.expand_path('../application', __FILE__)

# https://github.com/mongoid/mongoid/issues/648
require 'yaml'
YAML::ENGINE.yamler= 'syck'

# Initialize the rails application
Microdiario::Application.initialize!

