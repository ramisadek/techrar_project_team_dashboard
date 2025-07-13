import 'package:flutter/material.dart';

Future<void> showAddNewTaskBottomSheet(BuildContext context) async {
  final TextEditingController titleController = TextEditingController();
  DateTime? selectedDate;
  String? assignedTo;
  String status = 'To Do';
  final List<String> people = ['Rami', 'Ahmed', 'Ola', 'Reem'];
  final List<String> statuses = ['To Do', 'In Progress', 'Testing', 'Done'];

  await showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
    ),
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 24,
          bottom: MediaQuery.of(context).viewInsets.bottom + 24,
        ),
        child: StatefulBuilder(
          builder: (context, setState) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create New Task", style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 20),

                  TextField(
                    controller: titleController,
                    decoration: const InputDecoration(
                      labelText: "Task Title",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.title),
                    ),
                  ),
                  const SizedBox(height: 20),

                  InkWell(
                    onTap: () async {
                      final pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now().subtract(const Duration(days: 0)),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() => selectedDate = pickedDate);
                      }
                    },
                    child: InputDecorator(
                      decoration: const InputDecoration(
                        labelText: 'Due Date',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.calendar_today),
                      ),
                      child: Text(
                        selectedDate != null
                            ? "${selectedDate!.year}-${selectedDate!.month.toString().padLeft(2, '0')}-${selectedDate!.day.toString().padLeft(2, '0')}"
                            : "Select Date",
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Text("Assign To", style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: people.map((person) {
                      final isSelected = person == assignedTo;
                      return ChoiceChip(
                        label: Text(person),
                        selected: isSelected,
                        onSelected: (_) {
                          setState(() => assignedTo = person);
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 20),

                  DropdownButtonFormField<String>(
                    value: status,
                    decoration: const InputDecoration(
                      labelText: "Task Status",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.flag),
                    ),
                    items: statuses.map((s) {
                      return DropdownMenuItem(
                        value: s,
                        child: Text(s),
                      );
                    }).toList(),
                    onChanged: (val) {
                      if (val != null) setState(() => status = val);
                    },
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        //TODO:: Handle submit logic here
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.check),
                      label: const Text("Create Task"),
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
