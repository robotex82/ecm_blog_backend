module Ecm
  module Blog
    module Backend
      class PostsController < Itsf::Backend::Resource::BaseController
        include ResourcesController::ActsAsPublishedConcern
        include ResourcesController::FriendlyIdConcern

        helper Ecm::Tags::Backend::ApplicationHelper
        
        def self.resource_class
          Ecm::Blog::Post
        end

        private

        def initialize_resource
          super
          @resource.creator = current_user
        end

        def initialize_resource_for_create
          super
          @resource.creator = current_user
        end

        def load_collection_scope
          super.friendly.order(updated_at: :desc)
        end

        def load_resource_scope
          super.friendly
        end

        def permitted_params
          params.require(:post).permit(:title, :body, :published, :tag_list)
        end
      end
    end
  end
end
