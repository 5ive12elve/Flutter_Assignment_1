import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[900], // Set the background color to dark purple
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height * 7.5),
          child: AppBar(
            backgroundColor: Colors.black.withOpacity(0.2),
            toolbarHeight: AppBar().preferredSize.height * 7.5,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 10),
                      child: IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Open the drawer
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15, right: 10),
                      child: IconButton(
                        icon: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // Add your notification action here
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.1),
                  radius: 70, // Adjust the radius to make it smaller
                  child: CircleAvatar(
                    radius: 66, // Adjust the radius of the inner CircleAvatar
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage('https://your-image-url-here'),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "MICHAEL SAMUEL",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  "Bio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 3),
                SizedBox(
                  width: 700,
                  height: 80, // Adjust the height as needed
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Share your thoughts...',
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height * 1 / 14),
              child: Container(
                color: Colors.black.withOpacity(0.2),
                padding: EdgeInsets.only(top: 5), // Add padding to the top
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.image,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        // Add your image upload action here
                      },
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your post action here
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.yellow,
                          onPrimary: Colors.black,
                          textStyle: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                        ),
                        child: Text("POST"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            centerTitle: true,
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    ),
  );
}
