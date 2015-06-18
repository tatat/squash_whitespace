require 'squash_whitespace/helpers'

module SquashWhitespace
  class Railtie < ::Rails::Railtie
    initializer 'squash_whitespace.configure' do |app|
      ActiveSupport.on_load :action_view do
        include SquashWhitespace::Helpers
      end
    end
  end
end
