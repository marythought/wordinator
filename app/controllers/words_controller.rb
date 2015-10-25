class WordsController < ApplicationController

  def index
    @words = Word.all
    render json: @words
  end

  def show
    result = params[:word_1].chars.sort == params[:word2].chars.sort
    render json: { word_1: params[:word_1],
                   word_2: params[:word_2],
                   anagram: result }
  end

end
