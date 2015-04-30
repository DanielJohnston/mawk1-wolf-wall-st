def wolfy(sharePrices)
  bigDelta = []
  bigDelta = sharePrices.each_with_index.inject([0,0]) do |bestDays,(sellDay,buyDay)|
    localBestSellDay = buyDay + sharePrices[buyDay..-1].each_with_index.inject(0){|accum,(price, day)| price > sharePrices[accum] ? day : accum}
    if sharePrices[bestDays[1]]-sharePrices[bestDays[0]] < sharePrices[localBestSellDay]-sharePrices[buyDay]
      [buyDay,localBestSellDay]
    else
      bestDays
    end
  end
  "Buy on day #{bigDelta[0]} for #{sharePrices[bigDelta[0]]}, sell on day #{bigDelta[1]} for #{sharePrices[bigDelta[1]]}, #{sharePrices[bigDelta[1]] - sharePrices[bigDelta[0]]} profit"
end
