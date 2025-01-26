```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final jsonData = jsonDecode(response.body);
      // Accessing a non-existent index in the list
      final data = jsonData[10]; //Error prone if the JSON array length is less than 11
      print(data);
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```