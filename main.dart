import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp_clone/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      debugShowCheckedModeBanner: false,
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
        primarySwatch: Colors.teal,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  get floatingActionButton => null;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var arrNames = ['Parth yadav' ,'Rohit Sharma','Virat Kohli','Jaspreet Bumrah','R.C Ashwin ','HardikPandya','Axar Patel',' Mohd Shami','Deepak Chahar','Karthik',' K.L Rahul','M.S Dhoni','Ravindra Jadeja'];
    var message  = ['pad le','kya padu......',' kuch nhi ata hai...','  kuch nhi ho sakta hai...','hoga dekha jyega...','ab kya hoga padke','kal se.. ' ,'padenge..','thoda aur...','so leta...','class jana hai...','kya hoga jake...','Dhanyavad...'];
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => NewContact(),)
               );
            },
            child: Icon(Icons.message),
          ),
        appBar: AppBar(
          toolbarHeight: 60,
          title: Padding(
            padding:  EdgeInsets.only(bottom: 30,top: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('WhatsApp Clone'),
                    SizedBox(
                      width: 25,
                    ),
                   Container(
                     child: IconButton(
                       onPressed: (){},
                       icon: Icon(Icons.camera_alt_outlined),
                     ),
                   ),

                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      child: IconButton(
                        onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()),);
                        },
                        icon: Icon(Icons.search),
                      ),
                    ),

                  SizedBox(
                    width: 5,
                  ),
                 PopupMenuButton<String>(itemBuilder: (BuildContext context){
                   return[
                     PopupMenuItem(child: Text("New Group") ,value: "New Group",),
                     PopupMenuItem(child: Text("New broadcast") ,value: "New broadcast",),
                     PopupMenuItem(child: Text("Whatsapp Web") ,value: "Whatsapp Web",),
                     PopupMenuItem(child: Text("Settings") ,value: "Settings",),
                     PopupMenuItem(child: Text("Starred messages") ,value: "Starred messages",),
                   ];
                 })
                  ],
                  
                ),
              ],
              
            ),
          ),
          bottom: TabBar(tabs: <Widget>[
            Tab(icon: Icon(Icons.people_alt_rounded,size: 25,),),
            Tab(text: "Chats",),
            Tab(text: "Status",),
            Tab(text: "Calls",),
          ]
          ) ,
        ),
        body:Padding(
          padding: const EdgeInsets.only(right: 100),
          child: ListView.builder(itemBuilder: (context ,index){
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person_3),radius: 20,backgroundColor: Colors.grey),
                  title: TextButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Chats()),);
                    },
                      child: Text(arrNames[index],style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500))),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 20 ),
                    child: Text(message[index],style: TextStyle(color: Colors.grey),),
                  ),

                ),
              ],

            );
          },
          itemCount: arrNames.length),
        )

      ),
    );
  }
}



class NewContact extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var contact =['Mukesh Ambani','Ratan Tata','Jeff Bezos','Elon Musk','Mark Zuckerberg', 'Jack Ma','Sundar Pichai','N.R. Narayan Murthy','Aditya Birla','Anand Mahindra','Bill Gates','Gautam Adani','Ferrari Dealership'];
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
              Text('Select Contact' ,style: TextStyle(fontSize: 21,fontWeight: FontWeight.w500),),
              SizedBox(width: 40),
              Container(
                child: Icon(Icons.search),
              ),
              SizedBox(width: 30),
              Container(
                child: Icon(Icons.density_small_sharp)),

          ],
        ),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: Icon(Icons.person_3,size: 30),
          title: Text(
            contact[index]
          ),
        );
      },itemCount: contact.length,
      ),
    );

  }
}
class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        toolbarHeight: 200,
        title: Padding(
          padding: const EdgeInsets.only(bottom: 150),
          child: TextField(
            decoration: InputDecoration(

              focusColor: Colors.grey.shade100,
              hintText: 'Search....'
            ),
          ),
        ),

      ),

    );
  }

}
class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(

       title: Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(right: 20),
             child: Icon(Icons.account_circle_rounded ,size: 40),
           ),

           Container(
             child: Text("Messages"),
           ),
           SizedBox(
             width: 60,
           ),
          Icon(Icons.add_call),
           SizedBox(width: 12),
           Icon(Icons.video_camera_back),

         ],
       ),
     ),

   );
  }
}
