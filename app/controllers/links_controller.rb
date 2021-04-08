class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    @link = Link.new(link_params)
    @link.short_url = generate_url()
    @link.save!
    render @link
  end

  def short_redirect
   @link = Link.find_by(short_url: params[:short_url])
   redirect_to @link.full_url
  end

  private

  def link_params
    params.require(:link).permit(:full_url)
  end
end
