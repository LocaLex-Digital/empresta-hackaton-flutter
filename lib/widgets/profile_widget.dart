import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget(
  ) : super();

  final name = 'Yghor Ribas';

  String getInitials(String initials) => initials.isNotEmpty
    ? initials.trim().split(' ').map((l) => l[0]).take(2).join()
    : '';

  @override
  Widget build(BuildContext context) => CircleAvatar(
    backgroundColor: Color(0xFF012E6E),
    child: Text(getInitials(name),),
  );
}
