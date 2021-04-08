module LinksHelper
  def url(link)
    url_link = root_url + link.short_url
    link_to url_link, url_link
  end
end
