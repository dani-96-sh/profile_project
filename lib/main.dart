import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return _getApplication();
  }

  Widget _getApplication() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "vazir"),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: _getbody(),
        appBar: _getAppbar(),
      ),
    );
  }

  Widget _getbody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [_columnOne()],
          ),
        ),
      ),
    );
  }

  Widget _columnOne() {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        CircleAvatar(
          backgroundImage: AssetImage('images/profile2.jpg'),
          radius: 90,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'سلام دانیال هستم برنامه نویس فلاتر از اصفهان',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 15,
        ),
        Text(' پروژه پروفایل و رزومه کاری'),
        SizedBox(
          height: 20,
        ),
        _getRowIcons(),
        SizedBox(
          height: 20,
        ),
        _getskills(),
        SizedBox(
          height: 20,
        ),
        _Resume()
      ],
    );
  }

  Widget _getRowIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagram),
          color: Colors.pink[400],
          iconSize: 30.0,
          padding: EdgeInsets.symmetric(horizontal: 30),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedinIn),
          color: Colors.blue[800],
          iconSize: 30.0,
          padding: EdgeInsets.symmetric(horizontal: 30),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blue[600],
          iconSize: 30.0,
          padding: EdgeInsets.symmetric(horizontal: 30),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.whatsapp),
          color: Colors.green[600],
          iconSize: 30.0,
          padding: EdgeInsets.symmetric(horizontal: 30),
        )
      ],
    );
  }

  Widget _getskills() {
    var skillslist = ['Flutter', 'Node', 'Github', 'React'];
    var starskills = ['Star.2.5', 'Star2', 'Star3.5', 'Star4'];
    return Column(
      children: [
        for (var skills in skillslist)
          Card(
            shadowColor: Colors.green[600],
            elevation: 5,
            child: Row(children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 80,
                width: 80,
                child: Image(image: AssetImage('images/$skills.png')),
              ),
              Text(
                '$skills',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 80,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: 150,
                      child: Image(image: AssetImage('images/$skills.jpg')),
                    ),
                  ],
                ),
              ),
            ]),
          ),
      ],
    );
  }

  Widget _Resume() {
    var list = [
      'برنامه نویس ری اکت و فریلنسر',
      'مسلط به جاوا اسکریپت',
      'رزومه شخصی در گیتهاب',
      'تازه کار در زمینه فلاتر',
      'برنامه نویس نود جی اس'
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      color: Color.fromARGB(255, 225, 247, 226),
      child: Column(children: [
        Text(
          'جزیات رزومه من',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: Colors.green[700]),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            for (var Skill in list)
              Text(
                Skill,
                style: TextStyle(
                    fontSize: 16, height: 2, fontWeight: FontWeight.w400),
              ),
            SizedBox(width: double.infinity),
          ],
        )
      ]),
    );
  }

  PreferredSizeWidget _getAppbar() {
    return AppBar(
      backgroundColor: Colors.green,
      title: Center(
        child: Text(
          'Resume Project',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
      elevation: 2,
    );
  }
}
