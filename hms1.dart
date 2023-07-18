
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
    } if (option == 2){
      viewPatientRecords();
    } if ( option == 3){
      searchPatients();
    }
  }
}

// Add Patients Function
 addPatient (){

  stdout.write('Enter your Id: ');
  int id = int.parse(stdin.readLineSync()!);

  if (patientExist(id)){
    print('Patient with Id $id\nAlready exist please Enter Unique Id');
    return;
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
    'id': id,
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

  // Patient View Records 
  viewPatientRecords (){
    if (patientList.isEmpty){
      print('No Patient Data Found!');
    } else {
      print(' ***=== Patient Records ===***');
      print('');
      print(' Patients: ${patientList.length}');
      print('');
      for (int i = 0; i < patientList.length ; i++){
        Map<String, dynamic> patientRecordExist = patientList[i];
        print(' Id: ${patientRecordExist['id']}\n Name: ${patientRecordExist['name']}\n Age: ${patientRecordExist['age']}\n PhoneNo: ${patientRecordExist['phoneNo']}\n Gender: ${patientRecordExist['gender']}\n Address: ${patientRecordExist['address']}');
        print('');
      }
    }
  }

  // Search Function
  searchPatients (){
    print('***=== Search Patient ===***');
    print('');
    stdout.write('Enter Id: ');
    int idInput = int.parse(stdin.readLineSync()!);
    print('');
    bool found = false;

  for (int i = 0; i < patientList.length; i++) {
    Map<String, dynamic> searchPatient = patientList[i];
    if (searchPatient['id'] == idInput) {
      print('Name: ${searchPatient['name']}');
      print('Age: ${searchPatient['age']}');
      print('PhoneNo: ${searchPatient['phoneNo']}');
      print('Gender: ${searchPatient['gender']}');
      print('Address: ${searchPatient['address']}');
      
    } else {
      print('Patient data not found');
    }
  }

}