import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkService {
  Future<void> launchLink(String link) async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  Future<void> share(String messageWithLink) async {
    await Share.share(messageWithLink);
  }
}
