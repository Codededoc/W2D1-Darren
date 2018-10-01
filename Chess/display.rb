require_relative 'board.rb'
require_relative 'cursor.rb'
require 'colorize'

class Display

  def render
    @grid.each_with_index do |row, i1|
      if [0, 2, 4, 6].include?(i1)
        row.colorize(:blue)
      else
        row.colorize(:red)
      end
    end
  end

end
