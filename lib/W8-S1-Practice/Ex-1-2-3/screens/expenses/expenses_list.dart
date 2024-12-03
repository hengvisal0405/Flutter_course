import 'package:flutter/material.dart';
import '../../models/expense.dart';
import 'expenses_item.dart';

class ExpensesList extends StatefulWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onDismiss});

  final List<Expense> expenses;
  final Function(int) onDismiss;

  @override
  State<ExpensesList> createState() => _ExpensesListState();
}

class _ExpensesListState extends State<ExpensesList> {
  late List<Expense> _expenses;
  late List<Expense> _removedExpenses;

  @override
  void initState() {
    super.initState();
    _expenses = widget.expenses;
    _removedExpenses = [];
  }

  void _removeExpense(int index) {
    final removedExpense = _expenses[index];
    _removedExpenses.add(removedExpense);
    setState(() {
      _expenses.removeAt(index);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${removedExpense.title} removed'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            _undoRemoveExpense(removedExpense);
          },
        ),
      ),
    );
  }

  void _undoRemoveExpense(Expense removedExpense) {
    setState(() {
      _expenses.add(removedExpense); // Add back the removed expense to the list
      _removedExpenses.remove(removedExpense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: _expenses.isEmpty
          ? Center(
              child: Text(
                'No expenses added yet!',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            )
          : ListView.builder(
              itemCount: _expenses.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(_expenses[index].title),
                  onDismissed: (direction) {
                    _removeExpense(index);
                  },
                  child: ExpenseItem(_expenses[index]),
                );
              },
            ),
    );
  }
}
