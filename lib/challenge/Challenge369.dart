main() {
  var player1 = Player("player1");
  var player2 = Player("player2");
  var player3 = Player("player3");
  var player4 = Player("player4");

  List<Player> players = [Player("player1"),Player("player2"),Player("player3"),Player("player4")];

  int currentPlayerindex = 0;

  int clap = 0;
  int rool = 0;
  int ahh = 0;

  for (int i = 1; i<=100; i++){
   
    if (i % 30 == 0){
      print("${players[currentPlayerindex].name} : ahh");
      ahh++;
    } else if(i % 10 == 0) {
      print("${players[currentPlayerindex].name} : rool");
      rool++;
    } else if(i % 3 == 0) {
      print("${players[currentPlayerindex].name} : clap");
      players[currentPlayerindex].clapUp();
      clap++;
    } else {
      print("${players[currentPlayerindex].name} $i");
    }

    currentPlayerindex++;

    if (currentPlayerindex == players.length){
      currentPlayerindex = 0;
    }

  }

  print("clap의 총 갯수 $clap");
  print("rool 총 갯수 $rool");
  print("ahh의 총 갯수 $ahh");
  int bestPlayer = 0;
  for (int i = 0; i< players.length; i++){
    print("${players[i].name} ${players[i].clap}");
  }
  for(int i = 0; i < players.length -1; i++){
    bestPlayer = players[i].clap < players[i+1].clap ?  i + 1 : bestPlayer;
  }

  print("가장 많은 clap을 출력한 플레이어 : ${players[bestPlayer].name}" );
}


class Player {
  int clap = 0;
  String name;
  Player(this.name);

  void clapUp(){
    clap++;
  }
}