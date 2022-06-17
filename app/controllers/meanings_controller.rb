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

  def edit
    @meaning = Meaning.find(params[:id])
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

  def update
    @meaning = Meaning.find(params[:id])
    if @meaning.update(params.require(:meaning).permit(:english_word, :translation))
      flash[:notice] = "Meaning was updated successfully"
      redirect_to @meaning
    else
      render :edit, status: 422
    end
  end

  def destroy
    @meaning = Meaning.find(params[:id])
    @meaning.destroy
    redirect_to meanings_path
  end
  
end
