class AnagramsController < ApplicationController

  def show
    word1 = params[:word_1]
    word2 = params[:word_2]
    result = (word1.chars.sort == word2.chars.sort)
    render json: { word_1: word1,
                   word_2: word2,
                   anagram: result }
  end
end
