import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/custom_background_container.dart';
import 'package:responsive_ui/features/my_card/widgets/my_cards_section.dart';
import 'package:responsive_ui/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
return const CustomBackgroundContainer(child: Column(
  children: [
    MyCardsSection(),
    Divider(height: 40,color: Color(0xffF1F1F1),),
    TransactionHistory(),
    
  ],
));
  }
}