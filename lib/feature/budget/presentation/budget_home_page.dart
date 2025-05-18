import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../domain/entities/budget.dart';
import 'budget_cubit.dart';

class BudgetHomePage extends StatelessWidget {
  const BudgetHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Budget App')),
      body: BlocBuilder<BudgetCubit, Budget>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text('Target: \$${state.target.toStringAsFixed(2)}'),
              Text('Income: \$${state.income.toStringAsFixed(2)}'),
              Text('Expense: \$${state.expense.toStringAsFixed(2)}'),
              LinearProgressIndicator(value: state.progress),
              ElevatedButton(
                onPressed: () {
                  context.read<BudgetCubit>().setTarget(2000);
                },
                child: const Text('Set Target to \$2000'),
              )
            ],
          ),
        );
      }),
    );
  }
}
