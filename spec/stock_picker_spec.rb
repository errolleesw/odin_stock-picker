require './spec/spec_helper' # this is the path to the spec_help file
require_relative '../script/script.rb' # this is the path to the script to run.


RSpec.describe 'Stock Picker tests' do
  describe 'Stock Picker test' do
    it 'stock picker logic check' do
      expected_output = [1,4]
      expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq(expected_output)
    end
  end
end
