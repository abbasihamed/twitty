import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_login/entity/auth_result.dart';
import 'package:twitter_login/twitter_login.dart';
import 'package:twitty/src/core/constans.dart';
import 'package:twitty/src/config/shared_preference.dart';

class SignInController {
  Future<AuthResult> twitterLogin() async {
    final auth = TwitterLogin(
      apiKey: apiKey,
      apiSecretKey: apiSecretKey,
      redirectURI: redirectURI,
    );
    return await auth.login();
  }

  Future<AuthCredential> getCredential() async {
    final login = await twitterLogin();
    return TwitterAuthProvider.credential(
      accessToken: login.authToken ?? "",
      secret: login.authTokenSecret ?? "",
    );
  }

  fireBase() async {
    try {
      final credential = await getCredential();
      final data = await FirebaseAuth.instance.signInWithCredential(credential);

      PrefHelper.setData(
          key: 'username', value: data.additionalUserInfo!.username.toString());
      print('navigate');
    } catch (e) {
      print('Has Error');
    }
  }
}
