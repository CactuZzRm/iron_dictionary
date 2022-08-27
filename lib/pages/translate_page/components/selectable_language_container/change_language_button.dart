import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ChangeLanguageButton extends StatelessWidget {
  const ChangeLanguageButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () => print('Change language'),
      child: SvgPicture.asset('assets/Change.svg',
          width: 30, height: 30, color: theme.primaryColor),
    );
  }
}
