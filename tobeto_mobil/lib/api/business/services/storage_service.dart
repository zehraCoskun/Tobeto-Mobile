import 'dart:io';

import 'package:tobeto_mobil/api/repository/storage_repository.dart';

class StorageService {
  final StorageRepository _storageRepository;

  const StorageService._private(this._storageRepository);

  static final _instance = StorageService._private(
    StorageRepository.instance(),
  );

  factory StorageService.instance() {
    return _instance;
  }

  Future<String> putImage(String id, File file) async {
    return await _storageRepository.putImage(id, file);
  }

  Future<String> updateImage(String id, File file, String url) async {
    return await _storageRepository.updateImage(id, file, url);
  }

  Future<void> deleteFile(String url) async {
    await _storageRepository.deleteFile(url);
  }
}
