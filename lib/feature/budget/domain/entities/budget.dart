class Budget {
  final double target;
  final double income;
  final double expense;

  Budget({required this.target, required this.income, required this.expense});

  double get progress => ((income - expense) / target.clamp(0, 1));
}
