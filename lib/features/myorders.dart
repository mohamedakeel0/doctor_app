import 'package:doctor_app/components/default_button.dart';
import 'package:doctor_app/components/default_divider.dart';
import 'package:doctor_app/core/resources/color_manager.dart';
import 'package:doctor_app/core/resources/font_manager.dart';
import 'package:doctor_app/core/resources/routes_manager.dart';
import 'package:doctor_app/core/resources/string_manager.dart';
import 'package:doctor_app/core/resources/values_manager.dart';
import 'package:doctor_app/core/utils/app_constance.dart';
import 'package:doctor_app/core/utils/dummy.dart';
import 'package:doctor_app/features/appointment/presentation/components/item_doctor_appointment.dart';
import 'package:doctor_app/features/appointment/presentation/components/two_item_in_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrderScreen extends StatelessWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor:  Colors.grey.shade200,
      leading: Icon(Icons.arrow_back_ios_new),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(Icons.search),
        ),
      ],
    ),
      backgroundColor: Colors.grey.shade200,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 5, right: 5),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text( 'My Orders', style:

            Theme

                .of(context)

                .textTheme

                .headline1!

                .copyWith(

              fontWeight: FontWeight.w800,

              color: Colors.black,

              fontSize: 40,

            ),),
            SizedBox(height: 20,),
            Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
              SizedBox(width: Get.width / AppResponsiveWidth.w2),
              Container(height: 40,width: 125,
              decoration: BoxDecoration(color: Colors.black,

                  borderRadius:BorderRadius.circular(25)),
              child: Center(
                child: Text('Delivered',style: TextStyle(fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),),
              ),
              ),
              Container(height: 40,width: 125,
                decoration: BoxDecoration(color: Colors.grey.shade200,

                    borderRadius:BorderRadius.circular(25)),
                child: Center(
                  child: Text('Processing',style: TextStyle(fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),),
                ),
              ),
              Container(height: 40,width: 125,
                decoration: BoxDecoration(color: Colors.grey.shade200,

                    borderRadius:BorderRadius.circular(25)),
                child: Center(
                  child: Text('Cancelled',style: TextStyle(fontSize: 17,
                      color: Colors.black,
                      fontWeight: FontWeight.w500),),
                ),
              ),

            ],),


            SizedBox(height: 20,),
            SizedBox(height: Get.height-255,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(padding: EdgeInsets.zero,
                  itemBuilder: (context, index){
                    return  Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order N1974556',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,),
                                ),
                                Spacer(),
                                Text(
                                  '05-12-2019',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,)
                                ),


                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Tracking number : ',
                                    style:
                                   TextStyle(     color: Colors.grey,
                                     fontWeight: FontWeight.w400,
                                     fontSize: 18,),

                                  ),
                                  TextSpan(
                                    text: 'iwadsasdasdasd',
                                    style:
                                    TextStyle(     color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,),

                                  ),

                                ],
                              ),
                            ),
                                SizedBox(
                                  height: 10,
                                ),

                              Row(children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Quantity : ',
                                        style:
                                        Theme.of(context).textTheme.headline1!.copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),

                                      ),
                                      TextSpan(
                                        text: '3',
                                        style:
                                        Theme.of(context).textTheme.headline1!.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),

                                      ),

                                    ],
                                  ),
                                ),
                                Spacer(),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Total Amount : ',
                                        style:
                                        Theme.of(context).textTheme.headline1!.copyWith(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),

                                      ),
                                      TextSpan(
                                        text: '112\$',
                                        style:
                                        Theme.of(context).textTheme.headline1!.copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 18,
                                        ),

                                      ),

                                    ],
                                  ),
                                ),
                              ],),
                                const SizedBox(
                                  height: 10,
                                ),
                            Row(children: [
                              Container(height: 40,width: 125,
                                decoration: BoxDecoration(color: Colors.white,
                                    border: Border.all(color: Colors.black,width: 1.5),
                                    borderRadius:BorderRadius.circular(25)),
                                child: const Center(
                                  child: Text('Details',style: TextStyle(fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),),
                                ),
                              ),
                              const Spacer(),
                              const Text('Delivered',style: TextStyle(     color: Colors.green,
                                fontWeight: FontWeight.w400,
                                fontSize: 18,),)
                            ],)

                          ]),
                        ),
                      ),
                    );
                  },

                  separatorBuilder: (context, index) => const SizedBox(height: 10,),scrollDirection: Axis.vertical,
                  itemCount:5,),
              ),
            )

          ]),
        ),
      ),);
  }
}
