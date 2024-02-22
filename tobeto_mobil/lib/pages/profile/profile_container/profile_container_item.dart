import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/user/user_model.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/activity_map/activity_map_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/badge/badges_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/certificate/certificates_list_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/personal_info/personal_info_column_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/social_media/social_media_widget.dart';
import 'package:tobeto_mobil/pages/profile/profile_container/talents/talent_list_widget.dart';

enum ProfileContainerItem {
  info,
  competence,
  certificates,
  socialmedia,
  badges,
  activity;

  @override
  String toString() {
    switch (this) {
      case ProfileContainerItem.info:
        return "Kişisel Bİlgilerim";
      case ProfileContainerItem.competence:
        return "Yetkinliklerim";
      case ProfileContainerItem.certificates:
        return "Sertifikalarım";
      case ProfileContainerItem.socialmedia:
        return "Sosyal Medya Hesaplarım";
      case ProfileContainerItem.badges:
        return "Yetkinlik Rozetlerim";
      case ProfileContainerItem.activity:
        return "Aktivite Haritam";
    }
  }

  Widget toChild(UserModel user) {
    switch (this) {
      case ProfileContainerItem.info:
        return PersonalInfoColumnWidget(
          user: user,
        );
      case ProfileContainerItem.competence:
        return TalentListWidget(
          talents: user.talents,
        );
      case ProfileContainerItem.certificates:
        return CertificatesListWidget(
          certificates: user.certificates,
        );
      case ProfileContainerItem.socialmedia:
        return const SocialMediaWidget();
      case ProfileContainerItem.badges:
        return BadgesListWidget(
          badges: user.badges,
        );
      case ProfileContainerItem.activity:
        return const ActivityMapWidget();
    }
  }
}
