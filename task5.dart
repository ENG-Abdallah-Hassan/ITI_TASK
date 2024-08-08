// Task 5: Exception Handling in Class Methods

class CustomException implements Exception {
  final String message;

  CustomException({required this.message});

  @override
  String toString() => message;
}

class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  void deposit({required double amount}) {
    if (amount <= 0) {
      throw CustomException(message: 'Invalid Deposit');
    }
    _balance += amount;
  }

  void withdraw({required double amount}) {
    if (amount <= 0) {
      throw ArgumentError('Invalid Withdrawal');
    }
    if (amount > _balance) {
      throw CustomException(message: 'your Balance does not Enough');
    }
    _balance -= amount;
  }
}

void main() {
  BankAccount bankAccount = BankAccount();
  bankAccount.deposit(amount: 100);

  try {
    bankAccount.withdraw(amount: 50);
    print('Withdrawal successful. New balance: ${bankAccount.balance}');
  } catch (e) {
    print('Error: $e');
  }

  try {
    bankAccount.withdraw(amount: 200);
  } catch (e) {
    print('Error: $e');
  }
}
