import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tube_cast_app/Talent_Page/socialMedia.dart';

class TalentPage2 extends StatefulWidget {
  final String name;
  final String email;
  final String mobile;
  final String gender;

  const TalentPage2({
    Key? key,
    required this.name,
    required this.email,
    required this.mobile,
    required this.gender,
  }) : super(key: key);

  @override
  _TalentPage2State createState() => _TalentPage2State();
}

class _TalentPage2State extends State<TalentPage2> {
  final TextEditingController jobRoleController = TextEditingController();
  @override
  void initState() {
    super.initState();
    loadPageData();
  }

  void loadPageData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      jobRoleController.text = prefs.getString('job') ?? '';

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60),
                child: const Center(
                  child: Text(
                    "Talent",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                color: Colors.black,
                width: 400,
                 //height: 950,
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Hi, ${widget.name}',
                        style: const TextStyle(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Text(
                        "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        padding: const EdgeInsets.all(20),
                         color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 12,
                                  height: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.black, width: 2.0),
                                  ),
                                  child: Center(
                                    child: Container(
                                      width: 3,
                                      height: 3,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "Personal Details",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              initialValue: widget.name,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                                isDense: true,
                                hintText: 'Name',
                                hintStyle: TextStyle(color: Colors.black), // Set hint text color to black
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey
                                    )
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                ) ,
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                    )
                                ),
                              ),
                              readOnly: true,
                            ),
                            const SizedBox(height: 15),

                            TextFormField(
                              initialValue: widget.email,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                                isDense: true,
                                hintText: 'Email Id',
                                hintStyle: TextStyle(color: Colors.black), // Set hint text color to black

                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey
                                    )
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                ) ,
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                    )
                                ),
                              ),
                              readOnly: true,
                            ),
                            const SizedBox(height: 15),


                            TextFormField(
                              initialValue: widget.mobile,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                                isDense: true,
                                hintText: 'Mobile No.',
                                hintStyle: TextStyle(color: Colors.black), // Set hint text color to black

                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey
                                    )
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                ) ,
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                    )
                                ),
                              ),

                              readOnly: true,
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              controller: jobRoleController,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                                isDense: true,
                                hintText: 'Job Role',
                                hintStyle: TextStyle(color: Colors.black), // Set hint text color to black

                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey
                                    )
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                ) ,
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                    )
                                ),
                              ),

                            ),


                            const SizedBox(height: 15),
                            TextFormField(
                              initialValue: widget.gender,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
                                isDense: true,
                                hintText: 'Gender.',
                                hintStyle: TextStyle(color: Colors.black), // Set hint text color to black

                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black),
                                ),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.grey
                                    )
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black
                                    )
                                ) ,
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.black
                                    )
                                ),
                              ),

                              readOnly: true,
                            ),
                            const SizedBox(height: 15,),
                            TextFormField(
                              readOnly:true,
                              decoration: InputDecoration(
                                hintText: "Upload Photo1",
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey
                                    )
                                ),
                                contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), // Adjust vertical padding
                                suffixIcon: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(30, 20), // Adjust the size here
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: const Text(
                                    "Browse",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              onTap: null,
                            ),
                            const SizedBox(height: 15,),
                            TextFormField(
                              readOnly:true,
                              decoration: InputDecoration(
                                hintText: "Upload Photo2",
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey
                                    )
                                ),
                                contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), // Adjust vertical padding
                                suffixIcon: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(30, 20), // Adjust the size here
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: const Text(
                                    "Browse",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              onTap: null,
                            ),
                            const SizedBox(height: 15,),
                            TextFormField(
                              readOnly:true,
                              decoration: InputDecoration(
                                hintText: "Upload Photo3",
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                    width: 1,
                                    style: BorderStyle.none,
                                  ),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey
                                    )
                                ),
                                contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), // Adjust vertical padding
                                suffixIcon: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: const Size(30, 20), // Adjust the size here
                                    backgroundColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                  ),
                                  child: const Text(
                                    "Browse",
                                    style: TextStyle(
                                        color: Colors.white
                                    ),
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                              onTap: null,
                            ),
                            const SizedBox(
                              height: 60,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    width: double.infinity, // Adjust width as needed
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        shape: const RoundedRectangleBorder(),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Previous",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16), // Adjust spacing as needed
                                Expanded(
                                  child: SizedBox(
                                    width: double.infinity, // Adjust width as needed
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        shape: const RoundedRectangleBorder(),
                                      ),
                                      onPressed: () async {
                                        SharedPreferences prefs = await SharedPreferences.getInstance();
                                        await prefs.setString('job', jobRoleController.text);

                                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                                            const SocialMedia(),
                                          ),
                                        );
                                       },

                                      child: const Text(
                                        "Next",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),


                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
