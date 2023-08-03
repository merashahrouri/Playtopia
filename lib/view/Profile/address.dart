import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_final_project/viewModel/SignUpBloc/states.dart';
import 'package:onboarding/onboarding.dart';
import '../../viewModel/SignUpBloc/cubit.dart';
import '../Home/home.dart';

class Address extends StatefulWidget {
  final String uid;
  const Address({super.key,  required this.uid});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {

  String? selectedItem;
  TextEditingController controllerAddress = TextEditingController();
String value = '';

  @override
  void initState() {
    super.initState();
    value = widget.uid;
  }
  @override
  void dispose() {
    controllerAddress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
      
            title: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Add your address",
                    textAlign: TextAlign.left,
                  )),
            ),
            elevation: 0.0,
          ),
          body: BlocConsumer<SignupCubit, SignupStates>(
            builder: (context, state) {
              return ListView(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 10),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: selectedItem,
                        items: const [
                          DropdownMenuItem(
                            value: 'Amman',
                            child: Text('Amman'),
                          ),
                          DropdownMenuItem(
                            value: 'Irbid',
                            child: Text('Irbid'),
                          ),
                          DropdownMenuItem(
                            value: 'Salt',
                            child: Text('Salt'),
                          ),
                          DropdownMenuItem(
                            value: 'Jarash',
                            child: Text('Jarash'),
                          ),
                          DropdownMenuItem(
                            value: 'Adjlun',
                            child: Text('Adjlun'),
                          ),
                          DropdownMenuItem(
                            value: 'Zarqa',
                            child: Text('Zarqa'),
                          ),
                          DropdownMenuItem(
                            value: 'Tafeela',
                            child: Text('Tafeela'),
                          ),
                          DropdownMenuItem(
                            value: 'Mafraq',
                            child: Text('Mafraq'),
                          ),
                          DropdownMenuItem(
                            value: 'Maan',
                            child: Text('Maan'),
                          ),
                          DropdownMenuItem(
                            value: 'Aqaba',
                            child: Text('Aqaba'),
                          ),
                          DropdownMenuItem(
                            value: 'Balqa',
                            child: Text('Balqa'),
                          ),
                          DropdownMenuItem(
                            value: 'Karak',
                            child: Text('Karak'),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            selectedItem = value;
                          },);
                        },
                      ),
                    ),
                  ),
      
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 10),
                    child: TextFormField(
                      maxLines: 5,
                      controller: controllerAddress,
                      validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your address.';
                            }
                            return null;},
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "Address")
            ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 10),
                    child: SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 178, 168, 210)),
                            onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Home(
                                        
                                        )));
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: background,
                                  fontWeight: FontWeight.bold),
                            ))),
                  ),
                ],
              );
            },
            listener: (context, state) {},
          ),
        ),
      ),
    );
  }
}
