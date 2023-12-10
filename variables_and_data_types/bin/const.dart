void main(List<String> args) {
  const name = "Foo";
  print(name);
  //name = 'adsasd'; (cannot change the value of a const var.)
}

// to run the file with fswatch:
// fswatch -o bin/ | xargs -n1 -I{} sh -c 'clear; dart bin/example1.dart'