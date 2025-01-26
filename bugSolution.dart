```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      // Check if jsonData is a list and if it has at least 11 elements
      if (jsonData is List && jsonData.length >= 11) {
        final data = jsonData[10];
        print(data);
      } else {
        print('JSON array is too short or not a list');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```