import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

_launcherURLBrowser() async {
  var url = Uri.parse('https://www.kust.edu.pk');
  if(await canLaunchUrl(url)) {
    await launchUrl(url);
  }
  else {
    throw 'Could not load the page';
  }
}

_launchURLApp() async {
  var url = Uri.parse("https://www.google.com");
  if(await canLaunchUrl(url)) {
    await launchUrl(url);
  }
  else {
    throw 'Could not load the page';
  }
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold (
        appBar: AppBar(
          title: const Text('BSSE Urls'),
          backgroundColor: Colors.orange,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 250.0,
                ),
                const Text(
                  'Welcome to BSSE',
                   style: TextStyle(
                     fontSize: 30.0,
                     color: Colors.green,
                     fontWeight: FontWeight.normal,
                   ),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                    onPressed: _launcherURLBrowser,
                    style: ButtonStyle(
                      padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(color: Colors.orange),
                      ),
                    ),
                  child: const Text('Open in Browser'),
                ),
                Container(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: _launchURLApp,
                  style: ButtonStyle(
                    padding:
                    MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.orange),
                    ),
                  ),
                  child: const Text('Open in app'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

