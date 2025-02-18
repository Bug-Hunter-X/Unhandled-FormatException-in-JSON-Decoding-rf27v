```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the JSON data
      final jsonData = jsonDecode(response.body);
      // Handle the data
    } else {
      // Handle error (e.g., throw an exception)
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle network or other errors
    print('Error fetching data: $e');
    // Consider rethrowing the exception or handling it appropriately based on your app's logic.
  }
}
```