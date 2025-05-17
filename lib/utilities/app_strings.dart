import 'package:get/get.dart';

class AppStrings {
  static const String connectFriend = 'Connect friends easily & quickly';
  static const String ourChatApp =
      'Our chat app is the perfect way to stay\nconnected with friends and family';
  static const String or = 'OR';
  static const String signUpWithEmail = 'Sign up with Email';
  static const String alreadyHaveAccount = 'Already have an account?';
  static const String login = 'Log in';
  static const String getChatting =
      'Get chatting with friends and family today by\nsigning up by our chat app!';
  static const String yourName = 'Your Name';
  static const String yourEmail = 'Your Email';
  static const String password = 'Password';
  static const String confirmPassword = 'Confirm Password';
  static const String loginToChatBox = 'Login to Chatbox';
  static const String welcomeBack =
      'Welcome back!Sign in using your social\naccount or email to continue us';
  static const String forgotPassword = 'Forgot Password?';
  static const String forgotPasswordText =
      'Give your email we will send you a link by which you can change your password.';
  static const String send = 'Send';
  static const String home = 'Home';
  static const String alexLinderson = 'Alex Linderson';
  static const String howAreYou = 'How are you today?';
  static const String messageTime = '2 min ago';
  static const String activeNow = 'Active Now';
  static const String shareContent = 'Share Content';
  static const String camera = 'Camera';
  static const String document = 'Documents';
  static const String createPoll = 'create a poll';
  static const String media = 'Media';
  static const String contact = 'Contact';
  static const String location = 'Location';
  static const String sendImage = 'Send Image';
  static const String shareFiles = 'Share your files';
  static const String createPollQuery = 'Create a poll for any query';
  static const String shareVideos = 'Share photos and videos';
  static const String shareContacts = 'shareContacts';
  static const String shareLocation = 'shareLocation';
  static const String settings = 'Settings';
}

class AppTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'connectFriend': 'Connect friends easily & quickly',
          'home': 'home',
        },
        'ur_PK': {
          'connectFriend': 'دوستوں کو آسانی اور تیزی سے جوڑیں',
          'home': 'ہوم',
        },
      };
}
