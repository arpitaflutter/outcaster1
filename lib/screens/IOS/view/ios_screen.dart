import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster1/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class ios_screen extends StatefulWidget {
  const ios_screen({Key? key}) : super(key: key);

  @override
  State<ios_screen> createState() => _ios_screenState();
}

class _ios_screenState extends State<ios_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Settings UI",
              style: TextStyle(color: Colors.white, letterSpacing: 0.2)),
          backgroundColor: Colors.red,
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(top: 19, left: 15),
                child: Text(
                    "Common", style: TextStyle(color: Colors.grey.shade500)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.language, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Language"),
                    Spacer(),
                    Text("English", style: TextStyle(color: Colors.grey)),
                    SizedBox(width: 20,),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(CupertinoIcons.cloud, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("environment"),
                    Spacer(),
                    Text("Production", style: TextStyle(color: Colors.grey)),
                    SizedBox(width: 20,),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(top: 19, left: 15),
                child: Text(
                    "Account", style: TextStyle(color: Colors.grey.shade500)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.call, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Phone number"),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.email, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Email"),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.output, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Sign out"),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(top: 19, left: 15),
                child: Text(
                    "Security", style: TextStyle(color: Colors.grey.shade500)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.phonelink_lock, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Lock app in background"),
                    Spacer(),
                    CupertinoSwitch(
                      value: Provider.of<home_provider>(context,listen: true).select,
                      onChanged: (value) {
                        Provider.of<home_provider>(context,listen: false).update(value);
                      },
                      activeColor: Colors.red,
                    ),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.fingerprint, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Use fingerprint"),
                    Spacer(),
                    CupertinoSwitch(
                      value: Provider.of<home_provider>(context,listen: true).select1,
                      onChanged: (value) {
                        Provider.of<home_provider>(context,listen: false).change(value);
                      },
                      activeColor: Colors.red,
                    ),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.lock, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Change passward"),
                    Spacer(),
                    CupertinoSwitch(
                      value: Provider.of<home_provider>(context,listen: true).select2,
                      onChanged: (value) {
                        Provider.of<home_provider>(context,listen: false).ch(value);
                      },
                      activeColor: Colors.red,
                    ),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey.shade200,
                padding: EdgeInsets.only(top: 19, left: 15),
                child: Text(
                    "Misc", style: TextStyle(color: Colors.grey.shade500)),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(
                        CupertinoIcons.arrow_down_doc_fill, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Terms of service"),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(
                        CupertinoIcons.arrow_down_doc_fill, color: Colors.grey),
                    SizedBox(width: 20,),
                    Text("Open source licences"),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
                    SizedBox(width: 10,),
                  ],
                ),
              ),
              Container(
                height: 1, width: double.infinity, color: Colors.grey.shade200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
