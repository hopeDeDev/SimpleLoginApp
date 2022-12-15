import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' 
    hide
        EmailAuthProvider,
        PhoneAuthProvider;
import '/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import '/pages/login.dart';
import '/pages/register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ApplicationState();

  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _names = TextEditingController();
  final TextEditingController _favPet = TextEditingController();
  final TextEditingController _dateBirth = TextEditingController();
  final TextEditingController _starSign = TextEditingController();

 MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 2, 19, 34),
      ),
      initialRoute: '/login',
      routes: {
        '/home': (context) {
          return MyHomePageState(names: _names.text, dateBirth: _dateBirth.text, favPet: _favPet.text, starSign: _starSign.text);

        },
        '/login': (context) {
          return const LoginPage();
        },
        '/sighnin': (context) {
          return const SigninPage();
        },
      },
    );
  }
}

class ApplicationState extends ChangeNotifier {
  ApplicationState() {
    init();
  }
  bool _loggedIn = false;
  bool get loggedIn => _loggedIn;
  Future<void> init() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    FirebaseUIAuth.configureProviders([
      EmailAuthProvider(),
    ]);
    FirebaseAuth.instance.userChanges().listen((user) {
      if (user != null) {
        _loggedIn = true;
      } else {
        _loggedIn = false;
      }
      notifyListeners();
    });
  }
}
