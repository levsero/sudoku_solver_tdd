require_relative '../board'

describe Board do
  let(:board) { Board.new(
      [
        [[],[],[],[],[],[],[],[],[]],
        [[],[],[],[],[],[],[],[],[]],
        [[],[],[],[],[],[],[],[],[]],
        [[],[],[],[],[],[],[],[],[]],
        [[],[],[],[],[],[],[],[],[]],
        [[],[],[],[],[],[],[],[],[]],
        [[],[],[],[],[],[],[],[],[]],
        [[],[],[],[],[],[],[],[],[]],
        [[],[],[],[],[],[],[],[],[]]
      ]
    )
  }
  describe "#{new}" do
    it "instantiates a board" do
      expect(board).to be_an_instance_of(Board)
    end
    it "instantiates a board with 81 squares" do
      expect(board.grid.length).to eq(9)
      expect(board.grid.all?{ |row| row.length == 9}).to eq(true)
    end
  end
end
