import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';

enum UserType { guest, resident, host, empty }

class DoubleRadioButtonWidget extends HookWidget {
  const DoubleRadioButtonWidget({
    Key? key,
    required this.onTypeChosen,
    this.displayError = false,
    this.withGuest = false,
  }) : super(key: key);

  final Function(String) onTypeChosen;
  final bool displayError;
  final bool withGuest;

  @override
  Widget build(BuildContext context) {
    final userType = useState(UserType.empty);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: <Widget>[
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: RadioListTile<UserType>(
                title: Text(
                  'Resident',
                  style: context.headline3,
                ),
                value: UserType.resident,
                groupValue: userType.value,
                onChanged: (value) {
                  userType.value = value!;
                  final split = userType.value.toString().split('.')[1];
                  onTypeChosen(split);
                },
              ),
            ),
            Expanded(
              child: RadioListTile<UserType>(
                title: Text(
                  withGuest ? 'Guest' : 'Host',
                  style: context.headline3,
                ),
                value: withGuest ? UserType.guest : UserType.host,
                groupValue: userType.value,
                onChanged: (value) {
                  userType.value = value!;
                  final split = userType.value.toString().split('.')[1];
                  onTypeChosen(split);
                },
              ),
            ),
          ],
        ),
        if (displayError) ...[
          Text(
            "No type was selected",
            style: context.errorStyle,
          )
        ] else ...[
          Container(),
        ],
      ],
    );
  }
}
