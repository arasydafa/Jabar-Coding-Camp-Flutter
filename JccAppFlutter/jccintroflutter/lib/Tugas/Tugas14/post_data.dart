import 'package:flutter/material.dart';
import 'package:jccintroflutter/Tugas/Tugas14/get_data.dart';
import 'Models/user_model.dart';
import 'package:http/http.dart' as http;

class PostDataApi extends StatefulWidget {
  PostDataApi({
    Key? key,
  }) : super(key: key);

  @override
  _PostDataApiState createState() => _PostDataApiState();
}

class Dialogs {
  static Future<void> showLoadingDialog(
      BuildContext context, GlobalKey key) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new WillPopScope(
              onWillPop: () async => false,
              child: SimpleDialog(
                  backgroundColor: Colors.black54,
                  children: <Widget>[
                    Center(
                      child: Column(children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Please Wait...",
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ]),
                    )
                  ]));
        });
  }
}

class _PostDataApiState extends State<PostDataApi> {
  UserModel? _user;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController valueController = TextEditingController();

  void _submitted(BuildContext context) async {
    final String title = titleController.text;
    final String value = valueController.text;
    final UserModel? user = await createUser(title, value);
    setState(() {
      _user = user;
    });
    Navigator.pop(context);
  }

  Future<UserModel?> createUser(
    String title,
    String value,
  ) async {
    try {
      Dialogs.showLoadingDialog(context, _keyLoader);
      var apiUrl =
          Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/news");
      final response =
          await http.post(apiUrl, body: {"title": title, "value": value});

      if (response.statusCode == 201) {
        final String responseString = response.body;
        return userModelFromJson(responseString);
      }
      Navigator.of(context).pop(context);
    } catch (e) {
      print(e.toString());
    }
  }

  final GlobalKey<State> _keyLoader = new GlobalKey<State>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Data"),
      ),
      body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Title"),
              ),
              SizedBox(height: 10),
              TextField(
                controller: valueController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Value"),
                maxLines: 5,
              ),
              SizedBox(height: 10),
              _user == null
                  ? Container()
                  : Text(
                      "The User ${_user!.title} is created, and ID ${_user!.id}"),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _submitted(context),
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}
