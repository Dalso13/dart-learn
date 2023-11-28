main() {
  var player1 = Player("player1");
  var player2 = Player("player2");
  var player3 = Player("player3");
  var player4 = Player("player4");

  int currentPlayerindex = 1;

  int clap = 0;
  int rool = 0;
  int ahh = 0;

  for (int i = 1; i<=100; i++){
    late var player;
    switch(currentPlayerindex){
      case 1 : player = player1;
        break;
      case 2 : player = player2;
        break;
      case 3 : player = player3;
        break;
      case 4 : player = player4;
        break;
    }
   
    if (i % 30 == 0){
      print("${player.name} : ahh");
      ahh++;
    } else if(i % 10 == 0) {
      print("${player.name} : rool");
      rool++;
    } else if(i % 3 == 0) {
      print("${player.name} : clap");
      player.clapUp();
      clap++;
    } else {
      print("${player.name} $i");
    }


    if (currentPlayerindex == 4){
      currentPlayerindex = 0;
    }

    currentPlayerindex++;
  }

  print("clap의 총 갯수 $clap");
  print("rool 총 갯수 $rool");
  print("ahh의 총 갯수 $ahh");
  print("player1 ${player1.clap}");
  print("player2 ${player2.clap}");
  print("player3 ${player3.clap}");
  print("player4 ${player4.clap}");

  var bestPlayer = player1;

  for(int i = 2; i < 5; i++){
    late var chlPlayer;
    switch(i){
      case 2 : chlPlayer = player2;
        break;
      case 3 : chlPlayer = player3;
          break;
      case 4 : chlPlayer = player4;
          break;
    }

    bestPlayer.clap < chlPlayer.clap ? bestPlayer = chlPlayer : false;
  }

  print("가장 많은 clap을 출력한 플레이어 : ${bestPlayer.name}" );
}

// 팀원들과 공유를 위해 직관적으로 작성하느라 메모리 낭비 및 코드가 더러워진점이 많습니다

class Player {
  int clap = 0;
  String name;
  Player(this.name);

  void clapUp(){
    clap++;
  }
}