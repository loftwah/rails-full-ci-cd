# app/jobs/test_job.rb
class TestJob < ApplicationJob
    @queue = :default
  
    def perform(*args)
      # Do something later
      puts "Running test job - Loftwah was here"
    end
  end
  