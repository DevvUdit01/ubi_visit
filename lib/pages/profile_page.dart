import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -8,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Card(
                        margin: EdgeInsets.zero,
                        color: Color(0xEA1414FA),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icon(Icons.arrow_back),
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Profile",
                                    style: TextStyle(color: Colors.white, fontSize: 19),
                                  ),
                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.search),
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.1,
                    right: 15,
                    left: 15,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Card(
                        elevation: 1,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Card(
                                      color: Color(0xF3CFCFCF),
                                      child: Icon(Icons.person, size: 50),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "User Name",
                                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                                      ),
                                      Text("user@gmail.com"),
                                      SizedBox(height: 20),
                                      InkWell(
                                        onTap: () {},
                                        child: Text(
                                          "Edit Profile",
                                          style: TextStyle(color: Color(0xFF65B5F7), fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.location_on_outlined),
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(child: Divider()),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 60,
                                          width: 60,
                                          child: Card(
                                            color: Color(0xFFFDD96D),
                                            child: Icon(Icons.storefront_sharp),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Balance",
                                                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                                              ),
                                              Text(
                                                "450",
                                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                    child: VerticalDivider(
                                      thickness: 2,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 60,
                                          width: 60,
                                          child: Card(
                                            color: Colors.transparent,
                                            child: Icon(Icons.attach_money_sharp),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Cashback",
                                                style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                                              ),
                                              Text(
                                                "000",
                                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Saved card",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 1,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check_circle),
                            SizedBox(width: 10),
                            Text("XXXX XXXX XXXX 4321"),
                            Spacer(),
                            Icon(Icons.check_box_sharp),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text("Mario Speedwagon", style: TextStyle(fontWeight: FontWeight.w600)),
                            Spacer(),
                            Text("Valid Thru"),
                            SizedBox(width: 20),
                            Text("08/28"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15, left: 15, top: 8),
              child: Text("Other details", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 85,
                            width: 100,
                            child: Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(child: Icon(Icons.qr_code_2)),
                                    Text("Scanner"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 85,
                            width: 100,
                            child: Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(child: Icon(Icons.home)),
                                    Text("Address"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 85,
                            width: 100,
                            child: Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(child: Icon(Icons.lock_open_outlined)),
                                    Text("Password"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 85,
                            width: 100,
                            child: Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(child: Icon(Icons.view_in_ar_rounded)),
                                    Text("My UPI ID"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 85,
                            width: 100,
                            child: Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(child: Icon(Icons.notifications_none)),
                                    Text("Notification"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 85,
                            width: 100,
                            child: Card(
                              elevation: 1,
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(child: Text("A")),
                                    Text("Language"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
