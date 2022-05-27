import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ead_app/domain/notifications/notification_failures.dart';
import 'package:ead_app/domain/notifications/notifications.dart';
import 'package:ead_app/domain/notifications/notifications_interface.dart';
import 'package:ead_app/domain/users/value_objects.dart';

part 'answer_notification_event.dart';
part 'answer_notification_state.dart';
part 'answer_notification_bloc.freezed.dart';

@injectable
class AnswerNotificationBloc
    extends Bloc<AnswerNotificationEvent, AnswerNotificationState> {
  final NotificationsInterface _iNotification;

  AnswerNotificationBloc(this._iNotification)
      : super(const AnswerNotificationState.initial());

  @override
  Stream<AnswerNotificationState> mapEventToState(
    AnswerNotificationEvent event,
  ) async* {
    yield* event.map(
      allRightPressed: (e) async* {
        yield* _answerAs('ok', e);
      },
      ignorePressed: (e) async* {
        yield* _answerAs('ignore', e);
      },
      openPressed: (e) async* {
        yield* _answerAs('open', e);
      },
      alarmPressed: (e) async* {
        yield* _answerAs('alarm', e);
      },
    );
  }

  Stream<AnswerNotificationState> _answerAs(
    String answer,
    AnswerNotificationEvent e,
  ) async* {
    yield const AnswerNotificationState.loading();

    final failureOrSuccess = await _iNotification.answerAs(
      answer,
      e.notificationId,
    );

    yield failureOrSuccess.fold(
      (f) => AnswerNotificationState.failure(f),
      (notification) => AnswerNotificationState.success(notification),
    );
  }
}
