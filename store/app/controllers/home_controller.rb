class HomeController < ApplicationController
  def index
    @page = params[:page]
    @page = @page ? @page.to_i : 1

    @images = Dir.glob("app/assets/images/gallery/*.JPG")
    @images += Dir.glob("app/assets/images/gallery/*.png")    
    @images = @images.paginate(:page => @page, :per_page => 9)
    @total_pages = @images.total_pages
  end
end
