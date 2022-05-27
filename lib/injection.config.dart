// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:cloud_functions/cloud_functions.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i27;
import 'application/auth/change_email/change_email_bloc.dart' as _i16;
import 'application/auth/change_password/change_password_bloc.dart' as _i17;
import 'application/auth/recover_password/recover_password_bloc.dart' as _i22;
import 'application/auth/sign_in/sign_in_bloc.dart' as _i23;
import 'application/auth/sign_out/sign_out_bloc.dart' as _i24;
import 'application/auth/sign_up/sign_up_bloc.dart' as _i25;
import 'application/door/watch_door/watch_door_bloc.dart' as _i26;
import 'application/notifications/answer_notification/answer_notification_bloc.dart'
    as _i13;
import 'application/notifications/notifications_history/notifications_history_bloc.dart'
    as _i21;
import 'application/notifications/user_notifications/user_notifications_bloc.dart'
    as _i20;
import 'application/users/add_user/add_user_bloc.dart' as _i11;
import 'application/users/all_users/all_users_bloc.dart' as _i12;
import 'domain/auth/auth_interface.dart' as _i14;
import 'domain/door/door_interface.dart' as _i18;
import 'domain/notifications/notifications_interface.dart' as _i7;
import 'domain/users/users_interface.dart' as _i9;
import 'infrastructure/auth/auth_repository.dart' as _i15;
import 'infrastructure/core/firebase_injectable_module.dart' as _i28;
import 'infrastructure/door/door_repository.dart' as _i19;
import 'infrastructure/notifications/notifications_repository.dart' as _i8;
import 'infrastructure/users/users_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(() => firebaseInjectableModule.auth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseFunctions>(
      () => firebaseInjectableModule.functions);
  gh.lazySingleton<_i6.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i7.NotificationsInterface>(
      () => _i8.NotificationRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.UsersInterface>(() => _i10.UsersRepository(
      get<_i4.FirebaseFirestore>(),
      get<_i6.FirebaseStorage>(),
      get<_i3.FirebaseAuth>()));
  gh.factory<_i11.AddUserBloc>(
      () => _i11.AddUserBloc(get<_i9.UsersInterface>()));
  gh.factory<_i12.AllUsersBloc>(
      () => _i12.AllUsersBloc(get<_i9.UsersInterface>()));
  gh.factory<_i13.AnswerNotificationBloc>(
      () => _i13.AnswerNotificationBloc(get<_i7.NotificationsInterface>()));
  gh.lazySingleton<_i14.AuthInterface>(() => _i15.AuthRepository(
      get<_i3.FirebaseAuth>(),
      get<_i4.FirebaseFirestore>(),
      get<_i6.FirebaseStorage>(),
      get<_i5.FirebaseFunctions>()));
  gh.factory<_i16.ChangeEmailBloc>(
      () => _i16.ChangeEmailBloc(get<_i14.AuthInterface>()));
  gh.factory<_i17.ChangePasswordBloc>(
      () => _i17.ChangePasswordBloc(get<_i14.AuthInterface>()));
  gh.lazySingleton<_i18.DoorInterface>(
      () => _i19.DoorRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i20.GetNotificationsBloc>(
      () => _i20.GetNotificationsBloc(get<_i7.NotificationsInterface>()));
  gh.factory<_i21.NotificationsHistoryBloc>(
      () => _i21.NotificationsHistoryBloc(get<_i7.NotificationsInterface>()));
  gh.factory<_i22.RecoverPasswordBloc>(
      () => _i22.RecoverPasswordBloc(get<_i14.AuthInterface>()));
  gh.factory<_i23.SignInBloc>(() => _i23.SignInBloc(get<_i14.AuthInterface>()));
  gh.factory<_i24.SignOutBloc>(
      () => _i24.SignOutBloc(get<_i14.AuthInterface>()));
  gh.factory<_i25.SignUpBloc>(() => _i25.SignUpBloc(get<_i14.AuthInterface>()));
  gh.factory<_i26.WatchDoorBloc>(
      () => _i26.WatchDoorBloc(get<_i18.DoorInterface>()));
  gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(get<_i14.AuthInterface>()));
  return get;
}

class _$FirebaseInjectableModule extends _i28.FirebaseInjectableModule {}
