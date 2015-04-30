require 'wolfy'

describe 'wolfy' do
it 'if given an array of numbers returns the array with index' do
  expect(wolfy([2, 4])).to eq 'Buy on day 0 for 2, sell on day 1 for 4, 2 profit'
end
it 'if given an array with prices 3, 5 returns correct days and profit' do
  expect(wolfy([3, 5])).to eq 'Buy on day 0 for 3, sell on day 1 for 5, 2 profit'
end
it 'if given an array with prices 3, 1, 5 returns 1 and 5' do
  expect(wolfy([3, 1, 5])).to eq 'Buy on day 1 for 1, sell on day 2 for 5, 4 profit'
end
it 'if given prices 5,6,3,5,2,7,1,7 returns 1 and 7' do
  expect(wolfy([5,6,3,5,2,7,1,7])).to eq 'Buy on day 6 for 1, sell on day 7 for 7, 6 profit'
end
end
