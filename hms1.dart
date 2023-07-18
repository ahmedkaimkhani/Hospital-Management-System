
import 'dart:io';

List<Map<String, dynamic>> patientList = [];
void main (){
 pageOne();
}

// main screen funcction
pageOne (){
  bool condition = true;

  while(condition == true){
    print('');
    print('***=== Hospital Management System ===***');
    print('');
    print('Press 1: Add Patient');
    print('Press 2: View Patients Records');
    print('Press 3: Search Patients');
    print('Press 4: Appoinments Schedule');
    print('Press 5: View Appoinments Schedule');
    print('Press 6: Exit Program');

    print('');
    stdout.write('Enter you option: ');
    int option = int.parse(stdin.readLineSync()!);
    print('');
    // condition = false;
    // press functions
    if(option == 1){
      addPatient();
    }
  }
}

// Add Patients Function
 addPatient (){

  stdout.write('Enter your Id: ');
  int id = int.parse(stdin.readLineSync()!);

  if (patientExist(id)){
    print('Patient with Id $id\nAlready exist please Enter Unique Id');
  }

  stdout.write('Enter your Name: ');
  String name = (stdin.readLineSync()!);
  stdout.write('Enter your Age: ');
  int age = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your Phone No: ');
  int phoneNo = int.parse(stdin.readLineSync()!);
  stdout.write('Enter your Gender: ');
  String gender = (stdin.readLineSync()!);
  stdout.write('Enter your Address: ');
  String address = (stdin.readLineSync()!);
  print("");

  Map<String, dynamic> newPatient = {
    'name': name,
    'age': age,
    'phoneNo': phoneNo,
    'gender': gender,
    'address': address
  };
  patientList.add(newPatient);
  print('~~ Patient Add Successfully ~~');
 }

  // if patient id exist
  bool patientExist (int id){
    return patientList.any((element) => element['id'] == id);
  }