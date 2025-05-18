import '../../domain/entities/budget.dart';
import '../../domain/repositories/budget_repository.dart';

class BudgetRepositoryImpl implements BudgetRepository {
  Budget _budget = Budget(target: 1000, income: 0, expense: 0);

  @override
  Budget getBudget() => _budget;

  @override
  void setTarget(double value) {
    _budget =
        Budget(target: value, income: _budget.income, expense: _budget.expense);
  }

  @override
  void addIncome(double amount) {
    _budget = Budget(
        target: _budget.target,
        income: _budget.income + amount,
        expense: _budget.expense);
  }

  @override
  void addExpense(double amount) {
    _budget = Budget(
        target: _budget.target,
        income: _budget.income,
        expense: _budget.expense + amount);
  }
}
