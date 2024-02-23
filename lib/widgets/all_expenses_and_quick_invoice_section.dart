import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/all_expinses.dart';
import 'package:responsive_ui/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        
        AllExpenses(),
        SizedBox(height: 24,),
        QuickInvoice(),
      ],
    );
  }
}
