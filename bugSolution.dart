```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on FormatException catch (e) {
    print('Invalid JSON format: $e');
    // Handle the invalid JSON, for example, display an error message to the user.
  } catch (e) {
    print('Error fetching data: $e');
  }
}
```