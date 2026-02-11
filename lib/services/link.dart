import 'package:share_plus/share_plus.dart';

import 'package:url_launcher/url_launcher_string.dart';

class LinkService {
  Future<void> launchLink(String link) async {
    if (await canLaunchUrlString(link)) {
      await launchUrlString(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  Future<void> share(String messageWithLink) async {
    await Share.share(messageWithLink);
  }
}
