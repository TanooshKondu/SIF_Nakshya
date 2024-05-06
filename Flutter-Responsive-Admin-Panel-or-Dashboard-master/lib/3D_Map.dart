//ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

void main() => runApp(IFrameTesterApp());

class IFrameTesterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('3D Globe Visualization'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Theme.of(context).colorScheme.onSurface, width: 1.0),
            ),
            child: const IframeView(
              source:
                  "https://api.mapbox.com/styles/v1/tanooshkondu/clri9n5xh00lp01pe8mdf1xfd.html?title=false&access_token=pk.eyJ1IjoidGFub29zaGtvbmR1IiwiYSI6ImNscmh1YjI1ajAzYXgybHBheGEzNmUyZHkifQ.45XexlMNeZheE4BeQM1Crg&zoomwheel=false#2.3/-4.05/84.11",
            ),
          ),
        ),
      ),
    );
  }
}

class IframeView extends StatefulWidget {
  final String source;

  const IframeView({Key? key, required this.source}) : super(key: key);

  @override
  _IframeViewState createState() => _IframeViewState();
}

class _IframeViewState extends State<IframeView> {
  final IFrameElement _iframeElement = IFrameElement();

  @override
  void initState() {
    super.initState();
    _iframeElement.src = widget.source;
    _iframeElement.style.border = 'none';

    //ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      'iframeElement',
      (int viewId) => _iframeElement,
    );
  }

  @override
  Widget build(BuildContext context) {
    return HtmlElementView(
      key: UniqueKey(),
      viewType: 'iframeElement',
    );
  }
}
