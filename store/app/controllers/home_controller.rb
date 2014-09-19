class HomeController < ApplicationController
  PER_PAGE = 6
  def index
    @page = params[:page]
    @page = @page ? @page.to_i : 1

    @images = Dir.glob("app/assets/images/gallery/*.*")
    @images = @images.paginate(:page => @page, :per_page => PER_PAGE)
    @total_pages = @images.total_pages
  end
end
