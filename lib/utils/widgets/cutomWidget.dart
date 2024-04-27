import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../views/NavBar/NavbarView.dart';
import '../../views/views/collageListview.dart';
import '../../views/views/collagedetailview.dart';

class CustomText extends StatelessWidget {
  CustomText(this.text, this.color, this.size, this.weight);
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.clip,
      style: GoogleFonts.lato(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

class CollageListWidget extends StatelessWidget {
  var imageName;
  var mapImage;
  var collegeName;
  var description;
  CollageListWidget({
    required this.imageName,
    required this.collegeName,
    required this.description,
    required this.mapImage,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => CollageDetailView(
                        collageImage: imageName,
                        collageName: collegeName,
                        description: description,
                        mapImage: mapImage,
                      )));
        },
        child: Container(
          height: height * 0.32,
          decoration: BoxDecoration(
            color: white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                spreadRadius: 2,
                blurRadius: 5,
              ),
            ],
            borderRadius: BorderRadius.circular(23),
          ),
          child: Column(
            children: [
              Container(
                height: height * 0.13,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        imageName,
                      ),
                      fit: BoxFit.cover),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(23),
                      topLeft: Radius.circular(23)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: white,
                        child: Icon(Icons.share),
                      ),
                      CircleAvatar(
                        backgroundColor: white,
                        child: Icon(Icons.bookmark_border),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(6, 2, 6, 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 11),
                                child: CustomText(
                                    collegeName, black, 14, FontWeight.w700),
                              ),
                              SizedBox(
                                width: width * 0.5,
                                child: CustomText(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.Eu ut imperdiet sed nec ullamcorper.',
                                    grey,
                                    9,
                                    FontWeight.w600),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 11),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.green),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                    child: Row(
                                      children: [
                                        CustomText(
                                            '4.3', white, 12, FontWeight.w800),
                                        Icon(
                                          Icons.star,
                                          color: white,
                                          size: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: defaultColor),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6, 2, 6, 2),
                                  child: Row(
                                    children: [
                                      CustomText('Apply Now', white, 12,
                                          FontWeight.w800),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 0),
                      child: Divider(),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Image.asset(
                            'assets/home/collageLike.png',
                            height: 20,
                          ),
                        ),
                        CustomText('More than 1000+ students have been placed',
                            grey, 9, FontWeight.w600),
                        Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                              right: 10,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CustomText('468+', grey, 9, FontWeight.w600),
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget bottomWidget(selectedValue) {
  return StatefulBuilder(builder: (context, setState) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(),
          child: ListTile(
            title: CustomText('Sort', black, 18, FontWeight.w800),
            trailing: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.clear)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Divider(
            thickness: 0.4,
            color: black,
          ),
        ),
        RadioListTile<String>(
          title: const Text('Bachelor of Technology'),
          value: 'Bachelor of Technology',
          groupValue: selectedValue,
          controlAffinity: ListTileControlAffinity.trailing,

          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
            Navigator.pop(context);

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NavBarPage(
                    page: CollageListView(),
                  ),
                ));
          },
          selectedTileColor: defaultColor,
          activeColor: defaultColor,

          secondary: Icon(Icons.school_outlined), // Trailing icon
        ),
        RadioListTile<String>(
          title: const Text('Bachelor of Architecture'),
          value: 'Bachelor of Architecture',
          groupValue: selectedValue,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
            Navigator.pop(context);

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NavBarPage(
                    page: CollageListView(),
                  ),
                ));
          },
          activeColor: defaultColor,

          selectedTileColor: defaultColor,

          secondary: Icon(Icons.architecture_outlined), // Trailing icon
        ),
        RadioListTile<String>(
          title: Text('Pharmacy'),
          value: 'Pharmacy',
          groupValue: selectedValue, selectedTileColor: defaultColor,

          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
            Navigator.pop(context);

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NavBarPage(
                    page: CollageListView(),
                  ),
                ));
          },
          activeColor: defaultColor,

          secondary: Icon(Icons.local_pharmacy_outlined), // Trailing icon
        ),
        RadioListTile<String>(
          title: Text('Law'),
          value: 'Law',
          groupValue: selectedValue,
          activeColor: defaultColor,
          selectedTileColor: defaultColor,
          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
            Navigator.pop(context);

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NavBarPage(
                    page: CollageListView(),
                  ),
                ));
            Navigator.pop(context);

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NavBarPage(
                    page: CollageListView(),
                  ),
                ));
          },
          secondary: Icon(Icons.add_outlined), // Trailing icon
        ),
        RadioListTile<String>(
          title: Text('Management'),
          value: 'Management',
          groupValue: selectedValue, selectedTileColor: defaultColor,

          controlAffinity: ListTileControlAffinity.trailing,
          onChanged: (value) {
            setState(() {
              selectedValue = value!;
            });
            Navigator.pop(context);

            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NavBarPage(
                    page: CollageListView(),
                  ),
                ));
          },
          activeColor: defaultColor,

          secondary:
              Icon(Icons.settings_applications_outlined), // Trailing icon
        ),
      ],
    );
  });
}
