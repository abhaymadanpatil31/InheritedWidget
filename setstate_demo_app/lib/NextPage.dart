/**
 * 
 * 
 1. This code is used to render only that tree where change is occured i.e built of only changed data will get rendered other widget will be freezed and it will help to save time.
 2. This is another approach to write new ui and sir told to write every where. 
 */
import "package:flutter/material.dart";

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  State createState() {
    return _NextPageState();
  }
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Counter App",
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          UserDefined(
            courseName: 'Java',
          ),
          UserDefined(
            courseName: 'Flutter',
          ),
        ],
      ),
    );
  }
}

class UserDefined extends StatefulWidget {
  final String courseName;
  const UserDefined({Key? key, required this.courseName}) : super(key: key);

  @override
  State createState() => _UserDefinedState();
}

class _UserDefinedState extends State<UserDefined> {
  int referencecounter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(
                () {
                  referencecounter++;
                },
              );
            },
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber,
                  ),
                  child: Text(widget.courseName),//this line is most important through which whenever we try to add new parameter it will help us to achieve it,and second thing is 
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 30,
            height: 150,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue,
            ),
            alignment: Alignment.center,
            height: 100,
            width: 100,
            child: Text("$referencecounter"),
          ),
        ],
      ),
    );
  }
}
