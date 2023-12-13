void main(List<String> args) {
  String? name;

  void changeName () {
    name = 'John';
  }
  changeName();
  print(name?.length); // we have to use ?. bcs dart cannot 
                       // understand that name is not null.


  // if(name?.contains('bar')) (error bcs returning value is bool?)
  // instead we can use:
  if(name?.contains('bar') ?? false) {
    print('name contains bar');
  }
  // or:
  if(name?.contains('bar') == true) {
    print('name contains bar');
  } 
}