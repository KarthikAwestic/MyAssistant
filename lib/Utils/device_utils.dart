import 'package:flutter/foundation.dart' as foundation;


bool get isIos => foundation.defaultTargetPlatform == foundation.TargetPlatform.iOS;
bool get isAndroid => foundation.defaultTargetPlatform == foundation.TargetPlatform.android;