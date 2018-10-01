require_relative "piece.rb"
require_relative "null_piece.rb"

class Board

  attr_reader :grid

  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @sentinel = NullPiece
  end

  def [](pos)
    row, col = pos
    @grid[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @grid[row][col] = val
  end

  def cols
    @grid.transpose
  end

  def move_piece(start_pos, end_pos)
    start_piece = self[start_pos]
    end_piece = self[end_pos]
    raise "no piece" if start_piece.nil?
    raise "cell is occupied" unless end_piece.nil?

    self[end_pos], self[start_pos] = self[start_pos], self[end_pos]
  end

  def add_pieces
    @grid.each_with_index do |row, idx|
      if [0, 1, 6, 7].include?(idx)
        row.each_with_index do |cell, idx2|
          @grid[idx][idx2] = Piece.new
        end
      end
    end
  end

end

board = Board.new
board.add_pieces
board
