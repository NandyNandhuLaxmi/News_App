import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              alignment: Alignment.topLeft,
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good Morning,',
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold)),
                  Text('Helixy')
                ],
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 70.0,
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Searching a news details...',
                    hintStyle: TextStyle(
                      color: Color(0xFFA9A9A9),
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                    prefixIcon: Icon(EvaIcons.search, color: Color(0xFF000000)),
                    filled: true,
                    fillColor: Color(0xFFF1F1F1),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      borderSide:
                          BorderSide(color: Color(0xFFFFFFFF), width: 1.2),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide:
                            BorderSide(color: Color(0xFFFFFFFF), width: 1.2))),
              ),
            ),
            Container(
              child: TabBar(
                unselectedLabelColor: Color(0xFFC9CCD1),
                labelColor: Color(0xFF2E2A43),
                tabs: [
                  Tab(child: Text('All', style: TextStyle(fontSize: 12))),
                  Tab(child: Text('News', style: TextStyle(fontSize: 12))),
                  Tab(child: Text('Fashions', style: TextStyle(fontSize: 12))),
                  Tab(child: Text('Sports', style: TextStyle(fontSize: 12))),
                  Tab(
                      child: Text('Entertainments',
                          style: TextStyle(fontSize: 12))),
                ],
                controller: _controller,
                indicatorColor: Color(0xFF2E2A43),
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            Wrap(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    controller: _controller,
                    children: <Widget>[
                      Wrap(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  height: 200,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1551292083-5d458a10336d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRyZW5kaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFFFFFF),
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(8),
                                                bottomLeft:
                                                    Radius.circular(8))),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      2.0, 2.0, 2.0, 2.5),
                                              child: Text(
                                                  'Just a simple table tap scence for you to insert your design'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                    child: Align(
                                                      alignment:
                                                          FractionalOffset(
                                                              0.0, 0.0),
                                                      child: CircleAvatar(
                                                          radius: 18.0,
                                                          backgroundImage:
                                                              NetworkImage(
                                                                  'https://images.unsplash.com/photo-1567336273898-ebbf9eb3c3bf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fHBlcnNvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Sofia',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF000000),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '16 Feb 2021',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF000000),
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Icon(EvaIcons.bookmark),
                                                  Icon(EvaIcons.heartOutline),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  height: 200,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1589820781093-64019dd3d317?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fHRyZW5kaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFFFFFF),
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(8),
                                                bottomLeft:
                                                    Radius.circular(8))),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      2.0, 2.0, 2.0, 2.5),
                                              child: Text(
                                                  'Just a simple table tap scence for you to insert your design'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                    child: Align(
                                                      alignment:
                                                          FractionalOffset(
                                                              0.0, 0.0),
                                                      child: CircleAvatar(
                                                          radius: 18.0,
                                                          backgroundImage:
                                                              NetworkImage(
                                                                  'https://images.unsplash.com/photo-1599140781162-68659a79e313?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDF8fHBlcnNvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Anyi',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF000000),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '16 Feb 2021',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF000000),
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Icon(EvaIcons.bookmark),
                                                  Icon(EvaIcons.heartOutline),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  height: 200,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1591348278719-873b59e27c7d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTV8fHRyZW5kaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFFFFFF),
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(8),
                                                bottomLeft:
                                                    Radius.circular(8))),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      2.0, 2.0, 2.0, 2.5),
                                              child: Text(
                                                  'Just a simple table tap scence for you to insert your design'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                    child: Align(
                                                      alignment:
                                                          FractionalOffset(
                                                              0.0, 0.0),
                                                      child: CircleAvatar(
                                                          radius: 18.0,
                                                          backgroundImage:
                                                              NetworkImage(
                                                                  'https://images.unsplash.com/photo-1595399874399-10f2444c4eb2?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTF8fHBlcnNvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'David',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF000000),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '16 Feb 2021',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF000000),
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Icon(EvaIcons.bookmark),
                                                  Icon(EvaIcons.heartOutline),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.6,
                                  height: 200,
                                  margin: const EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFFFFF),
                                      borderRadius: BorderRadius.circular(10.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://images.unsplash.com/photo-1600783486034-4faaa227e01a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTV8fHBlcnNvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                          fit: BoxFit.cover)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFFFFFFF),
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(8),
                                                bottomLeft:
                                                    Radius.circular(8))),
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      2.0, 2.0, 2.0, 2.5),
                                              child: Text(
                                                  'Just a simple table tap scence for you to insert your design'),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                    child: Align(
                                                      alignment:
                                                          FractionalOffset(
                                                              0.0, 0.0),
                                                      child: CircleAvatar(
                                                          radius: 18.0,
                                                          backgroundImage:
                                                              NetworkImage(
                                                                  'https://images.unsplash.com/photo-1600783486034-4faaa227e01a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTV8fHBlcnNvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
                                                    ),
                                                  ),
                                                  SizedBox(width: 5),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Jonney',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF000000),
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Text(
                                                        '16 Feb 2021',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xFF000000),
                                                            fontSize: 10),
                                                      )
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Icon(EvaIcons.bookmark),
                                                  Icon(EvaIcons.heartOutline),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Trending',
                                    style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Spacer(),
                              Expanded(
                                child: Container(
                                  height: 20,
                                  alignment: Alignment.topRight,
                                  // margin: const EdgeInsets.symmetric(
                                  //     vertical: 0.0, horizontal: 30.0),
                                  child: FlatButton(
                                      onPressed: () {},
                                      color: Color(0xFF2E2A43),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Text('more'.toUpperCase(),
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF)))),
                                ),
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1551292083-5d458a10336d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRyZW5kaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1551292083-5d458a10336d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fHRyZW5kaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1567336273898-ebbf9eb3c3bf?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fHBlcnNvbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/news.jpg'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Breaking News',
                                    style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Spacer(),
                              Expanded(
                                child: Container(
                                  height: 20,
                                  alignment: Alignment.topRight,
                                  // margin: const EdgeInsets.symmetric(
                                  //     vertical: 0.0, horizontal: 30.0),
                                  child: FlatButton(
                                      onPressed: () {},
                                      color: Color(0xFF2E2A43),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Text('more'.toUpperCase(),
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF)))),
                                ),
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1541921671-10e275785336?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8YnJlYWtpbmclMjBuZXdzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1454123253751-1fe2b9e0c10d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGJyZWFraW5nJTIwbmV3c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/news.jpg'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1589828515312-d8c75365649c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MzN8fGJyZWFraW5nJTIwbmV3c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                padding: const EdgeInsets.all(10.0),
                                child: Text('COVID - 19',
                                    style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Spacer(),
                              Expanded(
                                child: Container(
                                  height: 20,
                                  alignment: Alignment.topRight,
                                  // margin: const EdgeInsets.symmetric(
                                  //     vertical: 0.0, horizontal: 30.0),
                                  child: FlatButton(
                                      onPressed: () {},
                                      color: Color(0xFF2E2A43),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                      ),
                                      child: Text('more'.toUpperCase(),
                                          style: TextStyle(
                                              color: Color(0xFFFFFFFF)))),
                                ),
                              )
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1596978759889-91e1a654faca?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Y292aWQlMjAxOXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1591085686350-798c0f9faa7f?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTl8fGNvdmlkJTIwMTl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1601971528243-1f4e8ac0efc3?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjR8fGNvdmlkJTIwMTl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                                Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.2,
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1607547023952-cac63c478dc0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fGNvdmlkJTIwMTl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                                            fit: BoxFit.cover)),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.4,
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFFFFF),
                                              borderRadius: BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      'fall 2021 men’s runways'
                                                          .toUpperCase(),
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 5.0),
                                                    Text(
                                                      "No Normal Clothes: The Men’s Fall 2021 Collections Prize Ingenuity and Independence",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xFF000000),
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.topRight,
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text('February 2, 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(height: 50),
                        ],
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.3)
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.3)
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.3)
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.3,
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/news.jpg'),
                                      fit: BoxFit.cover)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFFFFF),
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(8),
                                            bottomLeft: Radius.circular(8))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              2.0, 2.0, 2.0, 2.5),
                                          child: Text(
                                              'Just a simple table tap scence for you to insert your design'),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        8.0, 1, 5.0, 1),
                                                child: Align(
                                                  alignment: FractionalOffset(
                                                      0.0, 0.0),
                                                  child: CircleAvatar(
                                                      radius: 18.0,
                                                      backgroundImage: AssetImage(
                                                          'assets/images/news.jpg')),
                                                ),
                                              ),
                                              SizedBox(width: 5),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Jonney',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '16 Feb 2021',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF000000),
                                                        fontSize: 10),
                                                  )
                                                ],
                                              ),
                                              Spacer(),
                                              Icon(EvaIcons.bookmark),
                                              Icon(EvaIcons.heartOutline),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.3)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
