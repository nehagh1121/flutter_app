
import 'package:flutter/material.dart';
import 'package:flutter_app/personaldetailform.dart';

class attendance extends StatefulWidget {
  @override
  _attendance createState() => _attendance();
}

class _attendance extends State<attendance>
    with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        tabs: [
          new Tab(
            text: "Personal Details",
          ),
          new Tab(
            text: "Employment",
          ),
        ],
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.blueGrey,
        indicatorColor: Colors.blue,
        controller: _tabController,
      ),
      body: TabBarView(children: [
        personaldetailform(),
        new Text("Employment Details View"),
      ], controller: _tabController),
    );
  }
}
