import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/models/firebase_models/user_model.dart';

enum SocialMediaItem {
  github,
  linkedin,
  facebook,
  twitter,
  instagram;

  String getName() {
    switch (this) {
      case SocialMediaItem.github:
        return "Github";
      case SocialMediaItem.linkedin:
        return "Linkedin";
      case SocialMediaItem.facebook:
        return "Facebook";
      case SocialMediaItem.twitter:
        return "X";
      case SocialMediaItem.instagram:
        return "Instagram";
    }
  }

  String getUrl(UserModel user) {
    switch (this) {
      case SocialMediaItem.github:
        return user.github ?? githubUrl;
      case SocialMediaItem.linkedin:
        return user.linkedin ?? linkedinUrl;
      case SocialMediaItem.facebook:
        return user.facebook ?? facebookUrl;
      case SocialMediaItem.twitter:
        return user.twitter ?? twitterUrl;
      case SocialMediaItem.instagram:
        return user.instagram ?? instagramUrl;
    }
  }

  Color getColor() {
    switch (this) {
      case SocialMediaItem.github:
        return githubColor;
      case SocialMediaItem.linkedin:
        return linkedinColor;
      case SocialMediaItem.facebook:
        return facebookColor;
      case SocialMediaItem.twitter:
        return twitterColor;
      case SocialMediaItem.instagram:
        return instagramColor;
    }
  }

  String getIcon() {
    switch (this) {
      case SocialMediaItem.github:
        return githubIcon;
      case SocialMediaItem.linkedin:
        return linkedinIcon;
      case SocialMediaItem.facebook:
        return facebookIcon;
      case SocialMediaItem.twitter:
        return twitterIcon;
      case SocialMediaItem.instagram:
        return instagramIcon;
    }
  }
}
