import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import for DateFormat
import 'package:your_project_name/W8-S1-Practice/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  ExpenseItem(this.expense, {super.key});

  final Expense expense;
  final formatter = DateFormat.yMd(); // Formatter for date (MM/DD/YYYY or similar format)

  String get formattedDate =>
      formatter.format(expense.date); // Format the date to a readable string

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Row(
          children: [
            // Display the title and amount of the expense
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  expense.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${expense.amount.toStringAsFixed(2)}', // Show amount formatted as currency
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
            const Spacer(), // Add space between columns
            Row(
              children: [
                // Display the category icon
                Icon(expense.category.icon),
                const SizedBox(width: 8),
                // Display the formatted date
                Text(formattedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
