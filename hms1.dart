import 'dart:io';

List<Map<String, dynamic>> patientList = [];
void main() {
  pageOne();
}

// main screen funcction
pageOne() {
  bool condition = true;

  while (condition == true) {
    print('');
    print('***=== Hospital Management System ===***');
    print('');
    print('Press 1: Add Patient');
    print('Press 2: View Patients Records');
    print('Press 3: Delete Patient');
    print('Press 4: Search Patients');
    print('Press 5: Appoinments Schedule');
    print('Press 6: View Appoinments Schedule');
    print('Press 7: Exit Program');

    print('');
    stdout.write('Enter you option: ');
    int option = int.parse(stdin.readLineSync()!);
    print('');
    // condition = false;
    // press functions
    if (option == 1) {
      addPatient();
    }
    if (option == 2) {
      viewPatientRecords();
    }
    if (option == 3) {
      deletePatient();
    }
    if (option == 4) {
      searchPatients();
    }
    if (option == 5) {
      appoinmentsSchedule();
    }
    if (option == 6){
      viewAppoinmentsSchedule();
    }
  }
}

// Add Patients Function
addPatient() {
  stdout.write('Enter your Id: ');
  int id = int.parse(stdin.readLineSync()!);

  if (patientExist(id)) {
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
    'address': address,
    'appoinmentSchedule': []
  };
  patientList.add(newPatient);
  print('~~ Patient Add Successfully ~~');
}

// if patient id exist
bool patientExist(int id) {
  return patientList.any((element) => element['id'] == id);
}

// Patient View Records
viewPatientRecords() {
  if (patientList.isEmpty) {
    print('No Patient Data Found!');
  } else {
    print(' ***=== Patient Records ===***');
    print('');
    print(' Patients: ${patientList.length}');
    print('');
    for (int i = 0; i < patientList.length; i++) {
      Map<String, dynamic> patientRecordExist = patientList[i];
      print(
          ' Id: ${patientRecordExist['id']}\n Name: ${patientRecordExist['name']}\n Age: ${patientRecordExist['age']}\n PhoneNo: ${patientRecordExist['phoneNo']}\n Gender: ${patientRecordExist['gender']}\n Address: ${patientRecordExist['address']}');
      print('');
    }
  }
}

// Delete Patients
deletePatient() {
  print('***=== Delete Patient ===***');
  print('');
  stdout.write('Enter you Id: ');
  int deleteId = int.parse(stdin.readLineSync()!);
  bool foundPatient = patientList.any((element) => element['id'] == deleteId);

  if (foundPatient) {
    patientList.removeWhere((element) => element['id'] == deleteId);
    print('Patient Delete Successfully');
  } else {
    print('Patient Data Not Found!');
  }
}

// Search Function
searchPatients() {
  print('***=== Search Patient ===***');
  print('');
  stdout.write('Enter Id: ');
  int idInput = int.parse(stdin.readLineSync()!);
  print('');

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

// Add patient Appoinments Schedule
appoinmentsSchedule() {
  stdout.write('Enter you Id: ');
  int appoinmentId = int.parse(stdin.readLineSync()!);
  stdout.write('Enter you Name: ');
  String appointmentName = (stdin.readLineSync()!);

  bool foundPatient = false;

  for (int i = 0; i < patientList.length; i++) {
    Map<String, dynamic> addAppointment = patientList[i];
    if (addAppointment['id'] == appoinmentId &&
        addAppointment['name'] == appointmentName) {
      stdout.write('Enter Dr Name: ');
      String drName = (stdin.readLineSync()!);

      stdout.write("Enter Appointment Day: ");
      String appointmentDay = stdin.readLineSync()!;

      stdout.write("Enter Appointment Time: ");
      String appointmentTime = stdin.readLineSync()!;

      stdout.write("Enter Appointment Date: ");
      String appointmentDate = stdin.readLineSync()!;

      Map<String, dynamic> appoinments = {
        'Dr Name': drName,
        'Appoinment Day': appointmentDay,
        'Appoinment Date': appointmentDate,
        'Appoinment Time': appointmentTime
      };
      addAppointment['appoinmentSchedle'].add(appoinments);
      foundPatient = true;
    }
  }
  if (foundPatient == false) {
    print('No patient found! please add patient first');
  } else {
    print('Add Appoinment Schedule Successfully');
  }
}

// View Appoinments Schedule
viewAppoinmentsSchedule (){
  print('***=== View Appoinment Schedule ===***');
  for (int i = 0; i < patientList.length; i++){
    Map<String, dynamic> patient = patientList[i];
    List<dynamic> appoinmentSchedle = patient['appoinmentSchedule']; 

    print('Patient Id: ${patient['id']}');
    print('Patient Name: ${patient['name']}');

    if (appoinmentSchedle.isEmpty){
      print('No Patient Appoinment Schedule');
    } else {
      print('Patient Appoinments Schedule');
      for (int j = 0; j < appoinmentSchedle.length; j++){
        Map<String, dynamic> appoinments = appoinmentSchedle[j];
        print('${j + i}');
        print('Doctor Name: ${appoinments['Dr Name']}');
        print('Doctor Name: ${appoinments['Dr Name']}');
      }
    }
  }
}
