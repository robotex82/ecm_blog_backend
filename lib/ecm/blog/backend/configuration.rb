require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'

module Ecm
  module Blog
    module Backend
      module Configuration
        def configure
          yield self
        end

        mattr_accessor :registered_controllers do
          lambda do
            [
              Ecm::Blog::Backend::PostsController
            ]
          end
        end

        mattr_accessor :registered_services do
          lambda do
            []
          end
        end

        mattr_accessor(:creator_label_method) { :to_s }
      end
    end
  end
end
