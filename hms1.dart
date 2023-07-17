
import 'dart:io';

List<Map<String, dynamic>> patientList = [];
void main (){
 pageOne();
}

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
    condition = false;
  }
}