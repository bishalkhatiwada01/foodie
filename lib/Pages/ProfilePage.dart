import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Widgets/AppBarWidget.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/avatar.jpg'),
              ),
              SizedBox(height: 10),
              Text(
                "Bishal Khatiwada",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text("Flutter Developer"),
              SizedBox(
                height: 30,
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  "Complete Your profile",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                "(1/5)",
                style: TextStyle(color: Color.fromARGB(255, 31, 118, 180)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: List.generate(
              5,
              (index) {
                return Expanded(
                  child: Container(
                    height: 7,
                    margin: EdgeInsets.only(right: index == 4 ? 0 : 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: index == 0 ? Colors.blue : Colors.black12),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 180,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final card = profileCompletionCards[index];
                  return SizedBox(
                    width: 160,
                    child: Card(
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            card.icon,
                            size: 40,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          card.title,
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            card.buttonText,
                            style: const TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                        )
                      ]),
                      shadowColor: Colors.black,
                    ),
                  );
                },
                separatorBuilder: (context, index) =>
                    const Padding(padding: EdgeInsets.only(right: 5)),
                itemCount: profileCompletionCards.length),
          ),
          const SizedBox(height: 35),
          ...List.generate(customListTiles.length,

              // ignore: prefer_const_constructors
              (index) {
            final tile = customListTiles[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: Card(
                elevation: 4,
                shadowColor: Colors.black12,
                child: ListTile(
                  leading: Icon(tile.icon),
                  title: Text(tile.title),
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            );
          }),
        ],
      )),
    );
  }
}

class ProfileCompletionCard {
  final String title;
  final String buttonText;
  final IconData icon;

  ProfileCompletionCard({
    required this.title,
    required this.buttonText,
    required this.icon,
  });
}

List<ProfileCompletionCard> profileCompletionCards = [
  ProfileCompletionCard(
    title: "Set Your Profile Picture",
    icon: CupertinoIcons.person_circle,
    buttonText: "Continue",
  ),
  ProfileCompletionCard(
    title: "Upload Your Resume",
    icon: CupertinoIcons.doc,
    buttonText: "Upload",
  ),
  ProfileCompletionCard(
    title: "Add your Skills",
    icon: CupertinoIcons.square_list,
    buttonText: "Add",
  )
];

class CustomListTile {
  final IconData icon;
  final String title;
  CustomListTile({
    required this.icon,
    required this.title,
  });
}

List<CustomListTile> customListTiles = [
  CustomListTile(
    icon: Icons.insights,
    title: "Activity",
  ),
  CustomListTile(
    icon: Icons.location_on_outlined,
    title: "Location",
  ),
  CustomListTile(
    icon: CupertinoIcons.bell,
    title: "Notifications",
  ),
  CustomListTile(
    icon: CupertinoIcons.arrow_right_arrow_left,
    title: "Logout ",
  )
];
