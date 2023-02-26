import 'dart:io';

getDeviceType() {
  if (Platform.isAndroid) {
    return 'android';
  } else if (Platform.isIOS) {
    return 'iOS';
  }
  return '';
}



dynamic getImageHeight(imageUrl) async {
  return await imageUrl != null ? double.parse(imageUrl.height.toString()) : 1200.0;
}
