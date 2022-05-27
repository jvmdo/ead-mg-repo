import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/notifications/notification_failures.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/domain/notifications/notifications_interface.dart';

part 'notifications_history_bloc.freezed.dart';
part 'notifications_history_event.dart';
part 'notifications_history_state.dart';

@injectable
class NotificationsHistoryBloc
    extends Bloc<NotificationsHistoryEvent, NotificationsHistoryState> {
  final NotificationsInterface _iNotification;

  NotificationsHistoryBloc(this._iNotification)
      : super(const NotificationsHistoryState.initial());

  StreamSubscription<Either<NotificationFailures, List<Notification>>>?
      _notificationsStreamSubscription;

  @override
  Stream<NotificationsHistoryState> mapEventToState(
    NotificationsHistoryEvent event,
  ) async* {
    yield* event.map(
      started: (_) async* {
        yield const NotificationsHistoryState.loadInProgress();
        await _notificationsStreamSubscription?.cancel();
        await _iNotification.subscribeToTopic();

        _notificationsStreamSubscription =
            _iNotification.queryNotificationsByName(null).listen(
                  (failureOrNotification) => add(
                    NotificationsHistoryEvent.notificationsReceived(
                      failureOrNotification,
                    ),
                  ),
                );
      },
      queryNotificationsByName: (e) async* {
        yield const NotificationsHistoryState.loadInProgress();
        await _notificationsStreamSubscription?.cancel();

        _notificationsStreamSubscription =
            _iNotification.queryNotificationsByName(e.queryName).listen(
                  (failureOrNotifications) => add(
                    NotificationsHistoryEvent.notificationsReceived(
                      failureOrNotifications,
                    ),
                  ),
                );
      },
      queryNotificationsByAnswer: (e) async* {
        yield const NotificationsHistoryState.loadInProgress();
        final failureOrNotifications =
            await _iNotification.getNotificationsByAnswer(e.queryAnswer);

        add(
          NotificationsHistoryEvent.notificationsReceived(
            failureOrNotifications,
          ),
        );
      },
      notificationsReceived: (e) async* {
        yield e.failureOrNotifications.fold(
          (f) => NotificationsHistoryState.loadFailure(f),
          (n) => NotificationsHistoryState.loadSuccess(n),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _notificationsStreamSubscription?.cancel();
    return super.close();
  }
}
