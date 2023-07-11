import 'package:flutter/material.dart';
import 'package:himachali_rishta/helpers/dimension_helper.dart';
import 'package:himachali_rishta/widgets/standard_app_bar.dart';
import 'package:sizer/sizer.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
        stream: Stream.periodic(const Duration(milliseconds: 100), (_) {
          return SizerUtil.orientation == Orientation.landscape;
        }),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                body: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: snapshot.data! ? 700 : 100.w,
                      child: Column(
                        children: [
                          const StandardAppBar(title: 'Payment'),
                          SizedBox(
                            height: 4.sp.adjustedSp,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.sp.adjustedSp,
                                  vertical: 8.0.sp.adjustedSp),
                              child: ListView(
                                children: [
                                  Text(
                                    'You can also make payment with following methods',
                                    style: TextStyle(
                                        fontSize: 11.sp.adjustedSp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 8.sp.adjustedSp,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          8.sp.adjustedSp),
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .secondaryHeaderColor,
                                          width: 0.5.sp.adjustedSp),
                                    ),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.all(8.0.sp.adjustedSp),
                                      child: Column(
                                        children: [
                                          Text(
                                            'BANK DEPOSIT',
                                            style: TextStyle(
                                                fontSize: 12.sp.adjustedSp,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                          ),
                                          Table(
                                            children: [
                                              TableRow(children: [
                                                Text(
                                                  'Bank Name',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  'HDFC Bank',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Text(
                                                  'Account Name',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  'Shukri Digisol Services Pvt Ltd.',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Text(
                                                  'Account Number',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  '50200054503996',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Text(
                                                  'IFSC Code',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  'HDFC0000020',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Text(
                                                  'Account Type',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  'Current Account',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ]),
                                              TableRow(children: [
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                                SizedBox(
                                                  height: 8.sp.adjustedSp,
                                                ),
                                              ]),
                                              TableRow(children: [
                                                Text(
                                                  'Branch',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                Text(
                                                  'Kalkaji, New Delhi',
                                                  style: TextStyle(
                                                      fontSize:
                                                          10.sp.adjustedSp,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ]),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.sp.adjustedSp,
                                          ),
                                          Image.asset(
                                            'assets/images/Canara-banks.gif',
                                            width: 50.w.adjustedW,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.sp.adjustedSp,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Phone Pay, PayTM, Google Pay, UPI Number',
                                        style: TextStyle(
                                            fontSize: 12.sp.adjustedSp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.sp.adjustedSp,
                                  ),
                                  Image.asset(
                                    'assets/images/Screenshot 2023-07-02 at 5.22.24 AM.png',
                                    height: 70.h.adjustedH,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  color: Theme.of(context).primaryColor,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0.sp.adjustedSp),
                                    child: Text(
                                      'Need help? Call 987654321',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp.adjustedSp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ));
          }
          return const SizedBox();
        });
  }
}
