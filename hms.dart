import 'dart:io';

void main (){
  List<Map<String, dynamic>> patientData = [];
  
  print('***=== Hospital Management System ===***');
  print('Create Your Id');
  patientId(patientData);
  diseaseList();
}

 void patientId (List<Map<String, dynamic>> patientData){

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

 diseaseList (){
  print('Dr available for these treatment');
  print('Press 1 for: Outpatient Department (OPD) Services');
  print('Press 2 for: Piles Treatment (Hemorrhoids)');
  print('Press 3 for: Diabetes Treatment');
  print('Press 4 for: Respiratory Infections');
  print('Press 5 for: Cardiovascular Diseases');
 }

