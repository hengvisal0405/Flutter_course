import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:your_project_name/W8-S1-Practice/EX-4/models/converter.dart';

class DeviceConverter extends StatefulWidget {
  const DeviceConverter({super.key});

  @override
  State<DeviceConverter> createState() => _DeviceConverterState();
}

class _DeviceConverterState extends State<DeviceConverter> {
  final _amountController = TextEditingController();

  Device? _selectedDevice;

  final BoxDecoration textDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
  );

  @override
  void initState() {
    super.initState();
  }

  String converter() {
    if (_selectedDevice != null) {
      final amountText = _amountController.text;
      final amount = double.tryParse(amountText) ?? 0;
      final convertedAmount = amount * _selectedDevice!.rate;
      return '${convertedAmount.toStringAsFixed(2)} ${_selectedDevice!.name}';
    } else {
      return 'Please select a valid device or input';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(
            Icons.money,
            size: 60,
            color: Colors.white,
          ),
          const Center(
            child: Text(
              "Converter",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
          const SizedBox(height: 50),
          const Text("Amount in dollars:"),
          const SizedBox(height: 10),
          TextField(
              controller: _amountController,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  prefix: const Text('\$ '),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.white, width: 1.0),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter an amount in dollar',
                  hintStyle: const TextStyle(color: Colors.white)),
              style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          const Text("Device:"),
          Container(
            child: DropdownButton<Device>(
              value: _selectedDevice,
              hint: const Text("Please select the device   "),
              items: Device.values.map((device) {
                return DropdownMenuItem<Device>(
                  value: device,
                  child: Text(device.name), // Display the last part of the name
                );
              }).toList(),
              onChanged: (Device? newValue) {
                setState(() {
                  _selectedDevice = newValue;
                });
              },
            ),
          ),
          const SizedBox(height: 30),
          const Text("Amount in selected device:"),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: textDecoration,
            child: Text(converter()),
          ),
        ],
      )),
    );
  }
}
