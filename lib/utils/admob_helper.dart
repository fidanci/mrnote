import 'package:firebase_admob/firebase_admob.dart';

class AdmobHelper {
  static final String appIDCanli = "ca-app-pub-7911331215388037~3186194719";
  static final String appIDTest = FirebaseAdMob.testAppId;
  static final String gecis1Canli = "ca-app-pub-7911331215388037/3124090310";

  static admobInitialize() {
    FirebaseAdMob.instance.initialize(appId: appIDTest);
  }

  static final MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    keywords: <String>['flutterio', 'notes', 'safely', 'store', 'phone'],
    contentUrl: 'https://www.facebook.com/hakkican.buluc/',
    childDirected: false,
    testDevices: <String>[], // Android emulators are considered test devices
  );

  static InterstitialAd buildInterstitialAd() {
    return InterstitialAd(
      adUnitId: InterstitialAd.testAdUnitId,
      targetingInfo: targetingInfo,
      listener: (MobileAdEvent event) {
        print("InterstitialAd event is $event");
      },
    );
  }
}