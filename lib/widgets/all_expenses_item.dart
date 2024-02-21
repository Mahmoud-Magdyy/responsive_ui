import 'package:flutter/material.dart';
import 'package:responsive_ui/models/all_expenses_item_header_model.dart';
import 'package:responsive_ui/widgets/inactive_and_active_all_expense_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemsModel, required this.isSelected});
  final AllExpensesItemHeaderModel itemsModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(itemsModel: itemsModel)
        : InActiveAllExpensesItem(itemsModel: itemsModel);
  }
}
