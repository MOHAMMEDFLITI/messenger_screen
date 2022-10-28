import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://img-new.cgtrader.com/items/2958766/2b7f8be478/large/messenger-logo-v1-001-3d-model-low-poly-max-obj-3ds-fbx-ma-stl.jpg"),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Chats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.camera_alt,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[350],
                ),
                padding: const EdgeInsets.all(5),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Search",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (index, context) => const SizedBox(
                    width: 20,
                  ),
                  itemCount: 5,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (index, context) => buildChatItem(),
                separatorBuilder: (index, item) => const SizedBox(
                  height: 10,
                ),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildChatItem() => Row(
  children: [
    Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: const [
        CircleAvatar(
          radius: 27,
          backgroundImage: NetworkImage(
              "https://img-new.cgtrader.com/items/2958766/2b7f8be478/large/messenger-logo-v1-001-3d-model-low-poly-max-obj-3ds-fbx-ma-stl.jpg"),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(
            bottom: 3,
            end: 3,
          ),
          child: CircleAvatar(
            radius: 6,
            backgroundColor: Colors.green,
          ),
        ),
      ],
    ),
    const SizedBox(
      width: 20,
    ),
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Fliti Mohammed",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              const Expanded(
                child: Text(
                  "Hello my name is moahammed fliti",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Container(
                  height: 7,
                  width: 7,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const Text(
                "02:00 pm",
              ),
            ],
          ),
        ],
      ),
    ),
  ],
);

Widget buildStoryItem() => Container(
  width: 54,
  child: Column(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
            radius: 27,
            backgroundImage: NetworkImage(
                "https://img-new.cgtrader.com/items/2958766/2b7f8be478/large/messenger-logo-v1-001-3d-model-low-poly-max-obj-3ds-fbx-ma-stl.jpg"),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 3,
              end: 3,
            ),
            child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.green,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 6,
      ),
      const Text(
        "Fliti Mohammed Ali Mansour",
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    ],
  ),
);
