# See http://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "chrisbyrneham"
client_key               "#{current_dir}/chrisbyrneham.pem"
validation_client_name   "maplestar-validator"
validation_key           "#{current_dir}/maplestar-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/maplestar"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

# for aws/ec2
# **** Set environment vars AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY rather than checking literal values to a public github
knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:region] = "eu-west-1"
knife[:availability_zone] = "eu-west-1"
knife[:flavor] = "t1.micro"