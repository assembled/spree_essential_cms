Spree::BaseController.class_eval do
  require 'uri'
  before_filter :get_pages
  helper_method :current_page
  
  def current_page
    uri = URI::parse(request.fullpath)
    @page ||= Spree::Page.find_by_path(uri.path)
  end
  
  def get_pages
    return if request.path =~ /^\/+admin/
    @pages ||= Spree::Page.visible.order(:position).all
  end

end
