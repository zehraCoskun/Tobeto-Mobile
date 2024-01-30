import 'package:tobeto_mobil/api/business/responses/profile_responses/profile_get_response.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';

class UserGetResponse {
  final ProfileGetResponse? profileGetResponse;

  const UserGetResponse({
    this.profileGetResponse,
  });

  factory UserGetResponse.fromModel(UserModel? model) {
    if (model == null) return const UserGetResponse();

    return UserGetResponse(
      profileGetResponse: ProfileGetResponse.fromModel(
        model.profile,
      ),
    );
  }
}
