import '../entities/budget.dart';

abstract class BudgetRepository {
  Budget getBudget();

  void setTarget(double value);

  void addIncome(double value);

  void addExpense(double amount);
}
