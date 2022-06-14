class MeaningsController < ApplicationController

  def show

    @meaning = Meaning.find(params[:id])

  end
  
end