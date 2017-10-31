module Ecm
  module Blog
    module Backend
      class PostsController < Itsf::Backend::Resource::BaseController
        include Controller::ActsAsPublishedConcern

        helper Ecm::Tags::Backend::ApplicationHelper
        
        def self.resource_class
          Ecm::Blog::Post
        end

        private

        def collection_scope
          super.order(updated_at: :desc)
        end

        def permitted_params
          params.require(:post).permit(:created_by_id, :title, :body, :published, :tag_list)
        end
      end
    end
  end
end
