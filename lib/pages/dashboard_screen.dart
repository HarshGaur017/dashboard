import 'package:dashboard/pages/rightpanel.dart';
import 'package:dashboard/widgets/chart.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[200],
              prefixIcon: Icon(Icons.search, color: Colors.black),
              hintText: 'Search',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/logo.png'),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo.png'),
                    radius: 30.0,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Pooja Mishra',
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    'Admin',
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Employees'),
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text('Attendance'),
            ),
            ListTile(
              leading: Icon(Icons.summarize),
              title: Text('Summary'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Information'),
            ),
            ExpansionTile(
              leading: Icon(Icons.workspaces_filled),
              title: Text('WORKSPACES'),
              children: <Widget>[
                ListTile(
                  title: Text('Adstacks'),
                ),
                ListTile(
                  title: Text('Finance'),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ETHEREUM 2.0',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Top Rating Project',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Trending project and high rating Project Created by team.',
                          style: TextStyle(color: Colors.white, fontSize: 14.0),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: Text('Learn More'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Image.asset(
                    'assets/images/ethereum.png',
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'All Projects',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  ProjectCard(
                    title: 'Technology behind the Blockchain',
                    projectNumber: '#1',
                    isEditable: true,
                  ),
                  ProjectCard(
                    title: 'Technology behind the Blockchain',
                    projectNumber: '#1',
                    isEditable: false,
                  ),
                  ProjectCard(
                    title: 'Technology behind the Blockchain',
                    projectNumber: '#1',
                    isEditable: false,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Top Creators',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  CreatorTile(
                    name: '@maddison_c21',
                    artworks: '9821',
                    rating: '5.0',
                  ),
                  CreatorTile(
                    name: '@karl.wil02',
                    artworks: '7032',
                    rating: '4.5',
                  ),
                  CreatorTile(
                    name: '@maddison_c21',
                    artworks: '9821',
                    rating: '5.0',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Overall Performance Over The Years',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueGrey[900],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Placeholder(
                fallbackHeight: 200,
                color: Colors.white,
                child: PerformanceChart(),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              child: Column(
                children: [DashboardPanel()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String projectNumber;
  final bool isEditable;

  ProjectCard({
    required this.title,
    required this.projectNumber,
    this.isEditable = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isEditable ? Colors.red[900] : Colors.blueGrey[800],
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          'Project $projectNumber',
          style: TextStyle(color: Colors.white54),
        ),
        trailing: isEditable
            ? Icon(Icons.edit, color: Colors.white)
            : SizedBox.shrink(),
      ),
    );
  }
}

class CreatorTile extends StatelessWidget {
  final String name;
  final String artworks;
  final String rating;

  CreatorTile({
    required this.name,
    required this.artworks,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(16.0),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/images/logo2.png'),
        radius: 30.0,
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        '$artworks Artworks',
        style: TextStyle(color: Colors.white54),
      ),
      trailing: Text(
        rating,
        style: TextStyle(color: Colors.amber, fontSize: 18.0),
      ),
    );
  }
}

class BirthdayAnniversaryCard extends StatelessWidget {
  final String title;
  final String total;
  final String buttonText;

  BirthdayAnniversaryCard({
    required this.title,
    required this.total,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          'Total: $total',
          style: TextStyle(color: Colors.white54),
        ),
        trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
          child: Text(buttonText),
        ),
      ),
    );
  }
}
