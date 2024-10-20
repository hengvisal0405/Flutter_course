class Account {
  int accountId;
  String accountOwner;
  double _balance;

  Account(this.accountId, this.accountOwner, this._balance);

  double get balance => _balance;

  String withdraw(double amount) {
    if (_balance - amount < 0) {
      return 'Insufficient balance!';
    }
    _balance  = _balance - amount;
    return 'Withdrawal successful!';
  }

  void credit(double amount) {
    _balance += amount;
  }

  @override
  String toString() {
    return 'Account ID: $accountId, Owner: $accountOwner, Balance: $_balance';
  }
}

class Bank {
  List<Account> accounts = [];
  Account? createAccount(int accountId, String accountOwner) {
    for (var account in accounts) {
      if (account.accountId == accountId) {
        print("Account ID already exists!");
        return null;
      }
    }

    Account newAccount = Account(accountId, accountOwner, 0.0);
    accounts.add(newAccount);
    return newAccount;
  }

  void displayAccounts() {
    for (var account in accounts) {
      print(account);
    }
  }
}

 
void main() {
  Bank bank = Bank();
  Account? account1 = bank.createAccount(01, "Heng Visal");
  Account? account2 = bank.createAccount(02, "Heng Valsy");
  Account? account3 = bank.createAccount(01, "Technith");
  if (account1 != null) account1.credit(1000.0);
  if (account2 != null) account2.credit(2000.0);
  if (account1 != null) {
    String withdrawalStatus = account1.withdraw(500.0);
    print(withdrawalStatus); 
  }
  if (account1 != null) {
    String withdrawalStatus = account1.withdraw(600.0);
    print(withdrawalStatus);  
  }
  bank.displayAccounts();
}

