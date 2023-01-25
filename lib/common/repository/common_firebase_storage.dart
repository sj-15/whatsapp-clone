import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final commonFirebaseStorageRepositoryProvider = Provider(
  (ref) => CommonFirebseStorageRepository(
    firebaseStorage: FirebaseStorage.instance,
  ),
);

class CommonFirebseStorageRepository {
  final FirebaseStorage firebaseStorage;

  CommonFirebseStorageRepository({required this.firebaseStorage});

  Future<String> storeFileToStorage(String ref, File file) async {
    UploadTask uploadTask = firebaseStorage.ref().child(ref).putFile(file);
    TaskSnapshot snap = await uploadTask;
    String downloadUrl = await snap.ref.getDownloadURL();
    return downloadUrl;
  }
}
