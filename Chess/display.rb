require_relative 'board.rb'
require_relative 'cursor.rb'
require 'colorize'

class Display

  def render
    @grid.each_with_index do |row, i1|
      if i1.even?
        row.each { |cell, i2| cell.colorize(:blue) if i2.even? }
        row.each { |cell, i2| cell.colorize(:red) if i2.odd? }
      else
        row.each { |cell, i2| cell.colorize(:blue) if i2.odd? }
        row.each { |cell, i2| cell.colorize(:red) if i2.even? }
      end
    end
  end
end
