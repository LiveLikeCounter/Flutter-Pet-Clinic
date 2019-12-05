import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/card.dart';

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';

  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: SvgPicture.asset('assets/images/menu.svg'),
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset('assets/images/BellAndNotification.svg'),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              height: 136,
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Your Pet\'s',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'is here now!',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: <Widget>[
              card(context, 'MyProfile', 'svg', 'My Profile'),
              card(context, 'MyPets', 'svg', 'My Pets'),
              card(context, 'Appointments', 'svg', 'Appointments'),
              card(context, 'MedicalRecords', 'svg', 'Medical Records'),
              card(context, 'Notifications', 'svg', 'Notifications')
            ],
          ),
        ],
      ),
    );
  }
}
