Ecm::Blog::Backend.configure do |config|  
  # Set the resources, that will be shown in the backend menu.
  # 
  # Default: config.registered_controllers = -> {[
  #            Ecm::Blog::Backend::PostsController,
  #            Ecm::Blog::Backend::AssetDetailsController
  #          ]}
  # 
  config.registered_controllers = -> {[
    Ecm::Blog::Backend::PostsController,
    Ecm::Blog::Backend::AssetDetailsController
  ]}

  # Set the services, that will be shown in the backend menu.
  # 
  # Default: config.registered_services = -> {[
  #          ]}
  # 
  config.registered_services = -> {[
  ]}

  # Method to call on creator for display. Can be a symbol,
  # string or Proc.
  #
  # default: config.creator_label_method = :to_s
  config.creator_label_method = :to_s
end