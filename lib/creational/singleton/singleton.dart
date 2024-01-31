class Singleton {
  //Instance of class

  static Singleton? _instance;

  //Privatized Constructor

  Singleton._internal() {
    print("Instance Created");
  }

  //Function to Create Atleast 1 instance of the class

  static Singleton getInstance() {
    _instance ??= Singleton._internal();
    return _instance!;
  }
}

// //This will give error now no instances of the class can be created

// Singleton singleton = Singleton();


