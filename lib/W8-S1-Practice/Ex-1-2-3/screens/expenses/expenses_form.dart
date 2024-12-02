import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import '../../models/expense.dart';
class ExpenseForm extends StatefulWidget {
  final Function(String title, double amount, String date, Category category)onSaveExpense;
  const ExpenseForm({super.key, required this.onSaveExpense});
  @override
  State<ExpenseForm> createState() => _ExpenseFormState();
}
class _ExpenseFormState extends State<ExpenseForm> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  String? _selectedDate;
  Category? _selectedCategory;

  void _onCategoryChanged(Category? newValue) {
    setState(() {
      _selectedCategory = newValue;
    });
  }
  Future<void> selecteDate() async {
    DateTime? selected = await showDatePicker(
      context: context,
      firstDate: DateTime(2010),
      lastDate: DateTime(2029),
      initialDate: _selectedDate == null
          ? DateTime.now()
          : DateTime.parse(_selectedDate!),
    );
    setState(() {
      if (selected != null) {
        _selectedDate = DateFormat('yyyy-MM-dd').format(selected);
      }
    });
  }
  void _onCloseShowModal() {
    Navigator.pop(context);
  }
  void _saveExpense() {
    final title = _titleController.text;
    final amount = _amountController.text;
    final category = _selectedCategory;
    if (title.isEmpty || amount.isEmpty || _selectedDate == null || category == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please fill all fields!')),
      );
      Navigator.pop(context);
      return;
    }
    widget.onSaveExpense(title, double.tryParse(amount) ?? 0, _selectedDate!, category);
    Navigator.pop(context);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(
              labelText: 'Title',
              suffixIcon: IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _titleController.clear();
                },
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  controller: _amountController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    suffixIcon: IconButton(
                      onPressed: _amountController.clear,
                      icon: const Icon(Icons.clear),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: IconButton(
                  icon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.date_range),
                      const SizedBox(width: 8),
                      Text(
                        _selectedDate == null ? 'No date selected' : _selectedDate!,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  onPressed: selecteDate,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 1,
                child: DropdownButton<Category>(
                  value: _selectedCategory,
                  hint: const Text('Category'),
                  isExpanded: true,
                  items: Category.values.map((category) {
                    return DropdownMenuItem<Category>(
                      value: category,
                      child: Row(
                        children: [
                          const SizedBox(width: 8),
                          Text(category.name),
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: _onCategoryChanged,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: _onCloseShowModal,
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(30, 30),
                    backgroundColor: Colors.transparent,
                    side: BorderSide.none,
                    shadowColor: Colors.transparent,
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                    color: Color(0xffd7bde2),
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  onPressed: _saveExpense,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffd2b4de),
                    minimumSize: const Size(100, 50),
                  ),
                  child: const Text(
                    'Save Expense',
                    style: TextStyle(
                      color: Color(0xffa569bd),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}

