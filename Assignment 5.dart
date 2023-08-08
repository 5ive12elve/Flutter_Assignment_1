import 'dart:io';
import 'dart:math';
// Q1.Vehicle Hierarchy:
class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void displayInfo() {
    print("Brand: $brand, Model: $model, Year: $year");
  }
}

class Car extends Vehicle {
  int numDoors;

  Car(String brand, String model, int year, this.numDoors)
      : super(brand, model, year);

  void honkHorn() {
    print("Car horn honking!");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Number of doors: $numDoors");
  }
}

class Motorcycle extends Vehicle {
  bool hasSidecar;

  Motorcycle(String brand, String model, int year, this.hasSidecar)
      : super(brand, model, year);

  void revEngine() {
    print("Motorcycle engine revving!");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Has sidecar: ${hasSidecar ? 'Yes' : 'No'}");
  }
}

class Truck extends Vehicle {
  double loadCapacity;

  Truck(String brand, String model, int year, this.loadCapacity)
      : super(brand, model, year);

  void loadCargo() {
    print("Truck loading cargo...");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Load capacity: $loadCapacity tons");
  }
}
// Q2.Employee Hierarchy
class Employee {
  String name;
  int age;
  double salary;

  Employee(this.name, this.age, this.salary);

  void displayInfo() {
    print("Name: $name, Age: $age, Salary: \$${salary.toStringAsFixed(2)}");
  }
}

class Manager extends Employee {
  String department;

  Manager(String name, int age, double salary, this.department)
      : super(name, age, salary);

  void manageTeam() {
    print("Manager is overseeing the $department department.");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Department: $department");
  }
}

class Developer extends Employee {
  List<String> programmingLanguages;

  Developer(String name, int age, double salary, this.programmingLanguages)
      : super(name, age, salary);

  void code() {
    print("Developer is coding...");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Programming Languages: ${programmingLanguages.join(', ')}");
  }
}

class Designer extends Employee {
  String designTool;

  Designer(String name, int age, double salary, this.designTool)
      : super(name, age, salary);

  void createDesign() {
    print("Designer is creating a new design using $designTool.");
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print("Design Tool: $designTool");
  }
}

// Q3.Bank Account Abstraction
abstract class BankAccount {
  String accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: \$${amount.toStringAsFixed(2)}");
  }

  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Insufficient balance!");
    }
  }

  void displayInfo() {
    print("Account Number: $accountNumber, Balance: \$${balance.toStringAsFixed(2)}");
  }

  void calculateInterest();
}

class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void calculateInterest() {
    double interest = balance * (interestRate / 100);
    balance += interest;
    print("Interest added: \$${interest.toStringAsFixed(2)}");
  }
}

class CheckingAccount extends BankAccount {
  double overdraftLimit;

  CheckingAccount(String accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance + overdraftLimit >= amount) {
      balance -= amount;
      print("Withdrawn: \$${amount.toStringAsFixed(2)}");
    } else {
      print("Insufficient funds with overdraft protection!");
    }
  }

  @override
  void calculateInterest() {
    // Checking accounts typically don't earn interest
    print("Checking accounts do not earn interest.");
  }
}

// Q4. Geometric Shapes

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * pi * radius;
  }
}

class Triangle extends Shape {
  double sideA;
  double sideB;
  double sideC;

  Triangle(this.sideA, this.sideB, this.sideC);

  @override
  double calculateArea() {
    double s = (sideA + sideB + sideC) / 2;
    return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC));
  }

  @override
  double calculatePerimeter() {
    return sideA + sideB + sideC;
  }
}

//Q5. Database connection

abstract class DatabaseConnection {
  void connect();
  void disconnect();
  void query(String sql);
  void execute(String sql);
}

class MySQLConnection implements DatabaseConnection {
  @override
  void connect() {
    print("Connected to MySQL database.");
  }

  @override
  void disconnect() {
    print("Disconnected from MySQL database.");
  }

  @override
  void query(String sql) {
    print("Executing MySQL query: $sql");
  }

  @override
  void execute(String sql) {
    print("Executing MySQL statement: $sql");
  }
}

class PostgreSQLConnection implements DatabaseConnection {
  @override
  void connect() {
    print("Connected to PostgreSQL database.");
  }

  @override
  void disconnect() {
    print("Disconnected from PostgreSQL database.");
  }

  @override
  void query(String sql) {
    print("Executing PostgreSQL query: $sql");
  }

  @override
  void execute(String sql) {
    print("Executing PostgreSQL statement: $sql");
  }
}

// Q6. Payment Gateway
abstract class PaymentGateway {
  void initiatePayment(double amount);
  void processPayment();
  void refundPayment();
}

class PayPalGateway extends PaymentGateway {
  @override
  void initiatePayment(double amount) {
    print("Initiating PayPal payment of amount: \$${amount.toStringAsFixed(2)}");
  }

  @override
  void processPayment() {
    print("Processing PayPal payment...");
  }

  @override
  void refundPayment() {
    print("Refunding PayPal payment...");
  }
}


class StripeGateway extends PaymentGateway {
  @override
  void initiatePayment(double amount) {
    print("Initiating Stripe payment of amount: \$${amount.toStringAsFixed(2)}");
  }

  @override
  void processPayment() {
    print("Processing Stripe payment...");
  }

  @override
  void refundPayment() {
    print("Refunding Stripe payment...");
  }
}

//Q7. Logging Service
abstract class Logger {
  void logInfo(String message);
  void logWarning(String message);
  void logError(String message);
}

class ConsoleLogger extends Logger {
  @override
  void logInfo(String message) {
    print("INFO: $message");
  }

  @override
  void logWarning(String message) {
    print("WARNING: $message");
  }

  @override
  void logError(String message) {
    print("ERROR: $message");
  }
}

class FileLogger extends Logger {
  String _filePath;

  FileLogger(this._filePath);

  @override
  void logInfo(String message) {
    _writeToFile("INFO: $message");
  }

  @override
  void logWarning(String message) {
    _writeToFile("WARNING: $message");
  }

  @override
  void logError(String message) {
    _writeToFile("ERROR: $message");
  }

  void _writeToFile(String message) {
    // Actual file writing logic here
    print("Writing to file '$_filePath': $message");
  }
}

// Q8. Role-based access control
enum AccessLevel { Guest, User, Moderator, Admin }

class User {
  String name;
  AccessLevel accessLevel;

  User(this.name, this.accessLevel);

  void performAction() {
    switch (accessLevel) {
      case AccessLevel.Guest:
        print("$name is a guest and can view content.");
        break;
      case AccessLevel.User:
        print("$name is a user and can post comments.");
        break;
      case AccessLevel.Moderator:
        print("$name is a moderator and can moderate content.");
        break;
      case AccessLevel.Admin:
        print("$name is an admin and has full control.");
        break;
    }
  }
}

//Q9.Auditable Mixin:
mixin Auditable {
  void recordCreate() {
    print("Record created at ${DateTime.now()}");
  }

  void recordUpdate() {
    print("Record updated at ${DateTime.now()}");
  }

  void recordDelete() {
    print("Record deleted at ${DateTime.now()}");
  }
}

class Product with Auditable {
  String name;
  double price;

  Product(this.name, this.price);
}
// Had to change the class name from User to Individual user as there's already a defined class in Q8. called User
class IndividualUser with Auditable {
  String username;

  IndividualUser(this.username);
}

void main() {
  
  print("Dart Task / Eng. Zeinab / Online 54\n");
  print("1-Vehicle Hierarchy:");
  // Q1.
  Car car = Car("Toyota", "Camry", 2022, 4);
  Motorcycle motorcycle = Motorcycle("Harley-Davidson", "Sportster", 2023, false);
  Truck truck = Truck("Ford", "F-150", 2021, 2.5);

  car.displayInfo();
  car.honkHorn();

  motorcycle.displayInfo();
  motorcycle.revEngine();

  truck.displayInfo();
  truck.loadCargo();
  print("\n");
  print("2-Employee Hierarchy:");
  // Q2.
  Manager manager = Manager("Zerinab Mohamed", 40, 80000, "Marketing");
  Developer developer = Developer("Josephine Osama", 28, 65000, ["Java", "Python"]);
  Designer designer = Designer("Ahmed Esmat", 35, 70000, "Adobe Illustrator");

  manager.displayInfo();
  manager.manageTeam();

  developer.displayInfo();
  developer.code();

  designer.displayInfo();
  designer.createDesign();
  print("\n");
  print("3-Bank Account Abstraction:");
  // Q3.
  SavingsAccount savings = SavingsAccount("SA123456", 1000, 3.5);
  CheckingAccount checking = CheckingAccount("CA987654", 500, 200);

  savings.displayInfo();
  savings.deposit(500);
  savings.calculateInterest();
  savings.displayInfo();
  savings.withdraw(200);
  savings.displayInfo();

  print("---------------");

  checking.displayInfo();
  checking.deposit(100);
  checking.displayInfo();
  checking.withdraw(700);
  checking.displayInfo();
  print("\n");
  print("4-Geometric Shapes:");
  //Q4.
  Rectangle rectangle = Rectangle(5, 8);
  Circle circle = Circle(3);
  Triangle triangle = Triangle(5, 7, 9);

  print("Rectangle - Area: ${rectangle.calculateArea()}, Perimeter: ${rectangle.calculatePerimeter()}");
  print("Circle - Area: ${circle.calculateArea()}, Perimeter: ${circle.calculatePerimeter()}");
  print("Triangle - Area: ${triangle.calculateArea()}, Perimeter: ${triangle.calculatePerimeter()}");
  print("\n");
  print("5-Database Connection:");
  //Q5.
  DatabaseConnection mySQL = MySQLConnection();
  DatabaseConnection postgreSQL = PostgreSQLConnection();

  mySQL.connect();
  mySQL.query("SELECT * FROM users");
  mySQL.execute("INSERT INTO products (name, price) VALUES ('Widget', 10.99)");
  mySQL.disconnect();

  print("---------------");

  postgreSQL.connect();
  postgreSQL.query("SELECT * FROM employees");
  postgreSQL.execute("UPDATE inventory SET quantity = quantity - 1 WHERE item_id = 123");
  postgreSQL.disconnect();
  print("\n");
  print("6-Payment Gateway:");
  //Q6.
  PaymentGateway paypal = PayPalGateway();
  PaymentGateway stripe = StripeGateway();

  double amount = 100.00;

  paypal.initiatePayment(amount);
  paypal.processPayment();
  paypal.refundPayment();

  print("---------------");

  stripe.initiatePayment(amount);
  stripe.processPayment();
  stripe.refundPayment();
  print("\n");
  print("7-Logging Service:");
  //Q7.
  Logger consoleLogger = ConsoleLogger();
  Logger fileLogger = FileLogger("log.txt");

  consoleLogger.logInfo("This is an information message.");
  consoleLogger.logWarning("This is a warning message.");
  consoleLogger.logError("This is an error message.");

  print("---------------");

  fileLogger.logInfo("This is an information message.");
  fileLogger.logWarning("This is a warning message.");
  fileLogger.logError("This is an error message.");
  print("\n");
  print("8-Role-based Access Control:");
  // Q8.
  User guestUser = User("Guest123", AccessLevel.Guest);
  User regularUser = User("Mohamed21", AccessLevel.User);
  User moderatorUser = User("Mario30", AccessLevel.Moderator);
  User adminUser = User("Admin007", AccessLevel.Admin);

  guestUser.performAction();
  regularUser.performAction();
  moderatorUser.performAction();
  adminUser.performAction();
  print("\n");
  print("9-Auditable Mixin:");
  // Q9.
  Product product = Product("Widget", 9.99);
  IndividualUser individualUser = IndividualUser("mohamed22");

  product.recordCreate();
  product.recordUpdate();
  product.recordDelete();

  individualUser.recordCreate();
  individualUser.recordUpdate();
  individualUser.recordDelete();
  print("\n");
  print("10. True & False:\n");
  var TF_answers = ['False','False','True','False','True','False','False'];
  for (var i = 0; i<TF_answers.length; i++){
    print("$i. ${TF_answers[i]}");
  }
  print("\n");
  print("11. What do you know about:\n");
  Map<String, String> dartConcepts = {
    "abstract function":
    "An abstract function is a function declared in an abstract class that doesn't have a body.",
    "different classes in Dart":
    "As we learned in Amit a class is like a container or considered a custom data type which introduces the idea of inheritence and is crucial to the OOP concept",
    "constructors":
    "A constructor is a special method used for initializing objects of a class, types of constructors could be default constructors and named constructors."
  };

  print(dartConcepts["abstract function"]);
  print(dartConcepts["different classes in Dart"]);
  print(dartConcepts["constructors"]);

}
