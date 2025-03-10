import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);
    String userId = user['id'];

    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData);

    double total = 0.0;
    for (String product in orders) {
      String priceData = await fetchProductPrice(product);
      double price = jsonDecode(priceData);
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}