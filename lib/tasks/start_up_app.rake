namespace :db do
  desc "start up the deusto app and remove the current database"
  task :startup => :environment do
     
     Rake::Task['db:drop'].invoke
     Rake::Task['db:migrate'].invoke
     Rake::Task['db:fixtures:load'].invoke
     
     
  end
end

