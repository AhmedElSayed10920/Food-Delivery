import 'package:deliveryapp/core/app_assets/app_colors.dart';
import 'package:deliveryapp/core/app_assets/app_size.dart';
import 'package:flutter/material.dart';

class HavingOrNotHaveAnAccount extends StatelessWidget {
  const HavingOrNotHaveAnAccount({
    super.key,
    required this.askMessage,
    required this.inkWellLabel,
    this.onTap,
  });
  final String askMessage;
  final String inkWellLabel;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          askMessage,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        const SizedBox(
          width: AppSize.s5,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            inkWellLabel,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(color: AppColors.primaryColor),
          ),
        )
      ],
    );
  }
}
