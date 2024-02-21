import 'package:ar_furniture_app/screens/home/Navigation.dart';
import 'package:ar_furniture_app/screens/welcome/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const NavigationScreen());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password, String phone, String name) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const NavigationScreen())
          : Get.to(() => const WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  Future<void> signInUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
