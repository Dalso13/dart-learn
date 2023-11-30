main() {
  Hard hard = Hard();
  hard.b2();
}

class Hard {

  void b2 () {
    List<int> a = [7,6,1];
    List<int> b = [3,4];
    List<String> map = ["D","5"];

    switch(map[0]){
      case "R" :  b[0] = b[0] + int.parse(map[1]);
        break;
      case "L" :  b[0] = b[0] - int.parse(map[1]);
        break;
      case "U" :  b[1] = b[1] + int.parse(map[1]);
        break;
      case "D" :  b[1] = b[1] - int.parse(map[1]);
        break;
    }

    if(b[0] > a[0]){
      b[0] = b[0] - a[0];
    }  else if (b[0] < 0){
      b[0] = a[0] + b[0];
    }
    if (b[1] > a[1]) {
      b[1] =  b[1] - a[1];
    } else if (b[1] < 0) {
      b[1] = a[1] + b[1];
    }

    print(b.toString().substring(1,b.toString().length-1).replaceAll(",", ""));

  }




}