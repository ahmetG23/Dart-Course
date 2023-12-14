import 'dart:io';

void main(List<String> args) {
  do {
    stdout.writeln('Enter your age or type "exit" to quit: ');
    final input = stdin.readLineSync(); // input is a String?
    
    if(input == 'exit') {
      break;
    } else if((input?.length ?? 0) == 0) {
      stdout.writeln('No input, try again.');
      continue;
    }

    final age = int.tryParse(input!);

    if(age == null) {
      stdout.writeln('Invalid age, try again.');
    }
  } while(true);
}