import 'package:flutter/material.dart';
import 'package:outcaster1/screens/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Settings UI",style: TextStyle(color: Colors.white)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15,left: 15),
                child: Text("Common",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              ),
              ListTile(
                title: Text("Language"),
                leading: Icon(Icons.language,color: Colors.grey.shade700),
                subtitle: Text("English",style: TextStyle(color: Colors.grey.shade700)),
              ),
              Container(
                height: 0.2,width: double.infinity,color: Colors.grey,
              ),
              ListTile(
                title: Text("Environment"),
                leading: Icon(Icons.cloud_outlined,color: Colors.grey.shade700),
                subtitle: Text("Production",style: TextStyle(color: Colors.grey.shade700)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15,left: 15),
                child: Text("Account",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.call,color: Colors.grey.shade700,),
                    SizedBox(width: 20,),
                    Text("Phone number",)
                  ],
                ),
              ),
              Container(
                height: 0.2,width: double.infinity,color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.email,color: Colors.grey.shade700,),
                    SizedBox(width: 20,),
                    Text("Email",)
                  ],
                ),
              ),
              Container(
                height: 0.2,width: double.infinity,color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.assignment_return_outlined,color: Colors.grey.shade700,),
                    SizedBox(width: 20,),
                    Text("Sign out")
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15,left: 15),
                child: Text("Security",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.phonelink_lock,color: Colors.grey.shade700,),
                    SizedBox(width: 20,),
                    Text("Lock app in background"),
                    Spacer(),
                    Consumer<home_provider>(
                      builder: (context, value, child) => Switch(value: Provider.of<home_provider>(context,listen: false).select,
                        onChanged: (value) {
                         Provider.of<home_provider>(context,listen: false).update(value);
                      },
                        activeColor: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 0.2,width: double.infinity,color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.fingerprint,color: Colors.grey.shade700),
                    SizedBox(width: 20,),
                    Text("Use fingerprint"),
                    Spacer(),
                    Consumer<home_provider>(
                      builder: (context, value, child) => Switch(value: Provider.of<home_provider>(context,listen: false).select1,
                        onChanged: (value) {
                           Provider.of<home_provider>(context,listen: false).change(value);
                        },
                        activeColor: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 0.2,width: double.infinity,color: Colors.grey,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Icon(Icons.lock,color: Colors.grey.shade700),
                    SizedBox(width: 20,),
                    Text("Change password"),
                    Spacer(),
                    Consumer<home_provider>(
                      builder: (context, value, child) => Switch(value: Provider.of<home_provider>(context,listen: false).select2,
                        onChanged: (value) {
                           Provider.of<home_provider>(context,listen: false).ch(value);
                        },
                        activeColor: Colors.red,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15,left: 15),
                child: Text("Misc",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
