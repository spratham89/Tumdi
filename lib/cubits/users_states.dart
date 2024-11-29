part of 'users_cubit.dart';

@freezed
class UsersStates with _$UsersStates {
  const factory UsersStates.initial() = _Initial;
  const factory UsersStates.loading() = _Loading;
  const factory UsersStates.success(List<User> users) = _Success;
  const factory UsersStates.error(String errorMessage) = _Error;
}
