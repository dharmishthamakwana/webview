import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier
{
  WebViewController? webViewController;

  List Logos = [
    "assets/images/logo1.jpg",
    "assets/images/whatsapp.jpg",
    "assets/images/logo3.jpg",
    "assets/images/logo4.jpg",
    "assets/images/playstore.png",
    "assets/images/logo6.png",
    "assets/images/phonepe.jpg",
    "assets/images/amozon.png",
    "assets/images/logo9.png",
    "assets/images/logo10.png",
  ];
  List names = [
    "Reliance Mart",
    "WhatsApp Web",
    "meesho",
    "Flipcart",
    "Playstore",
    "Macdonald",
    "Phonepe",
    "Amazon",
    "Dominoz",
    "Dmart",
  ];

  List urls = [
    "https://www.reliancedigital.in/",
    "https://www.google.com/search?q=whatsapp&oq=&aqs=chrome.3.35i39i362j46i39i199i362i465j35i39i362l6.109235j0j7&sourceid=chrome&ie=UTF-8",
    "https://www.meesho.com/",
    "https://www.flipkart.com/",
    "https://play.google.com/store/games?hl=en&tab=r8/",
    "https://www.mcdonalds.com/us/en-us.html",
    "https://www.phonepe.com/",
    "https://www.amazon.in/",
    "https://www.dominos.co.in/",
    "https://www.dmartindia.com/",
  ];


  void loadurl(int inde)
  {
    webViewController = WebViewController();
    webViewController!.loadRequest(Uri.parse("${urls[inde]}"),);
  }
}