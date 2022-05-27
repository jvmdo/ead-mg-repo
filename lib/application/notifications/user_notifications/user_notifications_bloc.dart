import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/notifications/notification_failures.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/domain/notifications/notifications_interface.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'user_notifications_bloc.freezed.dart';
part 'user_notifications_event.dart';
part 'user_notifications_state.dart';

@injectable
class GetNotificationsBloc
    extends Bloc<GetNotificationsEvent, GetNotificationsState> {
  final NotificationsInterface _iNft;

  GetNotificationsBloc(this._iNft)
      : super(const GetNotificationsState.initial());

  @override
  Stream<GetNotificationsState> mapEventToState(
    GetNotificationsEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield const GetNotificationsState.loadInProgress();
        final notificationOrFailure =
            await _iNft.getUserNotifications(e.userName);
        add(GetNotificationsEvent.notificationsReceived(notificationOrFailure));
      },
      notificationsReceived: (e) async* {
        yield e.failureOrNotification.fold(
          (f) => GetNotificationsState.loadFailure(f),
          (n) => GetNotificationsState.loadSuccess(n),
        );
      },
    );
  }
}
