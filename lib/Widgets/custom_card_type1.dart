import 'package:flutter/material.dart';
import 'package:flutter_widgets/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [

          const ListTile(
            leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary, ),
            title: Text('soy un titulo'),
            subtitle: Text(' Id pariatur voluptate consequat do fugiat. Amet pariatur tempor veniam aute enim irure sint do ipsum veniam labore. Irure eiusmod Lorem mollit exercitation laborum commodo sit anim consectetur duis fugiat officia laboris laborum.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right:5), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              TextButton(
                onPressed: () {},
                child: const  Text('Cancel'),
                ),
                TextButton(
                onPressed: () {},
                child: const  Text('Ok')
                ),

            ],
         ),
          ),
        ]
      )
    );
  }
}