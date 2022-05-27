import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ead_app/application/users/add_user/add_user_bloc.dart';
import 'package:ead_app/injection.dart';
import 'package:ead_app/presentation/users/add_user/add_user_form.dart';
import 'package:ead_app/presentation/widgets/back_button_widget.dart';
import 'package:ead_app/presentation/widgets/dismiss_keyboard_widget.dart';
import 'package:ead_app/presentation/widgets/loading_screen_widget.dart';

class AddUserPage extends StatelessWidget {
  const AddUserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DismissKeyboardWidget(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: BackButtonWidget(
            backRoute: () => context.router.pop(),
          ),
        ),
        body: BlocProvider(
          create: (context) => getIt<AddUserBloc>(),
          child: BlocConsumer<AddUserBloc, AddUserState>(
            builder: (context, states) {
              return states.map(
                editingForm: (state) {
                  return AddUserForm(context: context, state: state);
                },
                uploadingInProgress: (_) {
                  final state = AddUserState.initial() as EditingForm;
                  return LoadingScreenWidget(
                    actualScreen: AddUserForm(context: context, state: state),
                  );
                },
                addedFailure: (_) {
                  final formState = AddUserState.initial() as EditingForm;
                  return AddUserForm(
                    context: context,
                    state: formState,
                  ).build(context);
                },
                addedSuccess: (_) {
                  final formState = AddUserState.initial() as EditingForm;
                  return AddUserForm(context: context, state: formState);
                },
              );
            },
            listener: (context, state) {
              if (state is AddedFailure) {
                FlushbarHelper.createError(
                  title: 'Something went wrong',
                  duration: const Duration(seconds: 5),
                  message: state.failure.maybeMap(
                    currentUserUnavailable: (_) =>
                        'Your auth token is unavailable. ' +
                        'Please, reauthenticate into the app.',
                    uploadError: (_) =>
                        'Could not upload data. Please, try again.',
                    serverError: (_) => 'Server error.',
                    orElse: () => 'It should not been happened.',
                  ),
                ).show(context);
              } else if (state is AddedSuccess) {
                FlushbarHelper.createSuccess(
                  title: 'New user added successfully',
                  duration: const Duration(seconds: 5),
                  message: 'Please, wait few seconds ' +
                      'until the system processes him/her images.',
                ).show(context);

                Future.delayed(const Duration(seconds: 6))
                    .then((_) => context.router.pop());
              }
            },
          ),
        ),
      ),
    );
  }
}
