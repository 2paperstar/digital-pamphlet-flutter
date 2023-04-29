import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:uni_links/uni_links.dart';

@singleton
class NfcService {
  late final _exhibitionCodeStream = StreamController<String>();
  Stream<String> get exhibitionCodeStream => _exhibitionCodeStream.stream;

  late StreamSubscription _sub;

  NfcService() {
    getInitialUri().then((value) {
      if (value?.isScheme('com.paperstar.pamphlet') == true) {
        _exhibitionCodeStream.add(value!.path.substring(1));
      }
    });

    _sub = uriLinkStream.listen((event) {
      if (event?.isScheme('com.paperstar.pamphlet') == true) {
        _exhibitionCodeStream.add(event!.path.substring(1));
      }
    });
  }

  @disposeMethod
  void dispose() {
    _sub.cancel();
  }
}
