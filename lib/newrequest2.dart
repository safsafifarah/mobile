import 'package:flutter/material.dart';

class MaintenanceRequestForm2 extends StatefulWidget {
  @override
  _MaintenanceRequestFormState createState() => _MaintenanceRequestFormState();
}

class _MaintenanceRequestFormState extends State<MaintenanceRequestForm2> {
  // Controllers for form fields
  final TextEditingController titleController = TextEditingController();
  final TextEditingController operatorController = TextEditingController();
  final TextEditingController equipmentController = TextEditingController();
  final TextEditingController requestDateController = TextEditingController();
  final TextEditingController maintenanceTypeController = TextEditingController();
  final TextEditingController teamController = TextEditingController();
  final TextEditingController responsibleController = TextEditingController();
  final TextEditingController scheduledDateController = TextEditingController();
  final TextEditingController durationController = TextEditingController();
  final TextEditingController priorityController = TextEditingController();
  final TextEditingController companyController = TextEditingController();

  // Dropdown value for priority
  String dropdownValue = 'Low';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Maintenance Request'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: operatorController,
                decoration: InputDecoration(labelText: 'Operator'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: equipmentController,
                decoration: InputDecoration(labelText: 'Equipment'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: requestDateController,
                decoration: InputDecoration(labelText: 'Request Date'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: maintenanceTypeController,
                decoration: InputDecoration(labelText: 'Maintenance Type'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: teamController,
                decoration: InputDecoration(labelText: 'Team'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: responsibleController,
                decoration: InputDecoration(labelText: 'Responsible'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: scheduledDateController,
                decoration: InputDecoration(labelText: 'Scheduled Date'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: durationController,
                decoration: InputDecoration(labelText: 'Duration'),
              ),
              SizedBox(height: 20),
              DropdownButtonFormField<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: <String>['Low', 'Medium', 'High']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(labelText: 'Priority'),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: companyController,
                decoration: InputDecoration(labelText: 'Company'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle form submission
                  _submitForm();
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    // Access the values entered by the user
    String title = titleController.text;
    String operator = operatorController.text;
    String equipment = equipmentController.text;
    String requestDate = requestDateController.text;
    String maintenanceType = maintenanceTypeController.text;
    String team = teamController.text;
    String responsible = responsibleController.text;
    String scheduledDate = scheduledDateController.text;
    String duration = durationController.text;
    String priority = dropdownValue;
    String company = companyController.text;

    // Do something with the form values
    print('Title: $title');
    print('Operator: $operator');
    print('Equipment: $equipment');
    print('Request Date: $requestDate');
    print('Maintenance Type: $maintenanceType');
    print('Team: $team');
    print('Responsible: $responsible');
    print('Scheduled Date: $scheduledDate');
    print('Duration: $duration');
    print('Priority: $priority');
    print('Company: $company');
  }
}
