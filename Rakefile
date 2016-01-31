# encoding: UTF-8

namespace :prepare do
  desc 'Install ruby bundle'
  task :bundle do
    if ENV['CI']
      sh %(bundle install --path=.bundle --jobs 1 --retry 3 --verbose)
    else
      sh %(bundle install --path .bundle)
    end
  end
end

namespace :style do
  task :rubocop do
    sh %(bundle exec rubocop)
  end
end

desc 'Run all style checks'
task style: ['style:rubocop']

desc 'Run all tests'
task test: %w(style kitchen:all)

# The default rake task should just run it all
desc 'Install required gems and then run all tests'
task default: %w(prepare:bundle test)

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
rescue LoadError
  puts '>>>>> Kitchen gem not loaded, omitting tasks' unless ENV['CI']
end
