# lib/tasks/resque.rake
require 'resque/tasks'
require 'resque/scheduler/tasks'

task "resque:setup" => :environment do
  require 'resque'
  Resque.redis = REDIS
end

task "resque:scheduler:setup" => :environment do
  require 'resque-scheduler'
  require 'resque/scheduler/tasks'
  ENV['BACKGROUND'] = 'yes'
end

task "resque:work" => "resque:setup"
task "resque:scheduler" => "resque:scheduler:setup"
