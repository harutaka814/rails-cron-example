# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

set :environment, "development"
env :GEM_PATH, Gem.path.join(':')

every 1.minute do
  runner "Rails.logger.info 'Cron task executed at: ' + Time.current.to_s"
end

every :sunday, at: '4:00 pm' do
  runner "Rails.logger.info 'Weekly cron task executed at: ' + Time.current.to_s"
end
