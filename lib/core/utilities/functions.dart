import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl({required String bookUrl}) async {
final Uri url = Uri.parse(bookUrl);
await launchUrl(url);
}
