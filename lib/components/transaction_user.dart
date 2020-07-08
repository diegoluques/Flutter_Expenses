import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_expenses/models/transaction.dart';
import 'package:flutter_expenses/components/transaction_form.dart';
import 'package:flutter_expenses/components/transaction_list.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transaction = [
    Transaction(
      id: "1",
      title: "Novo Tênis de Corrida",
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: "2",
      title: "Conta de Luz",
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );

    setState(() {
      _transaction.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionForm(_addTransaction),
        TransactionList(_transaction),
      ],
    );
  }
}