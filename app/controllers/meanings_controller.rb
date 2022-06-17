class MeaningsController < ApplicationController
  before_action :set_meaning, only: [:edit, :update, :show, :destroy]

  def index
    @meanings = Meaning.all
  end
  
  def show
  end

  def new
    @meaning = Meaning.new
  end

  def edit
  end
  
  def create
    @meaning = Meaning.new(meaning_params)
    if @meaning.save
      flash[:notice] = "Meaning was stored successfully."
      redirect_to @meaning
    else
      render :new, status: 422
    end
  end

  def update
    if @meaning.update(meaning_params)
      flash[:notice] = "Meaning was updated successfully"
      redirect_to @meaning
    else
      render :edit, status: 422
    end
  end

  def destroy
    @meaning.destroy
    redirect_to meanings_path
  end

  private

  def set_meaning
    @meaning = Meaning.find(params[:id])
  end

  def meaning_params
    params.require(:meaning).permit(:english_word, :translation)
  end
  
end
