void main(List<String> args) {
  // type of info is Map<String, Object>
  const info = { 
    'name': 'John',
    'age': 30,
    'isMarried': true,
    'address': {
      'street': 'Main Street',
      'city': 'New York'
    },
  };
  
  for(final entry in info.entries) {
    print('${entry.key}: ${entry.value}');
  }
}