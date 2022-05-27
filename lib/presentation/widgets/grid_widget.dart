import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
    required this.children,
  }) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: children,
    );
  }
}

class RowData extends HookWidget {
  const RowData({
    Key? key,
    required this.description,
    required this.data,
    this.isSecret = false,
    this.hasButton = false,
    this.alignment = TextAlign.end,
    this.btnFun,
  }) : super(key: key);

  final String description;
  final String data;
  final bool isSecret;
  final bool hasButton;
  final TextAlign alignment;
  final VoidCallback? btnFun;

  @override
  Widget build(BuildContext context) {
    final toggleVisibility = useState(!isSecret);

    return Row(
      children: [
        Expanded(
          child: Text(
            description,
            style: context.headline3,
          ),
        ),
        Expanded(
          flex: 2,
          child: toggleVisibility.value
              ? Text(
                  data,
                  style: context.headline3,
                  textAlign: alignment,
                )
              : Text(
                  "*" * data.length,
                  style: context.headline3,
                  textAlign: alignment,
                ),
        ),
        if (isSecret) ...[
          IconButton(
            onPressed: () {
              toggleVisibility.value = !toggleVisibility.value;
            },
            icon: Icon(
              toggleVisibility.value ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        ] else ...[
          Container(),
        ],
        if (hasButton) ...[
          Material(
            color: Colors.transparent,
            child: IconButton(
              splashRadius: 18.0,
              onPressed: btnFun,
              icon: const Icon(
                Icons.arrow_forward_ios,
                size: 18.0,
              ),
            ),
          ),
        ] else ...[
          Container(),
        ],
        if (alignment == TextAlign.start && !(isSecret || hasButton)) ...[
          const SizedBox(
            width: 48,
          ),
        ] else ...[
          Container(),
        ],
      ],
    );
  }
}

class UserProfileData {
  final String name;
  final String type;
  final String since;
  final String syscode;
  final String sucode;
  final String email;
  final String addedBy;
  final Widget image;
  final List? history;

  UserProfileData({
    required this.name,
    required this.type,
    required this.since,
    required this.syscode,
    required this.sucode,
    required this.email,
    required this.addedBy,
    required this.image,
    this.history,
  });

  /* UserProfileData({
    this.name = "João Oliveira",
    this.type = "Host (super user)",
    this.since = "07/10/2021",
    this.syscode = "1a2b3c4d",
    this.sucode = "x1y2z3q4",
    this.email = "joao@gmail.com",
    this.addedBy = "João Oliveira",
    this.image = const UserGuySVG(),
  }); */
}

dynamic gambiarra() {
  return () {};
}
