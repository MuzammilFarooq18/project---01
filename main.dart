import 'dart:io';

main() {
  String name = "muzammilFarooq";
  String Password = "muzammil@123";

  print("Enter your name and password to Continue");
  stdout.write('Username: ');
  var username = stdin.readLineSync();

  stdout.write('Password: ');
  var password = stdin.readLineSync();

  if (username == name && password == Password) {
    print('Login successful. Welcome, $username!');
  } else {
    print('Wrong name or password. Please try again.');
    return;
  }

  print("We have all Advance course to teach our new generation");
  print("-----------------------------------------------------");
  print("Select the course you are interested in");

  print("1. Python");
  print("2. C++");
  print("3. Web Development");
  print("4. Flutter");
  print("5. Machine Learning");
  print("6. Data Analyst");
  print("7. AC Repairing");
  print("8. Cyber Security");
  print("9. AI ChatBot");
  print("10. Java");

  stdout.write('Enter your choice: ');
  var userInput = stdin.readLineSync();

  String selectedCourse;
  switch (userInput) {
    case '1':
      selectedCourse = 'Python';
      break;
    case '2':
      selectedCourse = 'C++';
      break;
    case '3':
      selectedCourse = 'Web Development';
      break;
    case '4':
      selectedCourse = 'Flutter';
      break;
    case '5':
      selectedCourse = 'Machine Learning';
      break;
    case '6':
      selectedCourse = 'Data Analyst';
      break;
    case '7':
      selectedCourse = 'AC Repairing';
      break;
    case '8':
      selectedCourse = 'Cyber Security';
      break;
    case '9':
      selectedCourse = 'AI ChatBot';
      break;
    case '10':
      selectedCourse = 'Java';
      break;
    default:
      print('Invalid choice. Please try again.');
      return;
  }

  print("You've Selected $selectedCourse");
  displayCourseDetails(selectedCourse);
}

displayCourseDetails(String courseName) {
  Map courseDetails = {
    'Python': {
      'Duration': '8 months',
      'Fee': '4500',
      'ClassSchedule': {
        'Monday': '2:00 PM - 4:00 PM',
        'Thursday': '2:00 PM - 4:00 PM',
      },
    },
    'C++': {
      'Duration': '5 months',
      'Fee': '1800',
      'ClassSchedule': {
        'Tuesday': '3:00 PM - 5:00 PM',
        'Friday': '3:00 PM - 5:00 PM',
      },
    },
    'Web Development': {
      'Duration': '18 months',
      'Fee': '2500',
      'ClassSchedule': {
        'Wednesday': '4:00 PM - 6:00 PM',
        'Saturday': '4:00 PM - 6:00 PM',
      },
    },
    'Flutter': {
      'Duration': '7 months',
      'Fee': '3500',
      'ClassSchedule': {
        'Thursday': '5:00 PM - 7:00 PM',
        'Sunday': '5:00 PM - 7:00 PM',
      },
    },
    'Machine Learning': {
      'Duration': '14 months',
      'Fee': '4500',
      'ClassSchedule': {
        'Monday': '4:30 PM - 6:30 PM',
        'Wednesday': '4:30 PM - 6:30 PM',
      },
    },
    'Data Analyst': {
      'Duration': '11 months',
      'Fee': '3500',
      'ClassSchedule': {
        'Tuesday': '3:00 PM - 5:00 PM',
        'Thursday': '3:00 PM - 5:00 PM',
      },
    },
    'AC Repairing': {
      'Duration': '3 months',
      'Fee': '1500',
      'ClassSchedule': {
        'Wednesday': '9:00 AM - 11:00 AM',
        'Friday': '9:00 AM - 11:00 AM',
      },
    },
    'Cyber Security': {
      'Duration': '10 months',
      'Fee': '3000',
      'ClassSchedule': {
        'Monday': '2:00 PM - 4:00 PM',
        'Wednesday': '2:00 PM - 4:00 PM',
      },
    },
    'AI ChatBot': {
      'Duration': '9 months',
      'Fee': '4500',
      'ClassSchedule': {
        'Tuesday': '10:00 AM - 12:00 PM',
        'Thursday': '10:00 AM - 12:00 PM',
      },
    },
    'Java': {
      'Duration': '6 months',
      'Fee': '3000',
      'ClassSchedule': {
        'Friday': '10:00 AM - 12:00 PM',
        'Saturday': '10:00 AM - 12:00 PM',
      },
    },
  };

  if (courseDetails.containsKey(courseName)) {
    print("Details for $courseName:");
    print("${courseDetails[courseName]}");

    stdout.write(
        'if yo are interested in the course you have selected then enrolled your name and information CNIC, DOB, email (yes/no): ');

    var wait = stdin.readLineSync()?.toLowerCase();

    print("thanks for your interest");

    if (wait == 'yes') {
      stdout.write('Enter your CNIC number: ');
      var cnic = stdin.readLineSync();
      stdout.write('Enter your Date of Birth ');
      var dob = stdin.readLineSync();
      stdout.write('Enter your email: ');
      var email = stdin.readLineSync();

      if (cnic == cnic && dob == dob && email == email) {
        print(' Advance Payment Methods:');
        print('- Easy Paisa');
        print('- JazzCash');
      } else {
        print('please enter correct information');
      }
    }
  } else {
    print('Course details not found.');
  }
}
