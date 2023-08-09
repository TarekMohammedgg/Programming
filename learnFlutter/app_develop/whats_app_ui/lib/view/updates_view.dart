import 'package:flutter/material.dart';

import '../widgets/custom_circular_avatar.dart';
import '../widgets/custom_profile_status.dart';

class UpdatesView extends StatefulWidget {
  const UpdatesView({super.key});

  @override
  State<UpdatesView> createState() => _UpdatesViewState();
}

class _UpdatesViewState extends State<UpdatesView> {
  bool _customExpand = false ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      child: CustomScrollView(slivers: [
        const SliverToBoxAdapter(
            child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Text(
            "Status",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: "ComicNeue-Italic"),
          ),
          trailing: Icon(Icons.more_vert),
        )),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomProfileStatus(title: "My Status"),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        const SliverToBoxAdapter(
          child: Row(
            children: [
              Text("Recent Updates",
                  style: TextStyle(
                      fontFamily: "ComicNeue-Italic",
                      color: Color.fromARGB(255, 110, 124, 136)))
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const CustomProfileStatus(title: "Islam",),
          const CustomProfileStatus(title: "Omar",),
          const CustomProfileStatus(title: "Diaa",),
          const CustomProfileStatus(title: "Ali",),
         
        ])),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverToBoxAdapter(
            child: ExpansionTile(
          title: const Text(
            "View updates",
            style: TextStyle(
                fontFamily: "ComicNeue-Italic", color: Color(0xff6E7780)),
          ),
          trailing: const Icon(Icons.expand_more, color: Color(0xff6E7780)),
          onExpansionChanged: (bool expanded) {
            setState(() {
              _customExpand = expanded;
            });
          },
          shape: const Border(),
          children: const [
            CustomProfileStatus(title: "Islam")  ,
            CustomProfileStatus(title: "Omar")  ,
            CustomProfileStatus(title: "Diaa")  ,
            CustomProfileStatus(title: "Mohammed")  ,
            CustomProfileStatus(title: "Yossry")  ,


          ],
        )),
        const SliverToBoxAdapter(child: Divider()),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 25,
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Text(
                  "Channels",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "ComicNeue-Italic"),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Color(0xff6E7780)),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Stay updated on topics that matter to you. Find channels to  follow below.",
                style: TextStyle(
                  color: Color.fromARGB(255, 110, 124, 136),
                ),
              )
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: ListView(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomcircularAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                  CustomcircularAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                  CustomcircularAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                  CustomcircularAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                  CustomcircularAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                  CustomcircularAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                  CustomcircularAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                  CustomcircularAvatar(),
                  SizedBox(
                    width: 20,
                  ),
                ]),
          ),
        )
      ]),
    );
  }
}
