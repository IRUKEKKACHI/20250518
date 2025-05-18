import '../repositories/budget_repository.dart';

class SetBudgetUseCase {
  final BudgetRepository repository;

  SetBudgetUseCase(this.repository);

  void call(double value) => repository.setTarget(value);
}
