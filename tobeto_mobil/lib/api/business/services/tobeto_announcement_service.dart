import 'package:tobeto_mobil/api/repository/tobeto_announcement_repository.dart';
import 'package:tobeto_mobil/models/firebase_models/tobeto_announcement_model.dart';

class TobetoNewsService {
  final TobetoNewsRepository _tobetoNewsRepository;
  const TobetoNewsService(this._tobetoNewsRepository);

  Future<List<TobetoNewsModel>> getAllNews() async {
    final quertSnapshot = await _tobetoNewsRepository.getAllNews();
    final List<TobetoNewsModel> tobetoNewsList = [];

    for (var tobetoNewsDoc in quertSnapshot.docs) {
      if (tobetoNewsDoc.exists) {
        final tobetoNewsData = tobetoNewsDoc.data();
        tobetoNewsList.add(TobetoNewsModel.fromMap(tobetoNewsData));
      }
    }
    return tobetoNewsList;
  }
}
