class TestsController < ApplicationController
  def index
    @meanings = Meaning.all
  end
end
