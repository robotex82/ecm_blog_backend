module Ecm
  module Blog
    module Backend
      class AssetDetailsController < Itsf::Backend::Resource::BaseController
        include ResourcesController::ActsAsListConcern
        include ResourcesController::ActsAsPublishedConcern
        include ResourcesController::Sorting

        helper Twitter::Bootstrap::Components::Rails::V3::ComponentsHelper

        def self.resource_class
          Ecm::Blog::AssetDetail
        end

        private

        def after_destroy_location
          last_location
        end

        def after_reposition_location
          last_location
        end

        def permitted_params
          params.require(:asset_detail).permit(:title, :description)
        end
      end
    end
  end
end
