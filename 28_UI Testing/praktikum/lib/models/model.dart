import 'package:equatable/equatable.dart';

class ContactModel extends Equatable {
  // final String id;
  final String name;
  final String phone;
  const ContactModel({
    // required this.id,
    required this.name,
    required this.phone,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [name, phone];
}
