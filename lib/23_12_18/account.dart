class Account {
  String owner;
  int balance;

  Account.name(this.owner, this.balance);

  void transfer(Account dest, int amount) {
    if (balance < amount) {
      throw Exception('잔액 부족');
    }
    balance -= amount;
    dest.balance += amount;
  }
}