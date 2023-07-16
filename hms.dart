import 'dart:io';

void main() {
  List<Map<String, dynamic>> patientData = [];

  print('***=== Hospital Management System ===***');
  print('Create Your Id');
  patientId(patientData);
  diseaseList();
}

void patientId(List<Map<String, dynamic>> patientData) {
  String nameInput = '';
  int idInput = 0;
  int ageInput = 0;

  stdout.write('Enter your name: $nameInput');
  nameInput = (stdin.readLineSync()!);
  stdout.write('Enter your name: $idInput');
  idInput = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your name: $ageInput');
  ageInput = int.parse(stdin.readLineSync()!);

  Map<String, dynamic> patientinFo = {
    'name': nameInput,
    'id': idInput,
    'age': ageInput
  };
  patientData.add(patientinFo);
  print('Patient Data Add Successfully');
}

diseaseList() {
  String diseaseInput = '';

  print('Dr available for these treatment');
  print('Press 1 for: Outpatient Department (OPD) Services');
  print('Press 2 for: Piles Treatment (Hemorrhoids)');
  print('Press 3 for: Diabetes Treatment');
  print('Press 4 for: Respiratory Infections');
  print('Press 5 for: Cardiovascular Diseases');
  print('Press 6 for: Exit');
  diseaseInput = (stdin.readLineSync()!);

  List<String> drNamesOPD = [
    'Press 1: Dr Subhan\n',
    'Press 2: Dr Ayesha\n',
    'Press 3: Dr Shamshad\n',
    'Press 4: Dr Sohail\n',
    'Press 5: Dr Maryam'
  ];

  if (diseaseInput == '1') {
    print('Outpatient Department (OPD) Services');
    print('Available Drs. for OPD with there timings');
  }
}
