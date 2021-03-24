Rake.application.instance_variable_get("@tasks").delete('db:check_protected_environments')
namespace :db do
  task :check_protected_environments=>:environment do
    puts "Stubbed Rails protected environment check."
  end
end
