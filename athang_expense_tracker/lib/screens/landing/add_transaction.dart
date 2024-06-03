import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  TextEditingController _statement = TextEditingController();
  TextEditingController _date = TextEditingController();
  TextEditingController _account = TextEditingController();
  TextEditingController _expense = TextEditingController();
  TextEditingController _amount = TextEditingController();
  TextEditingController _add_bill = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text(
          'Add Transaction',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: TextFormField(
                      autofocus: true,
                      controller: _statement,
                      // onEditingComplete: () {
                      //   passwordFocusNode.requestFocus();
                      // },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Statement'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your statement';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    child: TextFormField(
                      autofocus: true,
                      controller: _date,
                      // onEditingComplete: () {
                      //   passwordFocusNode.requestFocus();
                      // },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Date'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your date';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    child: TextFormField(
                      autofocus: true,
                      controller: _account,
                      // onEditingComplete: () {
                      //   passwordFocusNode.requestFocus();
                      // },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Account'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your account';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    child: TextFormField(
                      autofocus: true,
                      controller: _expense,
                      // onEditingComplete: () {
                      //   passwordFocusNode.requestFocus();
                      // },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Expense'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your expense';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    child: TextFormField(
                      autofocus: true,
                      controller: _amount,
                      // onEditingComplete: () {
                      //   passwordFocusNode.requestFocus();
                      // },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Amount'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your amount';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: TextFormField(
                      autofocus: true,
                      controller: _add_bill,
                      // onEditingComplete: () {
                      //   passwordFocusNode.requestFocus();
                      // },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Add Bill'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your bill';
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Column(children: [
                Container(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    // null on pressed parameter will disable the button

                    onPressed: null,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            child: const Text('Confirm'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]))
        ],
      ),
    );
  }
}
