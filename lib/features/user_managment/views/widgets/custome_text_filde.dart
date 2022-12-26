import 'package:flutter/material.dart';
import 'package:login_app/features/resources/values_manager.dart';

class CustomeTextFild extends StatelessWidget {
  const CustomeTextFild(
      {super.key,
      required this.label,
      required this.onChanged,
      required this.width});
  final String label;
  final void Function(String) onChanged;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: AppSize.s8,
          ),
          SizedBox(
            width: width,
            height: AppSize.s40,
            child: TextField(
              textAlign: TextAlign.left,
              onChanged: onChanged,
              style: Theme.of(context).textTheme.bodyLarge,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(AppPading.p12),
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
