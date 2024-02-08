import 'package:flutter/foundation.dart' show immutable;
import 'package:tobeto_mobil/api/business/requests/user_requests/user_create_request.dart';
import 'package:tobeto_mobil/api/business/requests/user_requests/user_update_request.dart';

@immutable
abstract class UserEvent {}

@immutable
class UserEventCreate implements UserEvent {
  final String docId;
  final UserCreateRequest request;

  const UserEventCreate({
    required this.docId,
    required this.request,
  });
}

@immutable
class UserEventUpdate implements UserEvent {
  final String docId;
  final UserUpdateRequest request;

  const UserEventUpdate({
    required this.docId,
    required this.request,
  });
}

@immutable
class UserEventFetch implements UserEvent {
    final String docId;
    const UserEventFetch({
      required this.docId
    });
}




/* implements ve extends arasındaki temel fark, bir sınıfın başka bir sınıfı miras alması (extends) ve bir arayüzü uygulaması (implements) arasındadır.

Yukarıdaki kod parçasında implements kullanılmasının sebebi, UserEventCreate sınıfının UserEvent arayüzünü uygulamasıdır. İşte nedenleri:

Arayüz Uygulama: implements anahtar kelimesi, bir sınıfın belirli bir arayüzü uygulayacağını belirtir. Bu durumda, UserEventCreate sınıfı, UserEvent arayüzünün tüm yöntemlerini ve özelliklerini içermesi gerektiğini ifade eder. Bu, sınıfın belirli bir sözleşmeyi yerine getirmesini sağlar.
Çoklu Miras Sorunlarından Kaçınma: Dart dilinde bir sınıf sadece bir tane başka bir sınıftan miras alabilir (tek miras). Ancak, bir sınıf birden fazla arayüzü uygulayabilir. Bu nedenle, implements kullanarak bir arayüz uygulamak, sınıfın çoklu mirasın getirebileceği karmaşıklıklardan kaçınmasına olanak tanır.
Genişletme (Extending) İhtiyacı Yoktur: Eğer UserEventCreate sınıfı zaten başka bir sınıftan miras alıyorsa ve aynı zamanda bir arayüzü uygulamak istiyorsak, bu durumda extends yerine implements kullanmak daha uygun olabilir. Çünkü bir sınıf sadece bir sınıftan miras alabilir.
Sonuç olarak, yukarıdaki kod parçasında implements kullanılması, UserEventCreate sınıfının UserEvent arayüzünü uygulayarak belirli bir sözleşmeyi yerine getirmesini sağlar ve çoklu miras sorunlarından kaçınır. */