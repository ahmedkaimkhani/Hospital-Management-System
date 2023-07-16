import 'dart:io';

void main (){
  List<Map<String, dynamic>> patientData = [];
  
  print('***=== Hospital Management System ===***');
  print('Create Your Id');
  patientId(name: '', id: 0, age: 0);
}

 patientId ({required String name, required int id, required int age}){

  String nameInput = '';
  int idInput = 0;
  int ageInput = 0;

  stdout.write('Enter your name: $nameInput');
  nameInput = (stdin.readLineSync()!);
  stdout.write('Enter your name: $idInput');
  idInput = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your name: $ageInput');
  ageInput = int.parse(stdin.readLineSync()!);
 }

