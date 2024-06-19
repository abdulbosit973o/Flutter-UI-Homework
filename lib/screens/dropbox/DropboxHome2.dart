import 'package:flutter/material.dart';

class DropboxCloudPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.blue,
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.cloud, color: Colors.white),
                  SizedBox(width: 8.0),
                  Text('0GB / 100GB', style: TextStyle(color: Colors.white)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 100.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      FolderCard(title: 'My Developments', date: 'Created on 12-02-2020'),
                      FolderCard(title: 'Dribbble', date: 'Created on 18-06-2020'),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      FileCard(title: 'Brandbook.PDF', icon: Icons.picture_as_pdf),
                      FileCard(title: 'Landing Page.sketch', icon: Icons.image),
                      FileCard(title: 'Dashboard.sketch', icon: Icons.image),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FolderCard extends StatelessWidget {
  final String title;
  final String date;

  FolderCard({required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.folder, size: 40.0, color: Colors.blue),
          SizedBox(height: 8.0),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(date, style: TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }
}

class FileCard extends StatelessWidget {
  final String title;
  final IconData icon;

  FileCard({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
      ),
    );
  }
}