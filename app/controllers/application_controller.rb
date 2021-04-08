class ApplicationController < ActionController::Base
  def generate_url
    SecureRandom.urlsafe_base64(10).gsub(/-|_/,('a'..'z').to_a[rand(26)])
  end
end
