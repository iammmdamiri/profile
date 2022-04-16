import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color surfaceColor = Color(0x0dffffff);
    return MaterialApp(
      themeMode: ThemeMode.system,
      title: 'Flutter Demo',
      localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ],
  supportedLocales: [
    Locale('en', '1'), // English, no country code
    Locale('fa', '98'), // Spanish, no country code
  ],
  locale: Locale('en'),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
        primaryColor: Colors.pink.shade500,
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none),
            filled: true,
            fillColor: surfaceColor),
        dividerColor: surfaceColor,
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30),
        textTheme: GoogleFonts.latoTextTheme(
          TextTheme(
            bodyText2: TextStyle(fontSize: 15),
            bodyText1: TextStyle(
                fontSize: 13, color: Color.fromARGB(200, 255, 255, 255)),
            headline6: TextStyle(fontWeight: FontWeight.bold),
            subtitle1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyAppThemeconfig {
  final Color primaryTextColor;
  final Color secondaryTextColor;
  final Color surfaceColor;
  final Color backgroundColor;
  final Color appBarColor;

  MyAppThemeconfig(this.primaryTextColor, this.secondaryTextColor,
      this.surfaceColor, this.backgroundColor, this.appBarColor);
}

class MyHomePage extends StatefulWidget {
  _SkillType _skill = _SkillType.photoshop;
  void updateSelectedSkill(_SkillType skillType) {}
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum _SkillType {
  photoshop,
  xd,
  illustrator,
  afterEffect,
  lightRoom,
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Brice Seraphin'),
          actions: [
            Icon(CupertinoIcons.chat_bubble),
            SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 16, 0),
              child: Icon(CupertinoIcons.ellipsis_vertical),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/profile_image.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Brice Seraphin',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          const Text('Product & Print Designer'),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(CupertinoIcons.location,
                                  size: 16,
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color),
                              SizedBox(
                                width: 3,
                              ),
                              Text('Paris.France',
                                  style: Theme.of(context).textTheme.caption),
                            ],
                          )
                        ],
                      ),
                    ),
                    Icon(
                      CupertinoIcons.heart,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 16),
                  child: Text(
                    'Enthusiastic cake, free designer loves independence, I have a lot of experience in many projects and I always do my best to make you successful',
                  ),
                ),
                Divider(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Skills',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Icon(
                      CupertinoIcons.chevron_down,
                      size: 15,
                    ),
                  ],
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Skill(
                      type: _SkillType.photoshop,
                      title: 'Photoshop',
                      path: 'assets/images/app_icon_01.png',
                      shadowColor: Colors.blue,
                      isActive: false,
                      onTab: () {},
                    ),
                    Skill(
                      type: _SkillType.xd,
                      title: 'Adobe XD',
                      path: 'assets/images/app_icon_05.png',
                      shadowColor: Colors.pink,
                      isActive: false,
                      onTab: () {},
                    ),
                    Skill(
                      type: _SkillType.illustrator,
                      title: 'illustrator',
                      path: 'assets/images/app_icon_04.png',
                      shadowColor: Colors.orange,
                      isActive: false,
                      onTab: () {},
                    ),
                    Skill(
                      type: _SkillType.afterEffect,
                      title: 'After Effect',
                      path: 'assets/images/app_icon_03.png',
                      shadowColor: Colors.blue.shade800,
                      isActive: false,
                      onTab: () {},
                    ),
                    Skill(
                      type: _SkillType.lightRoom,
                      title: 'Lightroom',
                      path: 'assets/images/app_icon_02.png',
                      shadowColor: Colors.blue,
                      isActive: false,
                      onTab: () {},
                    ),
                  ],
                ),
                Divider(),
                Text(
                  'Personal Information',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Email', prefixIcon: Icon(CupertinoIcons.at)),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'password',
                      prefixIcon: Icon(CupertinoIcons.lock)),
                ),
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: () {}, child: Text('Save')),
                ),
              ],
            ),
          ),
        ));
  }
}

class Skill extends StatelessWidget {
  final String title;
  final String path;
  final _SkillType type;
  final Color shadowColor;
  final bool isActive;
  final Function() onTab;

  const Skill({
    Key? key,
    required this.type,
    required this.title,
    required this.path,
    required this.shadowColor,
    required this.isActive,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTab,
      child: Container(
        width: 110,
        height: 110,
        decoration: isActive
            ? BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: BorderRadius.circular(20))
            : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              path,
              width: 40,
              height: 40,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
