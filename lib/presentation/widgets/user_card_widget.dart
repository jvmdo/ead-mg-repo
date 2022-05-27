import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:ead_app/domain/users/user.dart';
import 'package:ead_app/presentation/core/string_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/widgets/avatar_widget.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({
    Key? key,
    required this.userItem,
  }) : super(key: key);

  final User userItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        child: InkWell(
          onTap: () => context.router.push(UserHistoryRoute(user: userItem)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 280,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AvatarWidget(
                        radius: 32.0,
                        imageUrl: userItem.profilePicture.getOrCrash(),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userItem.name.getOrCrash(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(userItem.type.getOrCrash().inCaps),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
