import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> user = jsonDecode(userData);
    String userId = user['id'];

    String ordersJson = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersJson);

    double total = 0;
    for (var item in orders) {
      String priceJson = await fetchProductPrice(item);
      double price = jsonDecode(priceJson);
      total += price;
    }

    return total;
  } catch (error) {
    return -1;
  }
}
