# frozen_string_literal: true

require 'stub_protected_environments/version'

module StubProtectedEnvironments
  require 'railtie' if defined?(Rails)
end
