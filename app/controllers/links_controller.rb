class LinksController < ApplicationController
  def index
  end

  def create
    @link = Link.new(link_params)
    @link.full_url = clean_url(@link.full_url.strip)
    @link.short_url = generate_url()
    @link.save!
    render @link
  end

  def short_redirect
   @redirect_link = Link.find_by(short_url: params[:short_url])
   user_agent = UserAgent.parse(request.user_agent)
   @visit = Visit.new(link: @redirect_link, browser: user_agent.browser, os:user_agent.os)
   @visit.save
   redirect_to @redirect_link.full_url
  end

  private

  def link_params
    params.require(:link).permit(:full_url)
  end
end
