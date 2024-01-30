import 'package:tobeto_mobil/core/entities/entity.dart';
import 'package:tobeto_mobil/models/firebase_models/profile_model.dart';

class UserModel extends Entity {
  final String? id;
  final ProfileModel? profile;

  UserModel({
    this.id,
    this.profile,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map["id"] as String?,
      profile: ProfileModel.fromMap(map["profile"] as Map<String, dynamic>?),
    );
  }

  Map<String, dynamic> toMap() {
    final classMap = _createClassMap();

    final Map<String, dynamic> map = {};

    for (MapEntry<String, dynamic> entry in classMap.entries) {
      if (entry.value != null) {
        map.addEntries([entry]);
      }
    }
    return map;
  }

  Map<String, dynamic> _createClassMap() {
    return {
      "id": id,
      "profile": profile!.toMap(),
    };
  }
}
