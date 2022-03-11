require "httparty"

module Helpers
  def delorean(email)
    HTTParty.get("http://parodify.herokuapp.com/helpers?email=#{email}")
  end
end
