class MeaningsController < ApplicationController

  def index
    @meanings = Meaning.all
  end
  
  def show
    @meaning = Meaning.find(params[:id])
  end

  def new
    
  end
  
  def create
    @meaning = Meaning.new(params.require(:meaning).permit(:english_word, :translation))
    @meaning.save
    redirect_to @meaning
  end
  
  
end
