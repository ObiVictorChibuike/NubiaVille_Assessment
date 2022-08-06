import 'package:assessment/constants/asset_path.dart';
import 'package:assessment/models/dummy_data.dart';
import 'package:assessment/src/custom_shared_widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/color_palette.dart';
import '../../../shared_widget/custom_form_field.dart';

class HomeScreen extends StatefulWidget {
  final DrawerIndex? drawerItem;
  final Widget? screenView;
  const HomeScreen({Key? key, this.drawerItem, this.screenView}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> expenseRecord = DummyData.expenseRecord;
  var amount = "\$7000.00";
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  var isObscured = true;
  late DrawerIndex drawerIndex;


  @override
  void initState() {
    _setDrawerListArray();
    drawerIndex = widget.drawerItem ?? DrawerIndex.dashboard;
    super.initState();
  }

  late List<DrawerList> drawerList;
  void _setDrawerListArray() {
    drawerList = <DrawerList>[
      DrawerList(
        index: DrawerIndex.dashboard,
        labelName: 'Dashboard',
        icon: const Icon(Icons.dashboard),
      ),
      DrawerList(
        index: DrawerIndex.history,
        labelName: 'History',
        icon: const Icon(Icons.history),
      ),
      DrawerList(
        index: DrawerIndex.notifications,
        labelName: 'Notifications',
        icon: const Icon(Icons.notifications),
      ),
      DrawerList(
        index: DrawerIndex.account,
        labelName: 'Account',
        icon: const Icon(Icons.account_box),
      ),
    ];
  }

  helpDialog(){
    showDialog(context: context, barrierDismissible: false,
        builder: (BuildContext context){
          return Dialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(height: MediaQuery.of(context).size.height / 2.8,width: double.infinity, padding: const EdgeInsets.all(20),
                child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome to Expense \nManager", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                    const SizedBox(height: 20,),
                    Text("This is a sample Progressive Mobile App\n Try adding it to your home screen and "
                        "using it offline. \n The Demo is built with flutter and Dart. You can find the source code and fork the project on Github",
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black54, fontSize: 16),),
                    const SizedBox(height: 10,),

                    ButtonWidget(onPressed: (){
                      Navigator.of(context).pop();
                    }, buttonText: "Got it!", height: 35, width: 100, buttonColor:  const Color(0xffDAD3C8),)
                  ],
                ),
              )
          );}
    );
  }

  customAdditionDialog(){
    showDialog(context: context, barrierDismissible: false,
        builder: (BuildContext context){
          return Dialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(height: MediaQuery.of(context).size.height / 3.4,width: double.infinity, padding: const EdgeInsets.all(20),
                child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Edit Expense", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                    const SizedBox(height: 20,),
                    Text("Merchant", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black54, fontSize: 16),),
                    const AppTextField(),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        ButtonWidget(onPressed: (){}, buttonText: "Save", height: 35, width: 100, buttonColor:  const Color(0xffDAD3C8),),
                        const SizedBox(width: 10,),
                        ButtonWidget(onPressed: (){
                          Navigator.of(context).pop();
                        }, buttonText: "Cancel", height: 35, width: 100, buttonColor: Colors.grey.withOpacity(0.5),),
                      ],
                    )
                  ],
                ),
              )
          );}
    );
  }

  customDetailsDialog({required String value}){
    showDialog(context: context, barrierDismissible: false,
        builder: (BuildContext context){
          return Dialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(height: MediaQuery.of(context).size.height / 3.4,width: double.infinity, padding: const EdgeInsets.all(20),
              child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Edit Expense", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),),
                  const SizedBox(height: 20,),
                  Text("Merchant", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black54, fontSize: 16),),
                  AppTextField(
                    initialValue: value,
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      ButtonWidget(onPressed: (){}, buttonText: "Save", height: 35, width: 100, buttonColor:  const Color(0xffDAD3C8),),
                      const SizedBox(width: 10,),
                      ButtonWidget(onPressed: (){
                        Navigator.of(context).pop();
                      }, buttonText: "Cancel", height: 35, width: 100, buttonColor: Colors.grey.withOpacity(0.5),),
                    ],
                  )
                ],
              ),
            )
          );}
    );
  }



  Widget inkwell(DrawerList listData) {
    return InkWell(
      onTap: () {

      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 14),
        child: Stack(
          children: <Widget>[
            drawerIndex == listData.index ?
            Container(
              width: MediaQuery.of(context).size.width,
              height: 46,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F5F8),
                // color: listData.index == DrawerIndex.sendAlert? const Color(0xFFFFF4F4) : const Color(0xFFF1F5F8),
                borderRadius: BorderRadius.circular(4),
              ),
            ) : const SizedBox(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 46,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Row(
                  children: <Widget>[
                    listData.isAssetsImage ? SizedBox(width: 24, height: 24,
                      child: Image.asset(listData.imageName, color: listData.index == DrawerIndex.history ? Colors.red : drawerIndex == listData.index ?  const Color(0xffDAD3C8) : const Color(0xFFA0A4A8)),)
                        : Icon(listData.icon?.icon, size: 19, color: drawerIndex == listData.index ?  const Color(0xffDAD3C8) : const Color(0xFFA0A4A8)
                      //     color: listData.index == DrawerIndex.sendAlert? kAlertError :
                      // drawerIndex == listData.index ? kPrimaryColor : const Color(0xFFA0A4A8)
                    ),
                    const SizedBox(width: 16,),
                    Expanded(
                      child: Text(listData.labelName, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,
                        color: drawerIndex == listData.index ?  const Color(0xffDAD3C8) : const Color(0xFFA0A4A8),
                        // color: listData.index == DrawerIndex.sendAlert? kAlertError :
                        // drawerIndex == listData.index ? kPrimaryColor : const Color(0xFFA0A4A8),
                      ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(top: false, bottom: false,
        child: Scaffold(key: _scaffoldKey,
          drawer:  Drawer(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24,24,24,24),
                child: SizedBox(
                  width: double.maxFinite, height: double.maxFinite,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Container(height: 48, width: 48,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.grey.withOpacity(0.15),
                              image: DecorationImage(image: NetworkImage(DummyData.defaultImageUrl),
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        const SizedBox(width: 14,),
                        Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: const Text("Change Photo", style: TextStyle(color:  Color(0xffDAD3C8),
                                decoration: TextDecoration.underline, fontSize: 15, fontWeight: FontWeight.bold),),),)
                      ],
                      ),
                      const SizedBox(height: 24,),
                      Text("Jason Victor",
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16,),),
                      Text("JayVictor999@gmail.com",
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16,),),
                      Text("Lagos State",
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16,),),
                      const SizedBox(height: 16,),
                      const Divider(thickness: 1.1, height: 1, color: Color(0xFFC4C4C4),),
                      const SizedBox(height: 26,),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Column(
                                  children: List.generate(drawerList.length, (index) => inkwell(drawerList[index]),
                                  )),
                              InkWell(
                                onTap: (){
                                  Navigator.of(context).pop();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 11, top: 11),
                                  child: Row(
                                    children: const [
                                      Icon(Icons.power_settings_new_rounded, size: 19, color:  Color(0xFFA0A4A8)),
                                      SizedBox(width: 16,),
                                      Expanded(
                                        child: Text("Logout", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,
                                          color: Color(0xFFA0A4A8),),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          floatingActionButton:
          FloatingActionButton(onPressed: (){
            customAdditionDialog();
          }, backgroundColor:  const Color(0xffDAD3C8), child: const Icon(Icons.add, color: Colors.black,),),
          body: Column(
            children: [
              const SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell( onTap: ()=> _scaffoldKey.currentState!.openDrawer(),
                        child: SvgPicture.asset(AssetPath.hamburgerIcon)),
                    Text("Hello, Jason", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w400)),
                    SvgPicture.asset(AssetPath.notifications)
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: const Color(0xffDAD3C8),),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(alignment: Alignment.centerLeft,
                              child: Text("Amount to be \nreimbursed", style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),)),
                          IconButton(onPressed: (){
                            helpDialog();
                          }, icon: const Icon(Icons.help, size: 25, color: Colors.black,))
                        ],
                      ),
                      Row(
                        children: [
                          Text(isObscured == true ? "*******" : amount, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 20, fontWeight: FontWeight.w700,),),
                          IconButton(onPressed: (){
                            setState(() {
                              isObscured = !isObscured;
                            });
                          }, icon: Icon(isObscured == true ? Icons.visibility_rounded : Icons.visibility_off, color: Colors.black,)),
                          const Spacer(),
                          Text("Filter", style: Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.black54, fontSize: 17, fontWeight: FontWeight.w700),),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.filter_list, size: 20,))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              Container(height: 50, width: double.infinity, decoration: BoxDecoration(
                color: kWhite,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, -5), // changes position of shadow
                  ),
                ]
              ),
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text("Date", style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w700)),
                          Column(
                            children: const [
                              Icon(Icons.arrow_drop_up, color: Colors.grey,),
                              Icon(Icons.arrow_drop_down, color: Colors.grey,)
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Merchant", style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w700)),
                          Column(
                            children: const [
                              Icon(Icons.arrow_drop_up, color: Colors.grey,),
                              Icon(Icons.arrow_drop_down, color: Colors.grey,)
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Total", style: TextStyle(color: Colors.black54, fontSize: 15, fontWeight: FontWeight.w700)),
                          Column(
                            children: const [
                              Icon(Icons.arrow_drop_up, color: Colors.grey,),
                              Icon(Icons.arrow_drop_down, color: Colors.grey,)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
              ),
              const SizedBox(height: 5,),
              Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        ...List.generate(expenseRecord.length, (index){
                          return InkWell(
                            onTap: (){
                              customDetailsDialog(value: expenseRecord[index]["Merchant"],);
                            },
                            child: Column(
                              children: [
                                ListTile(
                                  dense: true,  visualDensity: const VisualDensity(vertical: -4),
                                  leading: Text(expenseRecord[index]["Date"], textAlign: TextAlign.start, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),),
                                  title: Padding(
                                    padding: const EdgeInsets.only(left: 48.0),
                                    child: Text(expenseRecord[index]["Merchant"], textAlign: TextAlign.start, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),),
                                  ),
                                  trailing: Text(expenseRecord[index]["Amount"], textAlign: TextAlign.start, style: Theme.of(context).textTheme.bodyText1?.copyWith(fontWeight: FontWeight.w400, fontSize: 18),),
                                ),
                                const Divider()
                              ],
                            ),
                          );
                        })
                      ],
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}

class DrawerList {
  DrawerList({
    this.isAssetsImage = false,
    this.labelName = '',
    this.icon,
    this.index,
    this.imageName = '',
  });

  String labelName;
  Icon? icon;
  bool isAssetsImage;
  String imageName;
  DrawerIndex? index;
}

enum DrawerIndex {
  dashboard,
  history,
  notifications,
  account,
}
