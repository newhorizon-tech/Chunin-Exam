class LinksController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    @link = Link.new(link_params)
    @link.save!
    render @link
  end

  def show
  end

  private

  def link_params
    params.require(:link).permit(:full_url)
  end
end
