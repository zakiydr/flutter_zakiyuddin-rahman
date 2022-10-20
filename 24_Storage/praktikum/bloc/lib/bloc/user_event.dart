// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class CheckUser extends UserEvent {
  BuildContext? context;
  CheckUser({
    this.context,
  });
}

class Initial extends UserEvent {}

class IsLogin extends UserEvent {
  bool newUser;
  IsLogin({
    required this.newUser,
  });
}

class AddName extends UserEvent {
  String username;
  AddName({
    required this.username,
  });
}

class AddEmail extends UserEvent {
  String email;
  AddEmail({
    required this.email,
  });
}


class RemoveName extends UserEvent {}

class RemoveEmail extends UserEvent {
  // String email;
  // RemoveEmail({
  //   required this.email,
  // });
}

class PasswordToggle extends UserEvent {}
