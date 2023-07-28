# Loftwah's Rails Demo App

This is a demo app for Rails. I will do random stuff here so please don't use it for anything you care about.

The info for this is [here](https://github.com/loftwah/tech-101/tree/main/misc/drills/3-rails-full-ci-cd)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Ensure you have Docker and Docker Compose installed on your machine. 

### Installing and Running

1. Clone the repository:

```bash
git clone git@github.com:loftwah/rails-full-ci-cd.git
```

1. Change into the project directory:

```bash
cd rails-full-ci-cd
```

1. Copy the example environment variables file and fill it out with your own configuration: `rails secret` for `SECRET_KEY_BASE` and `rails credentials:edit` for `DATABASE_PASSWORD`:

```bash
cp .env.example .env
```

4. Start the application with Docker Compose:

```bash
docker compose up
```

Your application should now be running at `localhost:3000`. Enjoy exploring the Rails Demo application!

Access the Rails console with:

```bash
docker compose exec web rails console
```

Test a resque job with:

```ruby
TestJob.perform_later
```

It should give you an output like this:

```ruby
Loading development environment (Rails 7.0.6)
irb(main):001:0> TestJob.perform_later
Enqueued TestJob (Job ID: b6741ea0-ff35-48e8-aa57-0cd27fa48ef3) to Async(default)
=> 
#<TestJob:0x0000ffffb4fa3d68
 @arguments=[],
 @exception_executions={},
 @executions=0,
 @job_id="b6741ea0-ff35-48e8-aa57-0cd27fa48ef3",
 @priority=nil,
 @provider_job_id="b8ec361e-229f-4272-bc44-2ad31c2d947c",
 @queue_name="default",
 @successfully_enqueued=true,
 @timezone="UTC">
irb(main):002:0> Performing TestJob (Job ID: b6741ea0-ff35-48e8-aa57-0cd27fa48ef3) from Async(default) enqueued at 2023-07-28T07:49:52Z
Running test job - Loftwah was here
Performed TestJob (Job ID: b6741ea0-ff35-48e8-aa57-0cd27fa48ef3) from Async(default) in 6.96ms
```
