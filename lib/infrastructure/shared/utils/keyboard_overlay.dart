// import 'package:booktr/infrastructure/shared/common_widgets.dart';
// import 'package:flutter/cupertino.dart';

// class KeyboardOverlay {
//   static OverlayEntry? _overlayEntry;

//   static showOverlay(BuildContext context) {
//     if(_overlayEntry != null) {
//       return;
//     }

//     OverlayState? overlayState = Overlay.of(context);
//     _overlayEntry = OverlayEntry(builder: (context) {
//       return Positioned(
//           bottom: MediaQuery.of(context).viewInsets.bottom,
//           right: 0.0,
//           left: 0.0,
//           child: inputDoneWidget(context));
//     });

//     overlayState!.insert(_overlayEntry!);
//   }

//   static removeOverlay() {
//     if (_overlayEntry != null) {
//       _overlayEntry!.remove();
//       _overlayEntry = null;
//     }
//   }
// }