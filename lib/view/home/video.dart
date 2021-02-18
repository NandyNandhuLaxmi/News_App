import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            InkWell(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1612550761236-e813928f7271?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjB8fGJ1c3NpbmVzc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover)),
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Bussiness',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800),
                    )),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bussiness()),
                );
              },
            ),
            InkWell(
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1504610926078-a1611febcad3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzB8fHRlY2hub2xvZ3l8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                          fit: BoxFit.cover)),
                  child: Container(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Technology',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800),
                      )),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Technology()),
                  );
                }),
            InkWell(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1530789253388-582c481c54b0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8dHJhdmVsfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover)),
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Travel',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800),
                    )),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Travel()),
                );
              },
            ),
            InkWell(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1564684253335-0fa7749097e5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDZ8fHJlbGlnaW9ufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover)),
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Religions',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800),
                    )),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Religions()),
                );
              },
            ),
            InkWell(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                margin: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1506111583091-becfd4bfa05d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8d29ybGR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                        fit: BoxFit.cover)),
                child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'World',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800),
                    )),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => World()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

///Bussiness
class Bussiness extends StatefulWidget {
  @override
  _BussinessState createState() => _BussinessState();
}

class _BussinessState extends State<Bussiness> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFAFAFA),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
          ),
          onPressed: () => Navigator.pop(context),
          // onPressed: () => Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => Login()))
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aiming for higher Mastopexy',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('shooting star'.toUpperCase())
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 1, 5.0, 1),
                    child: Align(
                      alignment: FractionalOffset(0.0, 0.0),
                      child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              AssetImage('assets/images/news.jpg')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  'Contrary to popular belief, Loreum Ipsum is no  simply text. Its has roots in a piece of classical Latin Structure from 45 BC, aking its over 2000 millions years.'),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Pueraria mirifica and study now',
                style: TextStyle(
                    color: Color(0xFF000000), fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF2E2A43),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Remove to keep Young',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Color(0xFFE8E8E8),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

///Technology
class Technology extends StatefulWidget {
  @override
  _TechnologyState createState() => _TechnologyState();
}

class _TechnologyState extends State<Technology> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFAFAFA),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
          ),
          onPressed: () => Navigator.pop(context),
          // onPressed: () => Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => Login()))
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aiming for higher Mastopexy',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('shooting star'.toUpperCase())
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 1, 5.0, 1),
                    child: Align(
                      alignment: FractionalOffset(0.0, 0.0),
                      child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              AssetImage('assets/images/news.jpg')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  'Contrary to popular belief, Loreum Ipsum is no  simply text. Its has roots in a piece of classical Latin Structure from 45 BC, aking its over 2000 millions years.'),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Pueraria mirifica and study now',
                style: TextStyle(
                    color: Color(0xFF000000), fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF2E2A43),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Remove to keep Young',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Color(0xFFE8E8E8),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

///Travel
class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFAFAFA),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
          ),
          onPressed: () => Navigator.pop(context),
          // onPressed: () => Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => Login()))
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aiming for higher Mastopexy',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('shooting star'.toUpperCase())
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 1, 5.0, 1),
                    child: Align(
                      alignment: FractionalOffset(0.0, 0.0),
                      child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              AssetImage('assets/images/news.jpg')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  'Contrary to popular belief, Loreum Ipsum is no  simply text. Its has roots in a piece of classical Latin Structure from 45 BC, aking its over 2000 millions years.'),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Pueraria mirifica and study now',
                style: TextStyle(
                    color: Color(0xFF000000), fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF2E2A43),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Remove to keep Young',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Color(0xFFE8E8E8),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

///Religious
class Religions extends StatefulWidget {
  @override
  _ReligionsState createState() => _ReligionsState();
}

class _ReligionsState extends State<Religions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFAFAFA),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
          ),
          onPressed: () => Navigator.pop(context),
          // onPressed: () => Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => Login()))
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aiming for higher Mastopexy',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('shooting star'.toUpperCase())
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 1, 5.0, 1),
                    child: Align(
                      alignment: FractionalOffset(0.0, 0.0),
                      child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              AssetImage('assets/images/news.jpg')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  'Contrary to popular belief, Loreum Ipsum is no  simply text. Its has roots in a piece of classical Latin Structure from 45 BC, aking its over 2000 millions years.'),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Pueraria mirifica and study now',
                style: TextStyle(
                    color: Color(0xFF000000), fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF2E2A43),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Remove to keep Young',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Color(0xFFE8E8E8),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

///World
class World extends StatefulWidget {
  @override
  _WorldState createState() => _WorldState();
}

class _WorldState extends State<World> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFAFAFA),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF000000),
          ),
          onPressed: () => Navigator.pop(context),
          // onPressed: () => Navigator.pushReplacement(
          //     context, MaterialPageRoute(builder: (context) => Login()))
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Aiming for higher Mastopexy',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      Text('shooting star'.toUpperCase())
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 1, 5.0, 1),
                    child: Align(
                      alignment: FractionalOffset(0.0, 0.0),
                      child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              AssetImage('assets/images/news.jpg')),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                  'Contrary to popular belief, Loreum Ipsum is no  simply text. Its has roots in a piece of classical Latin Structure from 45 BC, aking its over 2000 millions years.'),
            ),
            SizedBox(height: 15.0),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Pueraria mirifica and study now',
                style: TextStyle(
                    color: Color(0xFF000000), fontWeight: FontWeight.bold),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF2E2A43),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text('Remove to keep Young',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.2,
                  margin: const EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                      color: Color(0xFFE8E8E8),
                      borderRadius: BorderRadius.circular(15.0)),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.2,
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      decoration: BoxDecoration(
                          color: Color(0xFFE8E8E8),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
