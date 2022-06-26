require 'rest-client'

class PagesController < ApplicationController
  def index
    url = "https://api.dictionaryapi.dev/api/v2/entries/en/dog"
    response = RestClient.get(url)
    @result = JSON.parse(response)
    @meanings = @result[0]["meanings"]
  end
end
