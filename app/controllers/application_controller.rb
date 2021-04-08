class ApplicationController < ActionController::Base
  def generate_url
    SecureRandom.urlsafe_base64(10).gsub(/-|_/,('a'..'z').to_a[rand(26)])
  end

  def clean_url(url)
    u = URI.parse(url)
    return url if(%w{http https}.include?(u.scheme))

    return 'http://' + u.to_s
  end
end
