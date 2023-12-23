void main() {
  assert(findPrice([7, 1, 5, 3, 6, 4]) == 5);
  assert(findPrice([7, 6, 4, 3, 1]) == 0);
}

int findPrice(List<int> prices) {
  int minPrice = prices[0];
  int minPriceIndice = 0;

  // find the min price
  for (var i = 0; i < prices.length; i++) {
    if (minPrice > prices[i]) {
      minPrice = prices[i];
      minPriceIndice = i;
    }
  }

  print('min: $minPrice');

  int highestPrices = prices[minPriceIndice];

  print('highestPrices: $highestPrices');

  // find the highest price from the last
  for (var i = minPriceIndice; i < prices.length; i++) {
    if (highestPrices < prices[i]) {
      highestPrices = prices[i];
    }
  }
  print('hightest $highestPrices');
  return highestPrices - minPrice;
}
