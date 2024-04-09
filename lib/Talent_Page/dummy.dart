// import 'package:flutter/material.dart';
// import 'package:tube_cast_app/Talent_Page/professional_details.dart';
//
// class MyWidget extends StatefulWidget {
//   @override
//   _MyWidgetState createState() => _MyWidgetState();
// }
//
// class _MyWidgetState extends State<MyWidget> {
//   String? tvdropdown1;
//   String? tvdropdown2;
//   String? tvdropdown3;
//   String? tvdropdown4;
//   String? tvrole1;
//   String? tvrole2;
//   String? tvrole3;
//   String? tvrole4;
//   String? moviedropdown1;
//   String? movierole1;
//   String? promotiondropdown1;
//   String? promotionrole1;
//
//   final tvchannelname1Controller = TextEditingController();
//   final tvchannelname2Controller = TextEditingController();
//   final tvchannelname3Controller = TextEditingController();
//   final tvchannelname4Controller = TextEditingController();
//   final tvshowname1Controller = TextEditingController();
//   final tvshowname2Controller = TextEditingController();
//   final tvshowname3Controller = TextEditingController();
//   final tvshowname4Controller = TextEditingController();
//    final moviename1Controller = TextEditingController();
//   final promotionname1Controller = TextEditingController();
//   final promotionyear1Controller = TextEditingController();
//
//   final _formkey = GlobalKey<FormState>();
//
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   tvdropdown1 = null;
//   //   tvrole1 = null;
//   //   moviedropdown1 = null;
//   //   movierole1 = null;
//   //   promotiondropdown1 = null;
//   //   promotionrole1 = null;
//   // }
//
//   Widget buildDropdownFormField({
//     required List<String> items,
//     required String? value,
//     required void Function(String?) onChanged,
//   }) {
//     List<DropdownMenuItem<String>> dropdownItems = items.map((String item) {
//       return DropdownMenuItem<String>(
//         value: item,
//         child: Text(item),
//       );
//     }).toList();
//
//     return DropdownButtonFormField<String>(
//       dropdownColor: Colors.white,
//       value: value,
//       onChanged: onChanged,
//       items: [
//         const DropdownMenuItem<String>(
//           value: null,
//           child: Text('Select', style: TextStyle(color: Colors.black)),
//         ),
//         ...dropdownItems,
//       ],
//       decoration: const InputDecoration(
//         fillColor: Colors.white,
//         contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
//         isDense: true,
//         focusedErrorBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(4)),
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(4)),
//           borderSide: BorderSide(width: 1, color: Colors.grey),
//         ),
//         filled: true,
//       ),
//     );
//   }
//
//   Widget buildDropdownFormField2({
//     required List<String> items,
//     required String? value,
//     required void Function(String?) onChanged,
//   }) {
//     List<DropdownMenuItem<String>> dropdownItems = items.map((String item) {
//       return DropdownMenuItem<String>(
//         value: item,
//         child: Text(item),
//       );
//     }).toList();
//
//     return DropdownButtonFormField<String>(
//       dropdownColor: Colors.white,
//       value: value,
//       onChanged: onChanged,
//       items: [
//         const DropdownMenuItem<String>(
//           value: null,
//           child: Text('Select Role', style: TextStyle(color: Colors.black)),
//         ),
//         ...dropdownItems,
//       ],
//       decoration: const InputDecoration(
//         fillColor: Colors.white,
//         contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
//         isDense: true,
//         focusedErrorBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(4)),
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(4)),
//           borderSide: BorderSide(width: 1, color: Colors.grey),
//         ),
//         filled: true,
//       ),
//     );
//   }
//
//
//   Widget buildTextFormField({
//     required TextEditingController controller,
//     required String hintText,
//   }) {
//     return TextFormField(
//       controller: controller,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
//         isDense: true,
//         hintText: hintText,
//         hintStyle: const TextStyle(color: Colors.black),
//         border: const OutlineInputBorder(),
//         focusedBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         disabledBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(4)),
//           borderSide: BorderSide(width: 1, color: Colors.grey),
//         ),
//         focusedErrorBorder: const OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.black),
//         ),
//         errorBorder: const OutlineInputBorder(
//           borderRadius: BorderRadius.all(Radius.circular(4)),
//           borderSide: BorderSide(width: 1, color: Colors.black),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formkey,
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Column(
//               children: [
//                 Container(
//                   padding: const EdgeInsets.only(top: 60),
//                   child: const Center(
//                     child: Text(
//                       "Talent",
//                       style: TextStyle(
//                         fontWeight: FontWeight.w900,
//                         color: Colors.black,
//                         fontSize: 30,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w900,
//                     color: Colors.black,
//                     fontSize: 14,
//                   ),
//                 ),
//                 const SizedBox(height: 30),
//                 Container(
//                   color: Colors.black,
//                   width: 400,
//                   //height: 950,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(20),
//
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: const Text(
//                           "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(20),
//                         child: Container(
//                           padding: const EdgeInsets.all(20),
//                           color: Colors.white,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: [
//                                   Container(
//                                     width: 12,
//                                     height: 12,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       border: Border.all(
//                                           color: Colors.black, width: 2.0),
//                                     ),
//                                     child: Center(
//                                       child: Container(
//                                         width: 3,
//                                         height: 3,
//                                         decoration: const BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     width: 5,
//                                   ),
//                                   const Text(
//                                     "Work Experience",
//                                     style: TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               const Text(
//                                 "TV / Web Series/ Reality show",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 14,
//                                 ),
//                               ),
//
//                               const SizedBox(
//                                 height: 10,
//                               ),
//
//                               buildDropdownFormField(
//                                 items: ['TV', 'Web Series', 'Reality Show'],
//                                 value: tvdropdown1,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     tvdropdown1 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: tvchannelname1Controller,
//                                 hintText: 'Channel / OTT Name ',
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: tvshowname1Controller,
//                                 hintText: 'Name of the Show / Serial',
//                               ),
//                               const SizedBox(height: 15),
//                               buildDropdownFormField2(
//                                 items: ['Editor', 'Assistant Editor', 'Supporting Technician', 'Junior Editor', 'Other'],
//                                 value: tvrole1,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     tvrole1 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(height: 10),
//                               const Divider(thickness: 1, color: Colors.black),
//                               const SizedBox(height: 10),
//
//
//
//                               buildDropdownFormField(
//                                 items: ['TV', 'Web Series', 'Reality Show'],
//                                 value: tvdropdown2,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     tvdropdown2 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: tvchannelname2Controller,
//                                 hintText: 'Channel / OTT Name ',
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: tvshowname2Controller,
//                                 hintText: 'Name of the Show / Serial',
//                               ),
//                               const SizedBox(height: 15),
//                               buildDropdownFormField2(
//                                 items: ['Editor', 'Assistant Editor', 'Supporting Technician', 'Junior Editor', 'Other'],
//                                 value: tvrole2,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     tvrole2 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               const Divider(thickness: 1, color: Colors.black),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//
//                               buildDropdownFormField(
//                                 items: ['TV', 'Web Series', 'Reality Show'],
//                                 value: tvdropdown3,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     tvdropdown3 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: tvchannelname3Controller,
//                                 hintText: 'Channel / OTT Name ',
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: tvshowname3Controller,
//                                 hintText: 'Name of the Show / Serial',
//                               ),
//                               const SizedBox(height: 15),
//                               buildDropdownFormField2(
//                                 items: ['Editor', 'Assistant Editor', 'Supporting Technician', 'Junior Editor', 'Other'],
//                                 value: tvrole3,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     tvrole3 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               const Divider(thickness: 1, color: Colors.black),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//
//                               buildDropdownFormField(
//                                 items: ['TV', 'Web Series', 'Reality Show'],
//                                 value: tvdropdown4,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     tvdropdown4 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: tvchannelname4Controller,
//                                 hintText: 'Channel / OTT Name ',
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: tvshowname4Controller,
//                                 hintText: 'Name of the Show / Serial',
//                               ),
//                               const SizedBox(height: 15),
//                               buildDropdownFormField2(
//                                 items: ['Editor', 'Assistant Editor', 'Supporting Technician', 'Junior Editor', 'Other'],
//                                 value: tvrole4,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     tvrole4 = newValue!;
//                                   });
//                                 },
//                               ),
//
//                               const SizedBox(height: 10),
//                               const Divider(thickness: 1, color: Colors.black),
//                               const SizedBox(height: 10),
//                               const Text(
//                                 "Movies / Music Videos / Short films / TVC",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               const SizedBox(height: 10),
//                               buildDropdownFormField(
//                                 items: ['Movies', 'Music Videos', 'Short Films', 'TVC'],
//                                 value: moviedropdown1,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     moviedropdown1 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: moviename1Controller,
//                                 hintText: 'Name',
//                               ),
//                               const SizedBox(height: 15),
//                               buildDropdownFormField2(
//                                 items: ['Editor', 'Assistant Editor', 'Supporting Technician', 'Junior Editor', 'Other'],
//                                 value: movierole1,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     movierole1 = newValue!;
//                                   });
//                                 },
//                               ),
//
//                               const SizedBox(height: 10),
//                               const Divider(thickness: 1, color: Colors.black),
//                               const SizedBox(height: 10),
//                               const Text(
//                                 "Brand Promotions / Shows & Events / Magazines / E-Commerce",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                               const SizedBox(height: 10),
//                               buildDropdownFormField(
//                                 items: ['Brand Promotions', 'Shows & Events', 'Magazines', 'E-commerce'],
//                                 value: promotiondropdown1,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     promotiondropdown1 = newValue!;
//                                   });
//                                 },
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: promotionname1Controller,
//                                 hintText: 'Name',
//                               ),
//                               const SizedBox(height: 15),
//                               buildTextFormField(
//                                 controller: promotionyear1Controller,
//                                 hintText: 'Year',
//                               ),
//                               const SizedBox(height: 15),
//                               buildDropdownFormField2(
//                                 items: ['Editor', 'Assistant Editor', 'Supporting Technician', 'Junior Editor', 'Other'],
//                                 value: promotionrole1,
//                                 onChanged: (newValue) {
//                                   setState(() {
//                                     promotionrole1 = newValue!;
//                                   });
//                                 },
//                               ),
//
//
//                               const SizedBox(
//                                 height: 30,
//                               ),
//                               Row(
//                                 children: [
//                                   Expanded(
//                                     child: SizedBox(
//                                       width: double.infinity, // Adjust width as needed
//                                       child: ElevatedButton(
//                                         style: ElevatedButton.styleFrom(
//                                           backgroundColor: Colors.black,
//                                           shape: const RoundedRectangleBorder(),
//                                         ),
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                         child: const Text(
//                                           "Previous",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(width: 16), // Adjust spacing as needed
//                                   Expanded(
//                                     child: SizedBox(
//                                       width: double.infinity, // Adjust width as needed
//                                       child: ElevatedButton(
//                                         style: ElevatedButton.styleFrom(
//                                           backgroundColor: Colors.black,
//                                           shape: const RoundedRectangleBorder(),
//                                         ),
//                                         onPressed: () async {
//                                           if (_formkey.currentState!.validate()) {
//
//                                             Navigator.push(context, MaterialPageRoute(builder: (context) =>
//                                             const ProfessionalDetails(),
//                                             ));
//                                           }
//                                         },
//
//                                         child: const Text(
//                                           "Next",
//                                           style: TextStyle(
//                                             color: Colors.white,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
