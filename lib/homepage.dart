import 'dart:convert';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  final aiurl = 'YOUR API KEY';
  final header={
    'Content-Type': 'application/json'
  };

  ChatUser alex = ChatUser(id: '1',firstName: "Alex");
  ChatUser Gemini = ChatUser(id: '2',firstName: "Gemini");

  List<ChatMessage> all = [];
  List<ChatUser> typing = [];

  getdata(ChatMessage m) async {
    typing.add(Gemini);
    all.insert(0, m);
    setState(() {
    });

    var data = {"contents":[{"parts":[{"text":m.text}]}]};

    await http.post(Uri.parse(aiurl),headers: header,body: jsonEncode(data))
        .then((value){
      if(value.statusCode == 200){
        var result = jsonDecode(value.body);
        print(result['candidates'][0]['content']['parts'][0]['text']);

        ChatMessage unit = ChatMessage(
            text: result['candidates'][0]['content']['parts'][0]['text'],
            user: Gemini,
            createdAt: DateTime.now()
        );
        all.insert(0,unit);
      }else{
        print("Error");
      }
    })
        .catchError((e){});
    typing.remove(Gemini);
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('GEMINI AI',
          style: TextStyle(
            fontFamily: 'Avenir',
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 28
          ),
        ),
        backgroundColor: Colors.white,
      ),

      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/chatbot1.png'),
                alignment: Alignment.center
            )
        ),
        child: DashChat(
            typingUsers: typing,
            currentUser: alex,
            onSend: (ChatMessage m){
              getdata(m);
            },
            messages: all,
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}
