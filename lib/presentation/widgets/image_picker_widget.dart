import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/widgets/icons/images_icon_widget.dart';

class ImagePickerWidget extends StatelessWidget {
  const ImagePickerWidget({
    Key? key,
    required this.description,
    required this.onImagePicked,
    this.displayError = false,
  }) : super(key: key);

  final String description;
  final Function(List<XFile>) onImagePicked;
  final bool displayError;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              description,
              style: context.headline3,
            ),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () async {
                  final List<XFile>? images =
                      await ImagePicker().pickMultiImage();
                  onImagePicked(images ?? []);
                },
                borderRadius: BorderRadius.circular(12.0),
                child: Container(
                  width: 70,
                  height: 50,
                  alignment: Alignment.center,
                  child: const ImagesIconWidget(),
                ),
              ),
            ),
          ],
        ),
        if (displayError) ...[
          Text(
            "You must pick exactly 10 images",
            style: context.errorStyle,
          )
        ] else ...[
          Container(),
        ],
      ],
    );
  }
}
