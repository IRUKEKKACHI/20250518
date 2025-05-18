import '../entities/budget.dart';
import '../repositories/budget_repository.dart';

class GetBudgetProgressUseCase {
  final BudgetRepository repository;

  GetBudgetProgressUseCase(this.repository);

  Budget call() => repository.getBudget();
}
