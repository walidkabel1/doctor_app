import 'dart:async';

class UploadBloc {
  final StreamController<String> _imageController = StreamController<String>();

  Stream<String> get imageStream => _imageController.stream;

  void uploadPhoto(String imageBase64) {
    _imageController.add(imageBase64);
  }

  void dispose() {
    _imageController.close();
  }
}
