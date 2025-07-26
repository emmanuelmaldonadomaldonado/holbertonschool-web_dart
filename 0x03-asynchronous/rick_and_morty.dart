import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    var url = Uri.parse('https://rickandmortyapi.com/api/character');
    var response = await http.get(url);
    var data = jsonDecode(response.body);
    List characters = data['results'];

    for (var character in characters) {
      print(character['name']);
    }
  } catch (error) {
    print('error caught: $error');
  }
}
