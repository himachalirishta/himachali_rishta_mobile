import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhotoGetController extends GetxController {
  RxString selectedPhoto = ''.obs;

  void startPickingImage() {
    ImagePicker picker = ImagePicker();
    picker.pickImage(source: ImageSource.gallery).then((value) {
      if (value != null) {
        ImageCropper().cropImage(sourcePath: value.path, aspectRatioPresets: [
          CropAspectRatioPreset.square,
        ]).then((croppedImage) {
          if (croppedImage != null) {
            selectedPhoto.value = croppedImage.path;
          }
        });
      }
    });
  }
}
