import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/entities/budget.dart';
import '../domain/usecases/get_budget_progress_usecase.dart';
import '../domain/usecases/set_budget_usecase.dart';

class BudgetCubit extends Cubit<Budget> {
  final GetBudgetProgressUseCase _getBudget;
  final SetBudgetUseCase _setBudget;

  BudgetCubit(this._getBudget, this._setBudget) : super(_getBudget());

  void setTarget(double value) {
    _setBudget(value);
    emit(_getBudget as Budget);
  }

  void refresh() {
    emit(_getBudget as Budget);
  }
}
