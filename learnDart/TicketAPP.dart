
class AutoIncrement {
  String? name;
  int? age;
  int? proirity;
  static int counter = 0;

  AutoIncrement(this.name, this.age, this.proirity) {
    counter++;
  }
  void display() {
    print(
        "your name is: $name \n your age is:  $age\n your class is: $proirity  \n the counter is:$counter ");
    print("\t");
    print("--------------------");
  }
 
}

void main() {
  int counter = 0;
  List<AutoIncrement> list = [];

  for (int i = 0; i < 5; i++) {
    var names = ["Tarek", "Mohammed", "Ali"];
    var ages = [20, 22, 21];
    var p = [1, 2, 3];
    list.add(AutoIncrement(names[counter], ages[counter], p[counter]));
    
    counter++;
    
    if (counter ==3) {
      counter = 0;
    }

  }
  
  for (int i = 0; i < 5; i++) {
      list[i].display();
    }

}
