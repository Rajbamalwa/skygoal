import 'package:flutter/material.dart';
import 'package:flutter_task_skygoal/constants/colors.dart';
import 'package:flutter_task_skygoal/utils/widgets/cutomWidget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController controller = TextEditingController();
  String selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: defaultColor,
        toolbarHeight: 200,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 49, 10, 8),
                      child: CustomText(
                          'Find your own way', white, 20, FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                      child: CustomText('Search in 600 colleges around!', white,
                          14, FontWeight.w700),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 49, 20, 8),
                  child: IconButton(
                    onPressed: () {},
                    splashRadius: 50,
                    icon: Icon(
                      Icons.notifications,
                      color: white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 10, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(30),
        )),
      ),
      body: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 15),
            child: GestureDetector(
              onTap: callBottomSheet,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/home/home3.png'),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: GestureDetector(
              onTap: callBottomSheet,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/home/home1.png'),
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: GestureDetector(
              onTap: callBottomSheet,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.18,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/home/home2.png'),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }

  Future callBottomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return bottomWidget(selectedValue);
        });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    selectedValue = '';
  }
}
