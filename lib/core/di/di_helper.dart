import 'package:get_it/get_it.dart';
import 'package:p_20250518/core/router/app_router.dart';
import 'package:p_20250518/feature/budget/data/repositories/budget_repository_impl.dart';
import 'package:p_20250518/feature/budget/domain/repositories/budget_repository.dart';
import 'package:p_20250518/feature/budget/domain/usecases/get_budget_progress_usecase.dart';
import 'package:p_20250518/feature/budget/domain/usecases/set_budget_usecase.dart';
import 'package:p_20250518/feature/budget/presentation/budget_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Router
  getIt.registerSingleton<AppRouter>(AppRouter());

  // Repository
  getIt.registerLazySingleton<BudgetRepository>(() => BudgetRepositoryImpl());

  // UseCases
  getIt.registerLazySingleton(() => GetBudgetProgressUseCase(getIt()));
  getIt.registerLazySingleton(() => SetBudgetUseCase(getIt()));

  //
  getIt.registerFactory(() => BudgetCubit(getIt(), getIt()));
}
