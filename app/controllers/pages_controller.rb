class PagesController < ApplicationController

  def fortune_method
    fortunes = ["You will die in 7 days.",
                "You will become a billionaire.",
                "You will be hungry in 30 minutes."]
    render json: {fortune: fortunes.sample}
  end

  def lotto_method
    numbers = []
    6.times do
      numbers << rand(1..60)
    end
    render json: {lotto_numbers: numbers}
  end

  def count_method
    count = 0
    count += 1 #doesn't work!
    render json: {visit_count: count}
  end

  def beer_method
    i = 99
    song = []
    99.times do
      song << "#{i} bottles of beer on the wall, #{i} bottles of beer. Take one down, pass it around, #{i-1} bottles of beer on the wall."
      i -= 1
    end
    song << "No more bottles of beer on the wall, no more bottles of beer. Go to the store, buy some more, 99 bottles of beer on the wall."
    render json: {song: song}
  end

end
