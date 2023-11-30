main(){

  String a = "racecar";
  String b = "hello";

  List<String> sum = a.split("");
  
 StringBuffer n = StringBuffer();
  
  for(int i = sum.length-1; i >= 0; i-- ){
    n.write(sum[i]);
  }

  if(n.toString() == a){
    print(true);
  } else {
    print(false);
  }


  List<int> unb = [1, 2, 5, 3, 9, 8];

  unb.sort((a,b)=> b-a);

  print("${unb[0]}${unb[1]}");


  int asd = 5;

  for(int i = 1; i <= asd; i++){
    print(i);
  }


}
