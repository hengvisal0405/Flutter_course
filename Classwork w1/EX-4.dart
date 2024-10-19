void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple','hi'];

  // Your code
  String pizza;
  double totalPrice = 0.0;
  for( pizza in order ){
    if(pizzaPrices.containsKey(pizza))
    {
      totalPrice += pizzaPrices[pizza]!;
    }
    else
    {
      print("$pizza is not in menu");
    }
  }
  print("Total price  = $totalPrice dollars");
}

