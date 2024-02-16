import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/models/firebase_models/user/user_model.dart';

enum SocialMediaItem {
  github,
  linkedin,
  facebook,
  twitter,
  instagram;

  @override
  String toString() {
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

  String? toValue(UserModel? user) {
    if (user == null) return null;

    switch (this) {
      case SocialMediaItem.github:
        return user.github;
      case SocialMediaItem.linkedin:
        return user.linkedin;
      case SocialMediaItem.facebook:
        return user.facebook;
      case SocialMediaItem.twitter:
        return user.twitter;
      case SocialMediaItem.instagram:
        return user.instagram;
    }
  }

  String toUrl(UserModel user) {
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

  Color toColor() {
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

  String toIcon() {
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
