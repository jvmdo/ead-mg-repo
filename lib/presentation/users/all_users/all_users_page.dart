import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/users/all_users/all_users_bloc.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/core/app_theme_x.dart';
import 'package:ead_app/presentation/core/text_style_x.dart';
import 'package:ead_app/presentation/routes/router.gr.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/user_card_widget.dart';

class AllUsersPage extends StatelessWidget {
  const AllUsersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.backgroundColor,
      appBar: AppBar(
        title: Text(
          "All users",
          style: context.headline1,
        ),
        leading: BackButtonWidget(
          backRoute: () => context.router.pop(),
        ),
        actions: [
          IconButton(
            onPressed: () => context.router.push(const AddUserRoute()),
            icon: const Icon(
              Icons.add_rounded,
              size: 48,
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 8.0,
        ),
        child: Column(
          children: [
            Text(
              "The list displays all the people\n"
              "who are recognized by the system.\n"
              "Therefore, all of them can step in your\n"
              "home using the face recognition feature.",
              style: context.headline3,
            ),
            const SizedBox(
              height: 16.0,
            ),
            BlocProvider(
              create: (context) {
                return getIt<AllUsersBloc>()
                  ..add(const AllUsersEvent.started());
              },
              child: BlocBuilder<AllUsersBloc, AllUsersState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loadSuccess: (state) {
                      return Expanded(
                        child: ListView.builder(
                          itemCount: state.users.length,
                          itemBuilder: (context, index) {
                            return UserCardWidget(
                              userItem: state.users[index],
                            );
                          },
                        ),
                      );
                    },
                    loadFailure: (_) => Center(
                      child: Text(
                        "Something went wrong",
                        style: context.headline1.copyWith(color: Colors.red),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
