import 'dart:io';
void printlistnames(List <String> list){
  for(var i =0; i < list.length; i++){
    print("\nName (${i+1}): ${list[i]}");
  }
}
class Tuple {
  final List<String> items;
  Tuple(this.items);

  factory Tuple.fromList(List<String> list) {
    return Tuple(List.unmodifiable(list));
  }

  @override
  String toString(){
    return "(${items.join(', ')})";
  }
}
main() {

  print("Assignment 2");
  print("\n Question 1");
  List<String> Names = [];
  String user_input;
  while(true){
    print("Enter a name: ");
    user_input = stdin.readLineSync()!;
    if(user_input=="0") {
      break;
    }
    else {
      Names.add(user_input);
    }
  }

  printlistnames(Names);

  print("\n Question 2");
  print("Input comma seperated numbers: ");
  user_input = stdin.readLineSync()!;
  List<String> seperated_numbers = user_input.split(','). map((items) => items.trim()).toList();

  Tuple tuple = Tuple.fromList(seperated_numbers);
  print("List: $seperated_numbers");
  print("Map: $tuple");

}
