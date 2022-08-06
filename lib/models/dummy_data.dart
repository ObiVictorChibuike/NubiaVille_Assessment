import 'package:flutter/material.dart';

class DummyData {
  DummyData._();

  static const defaultImageUrl = "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png";

  static final titleWidgets = [
    TitleWidgets(
      textTitle: const Text("Date", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w700)),
      isClicked: true,
    ),
    TitleWidgets(
        textTitle: const Text("Merchant", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w700)),
        isClicked: false,
    ),
    TitleWidgets(
        textTitle: const Text("Total", style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w700)),
        isClicked: false,
    ),
  ];

  static final expenseRecord = [
    {
      "Date": "07/30/2022",
      "Merchant": "Shuttle",
      "Amount": "\$276.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Rental Car",
      "Amount": "\$261.00"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$281.22"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Rental Car",
      "Amount": "\$135.19"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$432.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Taxi",
      "Amount": "\$287.00"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Taxi",
      "Amount": "\$43.01"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Hotel",
      "Amount": "\$36.00"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$55.54"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$39.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Electronics",
      "Amount": "\$90.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$137.51"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Suite",
      "Amount": "\$35.18"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Hotel",
      "Amount": "\$200.04"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Shuttle",
      "Amount": "\$276.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Rental Car",
      "Amount": "\$261.00"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$281.22"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Rental Car",
      "Amount": "\$135.19"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$432.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Taxi",
      "Amount": "\$287.00"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Taxi",
      "Amount": "\$43.01"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Hotel",
      "Amount": "\$36.00"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$241.10"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$261.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Fast Food",
      "Amount": "\$261.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$261.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Rental Car",
      "Amount": "\$261.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$86.29"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$45.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Electronics",
      "Amount": "\$54.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Restaurant",
      "Amount": "\$54.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Shuttle",
      "Amount": "\$54.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Taxi",
      "Amount": "\$54.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Shuttle",
      "Amount": "\$276.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Rental Car",
      "Amount": "\$261.00"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$281.22"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Rental Car",
      "Amount": "\$135.19"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Parking",
      "Amount": "\$432.82"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Taxi",
      "Amount": "\$287.00"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Taxi",
      "Amount": "\$43.01"
    },
    {
      "Date": "07/30/2022",
      "Merchant": "Hotel",
      "Amount": "\$36.00"
    },
  ];


}

class TitleWidgets{
  final Widget? textTitle;
  bool? isClicked = false;
  TitleWidgets({this.textTitle, this.isClicked});
}
