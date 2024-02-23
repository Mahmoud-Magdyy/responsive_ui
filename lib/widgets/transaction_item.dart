import 'package:flutter/material.dart';
import 'package:responsive_ui/models/transaction_model.dart';
import 'package:responsive_ui/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(transactionModel.date,
            style: AppStyles.styleRegular16
                .copyWith(color: const Color(0xffAAAAAA))),
        trailing: Text(transactionModel.amount,
            style: AppStyles.styleSemiBold20.copyWith(
                color: transactionModel.isWithdrawal
                    ? const Color(0xFFF3735E)
                    : Colors.green)),
      ),
    );
  }
}
