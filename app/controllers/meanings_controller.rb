class MeaningsController < ApplicationController

  def index
    @meanings = Meaning.all
  end
  
  def show
    @meaning = Meaning.find(params[:id])
  end
  
end
