import 'package:in_app_review/in_app_review.dart';

class ReviewService {
  final InAppReview _inAppReview = InAppReview.instance;

  Future<void> launchReview() async {
    // openStoreListing intentionally not used: it requires an App Store ID on
    // iOS/macOS and always throws without one (FlutterError "no-store-id").
    // Wire appStoreId through here once the app has a published listing.
    if (await _inAppReview.isAvailable()) {
      await _inAppReview.requestReview();
    }
  }
}
