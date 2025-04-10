import 'package:flutter/material.dart';

class Task15 extends StatefulWidget {
  const Task15({super.key});

  @override
  State<Task15> createState() => _Task15State();
}

class _Task15State extends State<Task15> {
  DateTime? _selectedDate;
  TimeOfDay? _selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime ?? TimeOfDay.now(),
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  String get _formattedDateTime {
    if (_selectedDate == null && _selectedTime == null) {
      return 'No date or time selected';
    }
    
    final dateStr = _selectedDate != null 
        ? '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}' 
        : 'No date selected';
    
    final timeStr = _selectedTime != null 
        ? '${_selectedTime!.hour}:${_selectedTime!.minute.toString().padLeft(2, '0')}' 
        : 'No time selected';
    
    return '$dateStr at $timeStr';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date & Time Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _formattedDateTime,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _selectDate(context),
                  child: const Text('Pick Date'),
                ),
                ElevatedButton(
                  onPressed: () => _selectTime(context),
                  child: const Text('Pick Time'),
                ),
              ],
            ),
            if (_selectedDate != null || _selectedTime != null)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _selectedDate = null;
                      _selectedTime = null;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('Clear Selection'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}