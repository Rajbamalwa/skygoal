import 'package:flutter/material.dart';
import 'package:flutter_task_skygoal/utils/widgets/cutomWidget.dart';

import '../../constants/colors.dart';

class CollageListView extends StatefulWidget {
  const CollageListView({super.key});

  @override
  State<CollageListView> createState() => _CollageListViewState();
}

class _CollageListViewState extends State<CollageListView> {
  TextEditingController controller = TextEditingController();

  List<Map<String, dynamic>> collegeData = [
    {
      'imageName': 'assets/home/collage1.jpg',
      'collegeName': 'SGGS Collage Nanded',
      'description':
          '''Established in 1981, Shri Guru Gobind Singhji Institute of Engineering and Technology (SGGSIET), Nanded, is one of the promising leader institutions in technical education, research and technology transfer. Since its inception, the institute is dedicated to students’ centric learning and believes in pursuing academic excellence. It is having neat, clean and green campus spread over land of 46 acres. It receives 100% grant-in aid from Government of Maharashtra.''',
      'mapImage': 'assets/home/sggs_map.png',
    },
    {
      'imageName': 'assets/home/collage2.jpg',
      'collegeName': 'Bachelor of Technology',
      'description':
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
      'mapImage': 'assets/home/other_map.png',
    },
    {
      'imageName': 'assets/home/collage3.jpeg',
      'collegeName': 'GHJK Engineering college',
      'description':
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
      'mapImage': 'assets/home/other_map.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: defaultColor,
          toolbarHeight: 100,
          title: Padding(
            padding: const EdgeInsets.fromLTRB(10, 40, 10, 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: SizedBox(
                      // height: 53,
                      child: TextFormField(
                        controller: controller,
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 0, bottom: 0),
                          fillColor: white,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.search,
                            color: grey,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: white, style: BorderStyle.solid)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: white, style: BorderStyle.solid)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: white, style: BorderStyle.none)),
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: grey,
                          ),
                          hintText: 'Search for colleges, schools.....',
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {},
                  child: Container(
                    height: 53,
                    width: 55,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Icon(Icons.mic),
                    ),
                  ),
                )
              ],
            ),
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
        ),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: collegeData.length,
          itemBuilder: (BuildContext context, int index) {
            return CollageListWidget(
              imageName: collegeData[index]['imageName'],
              collegeName: collegeData[index]['collegeName'],
              description: collegeData[index]['description'],
              mapImage: collegeData[index]['mapImage'],
            );
          },
        ));
  }

  Widget clipWidget(text) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 13, bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: black),
        ),
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text, black, 10, FontWeight.w500)),
        ),
      ),
    );
  }
}
