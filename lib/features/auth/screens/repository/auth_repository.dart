import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp_clone/common/utils/utils.dart';

class AuthRepository {
  final FirebaseAuth auth;
  final FirebaseAuth firestore;

  AuthRepository(this.auth, this.firestore);

  void singInWithPhone(BuildContext context, String phoneNumber) async {
    try {
      await auth.verifyPhoneNumber(phoneNumber: phoneNumber,verificationCompleted: (PhoneAuthCredential credential)async{
        await auth.signInWithCredential(credential);
      }, verificationFailed: (e) {throw Exception(e.message);}, codeSent: ((String verificationId, int? resendToken) async{
        
      }), codeAutoRetrievalTimeout: codeAutoRetrievalTimeout)
    } on FirebaseAuthException catch (e) {
      showSnackBar(context: context, content: e.message!);
    }
  }
}
