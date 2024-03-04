import 'package:flutter/material.dart';
import 'package:tobeto_mobil/constants/pages/profile_text.dart';
import 'package:tobeto_mobil/models/user/user_model.dart';

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

  String toHint() {
    switch (this) {
      case SocialMediaItem.github:
        return "github.com/{profile}";
      case SocialMediaItem.linkedin:
        return "linkedin.com/in/{profile}";
      case SocialMediaItem.facebook:
        return "facebook/{profile}";
      case SocialMediaItem.twitter:
        return "twitter/{profile}";
      case SocialMediaItem.instagram:
        return "instagram/{profile}";
    }
  }

  String? toValue(UserModel? user) {
    if (user == null) return null;

    switch (this) {
      case SocialMediaItem.github:
        return _processString(user.github);
      case SocialMediaItem.linkedin:
        return _processString(user.linkedin);
      case SocialMediaItem.facebook:
        return _processString(user.facebook);
      case SocialMediaItem.twitter:
        return _processString(user.twitter);
      case SocialMediaItem.instagram:
        return _processString(user.instagram);
    }
  }

  String toUrl(UserModel user) {
    switch (this) {
      case SocialMediaItem.github:
        return "$githubUrl${_processString(user.github)}";
      case SocialMediaItem.linkedin:
        return "$linkedinUrl${_processString(user.linkedin)}";
      case SocialMediaItem.facebook:
        return "$facebookUrl${_processString(user.facebook)}";
      case SocialMediaItem.twitter:
        return "$twitterUrl${_processString(user.twitter)}";
      case SocialMediaItem.instagram:
        return "$instagramUrl${_processString(user.instagram)}";
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

  String toTobetoUrl() {
    switch (this) {
      case SocialMediaItem.github:
        return githubUrl;
      case SocialMediaItem.linkedin:
        return linkedinUrl;
      case SocialMediaItem.facebook:
        return facebookUrl;
      case SocialMediaItem.twitter:
        return twitterUrl;
      case SocialMediaItem.instagram:
        return instagramUrl;
    }
  }

  String? _processString(String? str) {
    if (str != null && str.contains("/")) {
      return str.split("/").last;
    }
    return str;
  }
}
