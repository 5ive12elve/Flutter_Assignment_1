class Animal {
  String name;
  String species;
  int legCount;
  bool canFly;
  bool canSwim;
  bool canWalk;
  String sound;

  Animal({
    required this.name,
    required this.species,
    required this.legCount,
    required this.canFly,
    required this.canSwim,
    required this.canWalk,
    required this.sound,
  });

  void displayInfo() {
    print("Name: $name");
    print("Species: $species");
    print("Leg Count: $legCount");
    print("Can Fly: ${canFly ? 'Yes' : 'No'}");
    print("Can Swim: ${canSwim ? 'Yes' : 'No'}");
    print("Can Walk: ${canWalk ? 'Yes' : 'No'}");
    print("Sound: $sound");
    print("--------------");
  }
}

void main() {
  // Creating animal objects
  Animal dog = Animal(
    name: "Buddy",
    species: "Dog",
    legCount: 4,
    canFly: false,
    canSwim: true,
    canWalk: true,
    sound: "Woof!",
  );

  Animal bird = Animal(
    name: "Tweety",
    species: "Bird",
    legCount: 2,
    canFly: true,
    canSwim: false,
    canWalk: true,
    sound: "Chirp chirp!",
  );

  Animal fish = Animal(
    name: "Nemo",
    species: "Fish",
    legCount: 0,
    canFly: false,
    canSwim: true,
    canWalk: false,
    sound: "Blub blub!",
  );

  // Displaying information about each animal
  print("Welcome to the Innovative Zoo!");
  print("------------------------------");
  dog.displayInfo();
  bird.displayInfo();
  fish.displayInfo();
}
