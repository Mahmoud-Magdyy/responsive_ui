import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_ui/features/income/widgets/income_section.dart';
import 'package:responsive_ui/features/my_card/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistorySection(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}
