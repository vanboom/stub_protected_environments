# frozen_string_literal: true
module StubProtectedEnvironments
  class Railtie < Rails::Railtie
    railtie_name :stub_protected_environments

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/stub_protected_environments/tasks/**/*.rake").each { |f| load f }
    end
  end
end
