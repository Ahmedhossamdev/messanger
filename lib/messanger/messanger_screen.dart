import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/243292806_1526220177734283_456429968543822773_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=nhhy25uZ7xkAX8gm8UW&_nc_ht=scontent-hbe1-1.xx&oh=00_AT90a5xbO2BHgexDKG6QJi8wIJoOPwujaauL11fc44ayxw&oe=620B5CB8'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              child: Icon(
                Icons.camera_alt,
                size: 20,
              ),
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15,
              child: Icon(
                Icons.edit,
                size: 20,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Search',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index) => buildStoryItem(),
                    separatorBuilder: (BuildContext context, int index) => SizedBox(
                      width: 15,
                    ),
                    itemCount: 5,

                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context , index) => buildChatItem(),
                  separatorBuilder: (context , index) => SizedBox(
                    height: 20,
                  ) ,
                 itemCount: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/243292806_1526220177734283_456429968543822773_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=nhhy25uZ7xkAX8gm8UW&_nc_ht=scontent-hbe1-1.xx&oh=00_AT90a5xbO2BHgexDKG6QJi8wIJoOPwujaauL11fc44ayxw&oe=620B5CB8'),
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 1.0,
                  end: 1,
                ),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahmedhossam',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Text(
                      'hello my name is ahmed ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7.0,
                      ),
                      child: Container(
                        width: 10.0,
                        height: 10.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Text(
                      '02:00 pm',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );

  Widget buildStoryItem() => Container(
        width: 55,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/243292806_1526220177734283_456429968543822773_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=nhhy25uZ7xkAX8gm8UW&_nc_ht=scontent-hbe1-1.xx&oh=00_AT90a5xbO2BHgexDKG6QJi8wIJoOPwujaauL11fc44ayxw&oe=620B5CB8'),
                ),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 1.0,
                    end: 1,
                  ),
                  child: CircleAvatar(
                    radius: 7,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              ' Ahmed Hossam',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
}

