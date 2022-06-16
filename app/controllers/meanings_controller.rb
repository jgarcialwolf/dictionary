class MeaningsController < ApplicationController

  def index
    @meanings = Meaning.all
  end
  
  def show
    @meaning = Meaning.find(params[:id])
  end

  def new
    @meaning = Meaning.new
  end
  
  def create
    @meaning = Meaning.new(params.require(:meaning).permit(:english_word, :translation))
    if @meaning.save
      flash[:notice] = "Meaning was stored successfully."
      redirect_to @meaning
    else
      render :new, status: 422
    end
    
  end
  
  
end
