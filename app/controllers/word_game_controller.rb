class WordGameController < ApplicationController
  def game
    @start_time = Time.now.to_i
    @words = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
  end

  def score
    @answer = params[:guess]
    end_time = Time.now.to_i
    start_time = params[:time].to_i
    @time_taken = end_time - start_time

    @score = (params[:guess].length * 10) / (@time_taken / 2)

  end
end
