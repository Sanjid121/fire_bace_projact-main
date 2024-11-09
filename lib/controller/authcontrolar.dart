import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authcontrolar extends GetxController {
  GogoleAuth() async {
   
    GoogleSignIn googleSignIn = GoogleSignIn();
    GoogleSignInAccount? account = await GoogleSignIn().signIn();
    print(account!.id);
    print(account.email);
    print(account.displayName);
    print(account.photoUrl);
    print(account.authHeaders);
    print(account.authentication);
    print(account.serverAuthCode);
  }
}
