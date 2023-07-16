
main()
{
  // 1. How can I declare a variable in Dart?
  print("How can I declare a variable in Dart");
  var variable = 8;
  print('var variable = $variable');
  // 2. Can I declare a variable that can be null?
  var null_variable;
  print("2. Can I declare a variable that can be null?");
  print('var null_variable;');
  print('null variable = $null_variable');
  // 3. How can I convert a variable from one type to another in Dart?
  int unconverted_var = 9000;
  var converted_var = unconverted_var.toString();
  var type = converted_var.runtimeType;
  print('3. How can I convert a variable from one type to another in Dart?');
  print('int unconverted_var = $unconverted_var;');
  print('var converted_var = $converted_var; // converted var is of type $type');
  // 4. Create program that contains a list of users data?
  List <Map<String,dynamic>> list_of_users=
  [
    {"Name":"Essely",
      "ID": 19190000
    },
    {"Name":"Michael",
      "ID": 19190001
    },
    {"Name":"Suzan",
      "ID": 19190002
    },
  ];
  print('4. Create program that contains a list of users data?');
  print(' List <Map<String,dynamic>> list_of_users= [//users_data]');
  list_of_users.forEach((element) { 
    print("Name: ${element['Name']}");
    print('ID: ${element['ID']}');
  });






}