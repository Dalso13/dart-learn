import 'dart:io';
main(){
  Middle middle = Middle();

  middle.b1();
}
class Middle {
  void f1() {
    int a = 20;
    int b = 10;
    int r = 10;
    int n = 3;

    List<int> x = [25,20,70];
    List<int> y = [10,15,70];
    for(int i = 0; i < x.length; i++){
      if (((x[i] - a)*(x[i] - a))+ ((y[i] - b)*(y[i] - b)) >= r*r){
        print("silent");
      } else {
        print("noisy");
      }
    }
  }

  // 안품
  void f2(){
    String? name = stdin.readLineSync();
    if(name == null || name == ""){
      return;
    } else {
      List<String> a = name.split(" ");
      List<String> b = [];

    }
  }

  void f3() {
    String? name = stdin.readLineSync();
    if(name == null || name == ""){
      return;
    } else {
      List<String> num = name.split("+");
      int a = 0;
      for(int i = 0; i < num.length; i++){
        String ten = num[i].replaceAll("<", "2");
        String one = ten.replaceAll("/", "1").replaceAll("2", "");
        ten = ten.replaceAll("/", "");
        a += ten.length * 10 + one.length;
      }
      print(a);
    }
  }

  void f4() {
    List<int> a = [3,2];
    List<List<int>> b = [[128,127],[127,128],[128,127]];

    for(int i = 0; i < b.length; i++){
      StringBuffer m = StringBuffer();
      for(int j =0; j < a[1]; j++){
          if(b[i][j] > 127){
            m.write("1 ");
          } else {
            m.write("0 ");
          }
      }
      print((m.toString()).substring(0,m.toString().length-1));
    }
  }

  void b1() {
    String a = "192.168.0.1";
    List<String> arr = a.split(".");

    if(arr.length != 4){
      print("False");
    } else {
      bool b = true;
      for(int i = 0; i < arr.length; i++){
        if(int.parse(arr[i]) > 255 || int.parse(arr[i]) < 0){
          b = false;
        }
      }
      print(b ? "True" : "False");
    }
  }
}