import 'package:get/get.dart';
import 'package:http/http.dart' as http;
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

  Future<void> callUploadPhotoApi(String accessToken) async {
    var headers = {
      'Authorization': 'Bearer $accessToken',
    };
    var request = http.MultipartRequest('POST',
        Uri.parse('https://devmatri.rishtaguru.com/api/upload/profile_image'));
    request.fields.addAll({'is_profile_image': 'Y', 'type': 'photo'});
    request.files
        .add(await http.MultipartFile.fromPath('image', selectedPhoto.value));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
    } else {
    }
  }
}
