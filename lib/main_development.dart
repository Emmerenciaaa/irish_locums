import 'package:device_preview/device_preview.dart';
import 'package:irish_locums/app/view/app.dart';
import 'package:irish_locums/bootstrap.dart';



void main() {
  bootstrap(() => const App());
  // bootstrap(
  //       () => DevicePreview(
  //         builder: (context) => const App(),
  //   ),
  // );
}