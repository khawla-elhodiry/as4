import 'package:flutter/material.dart';
import 'package:flutter_app123/group.dart';


class NewGroupView extends StatefulWidget {
  final Group item;

  NewGroupView({ this.item });

  @override
  _NewTodoViewState createState() => _NewTodoViewState();
}

class _NewTodoViewState extends State<NewGroupView> {
  TextEditingController titleController;

  @override
  void initState() {
    super.initState();
    titleController = new TextEditingController(
        text: widget.item != null ? widget.item.title : null
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.item != null ? 'Edit todo' : 'NEW GROUP',
          key: Key('new-item-title'),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: titleController,
              autofocus: true,
              onSubmitted: (value) => submit(),
              decoration: InputDecoration(labelText: 'GROUP NAME'),
            ),
            SizedBox(height: 14.0,),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'CREAT',
                style: TextStyle(
                    color: Theme.of(context).primaryTextTheme.title.color
                ),
              ),
              elevation: 3.0,
              //shape: RoundedRectangleBorder(
              // borderRadius: BorderRadius.only(
              //    bottomLeft: Radius.circular(10.0),
              //    topRight: Radius.circular(10.0)
              //  )
              //    ),
              onPressed: () => submit(),
            )
          ],
        ),
      ),
    );
  }

  void submit(){
    Navigator.of(context).pop(titleController.text);
  }
}
