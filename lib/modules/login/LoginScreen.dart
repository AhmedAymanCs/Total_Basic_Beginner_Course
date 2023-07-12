import 'package:exmaple/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget
{
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    var emailAddresscontroller = TextEditingController();
    var passwoedController = TextEditingController();
    var keyForm=GlobalKey<FormState>();
    bool isPassword=true;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsetsDirectional.only(
            start: 10
          ),
          child: Text(
            'Login Screen',
            style: TextStyle(
              fontSize: 25,
              fontWeight:FontWeight.bold,

            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: keyForm ,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 10,
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 40,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: emailAddresscontroller,
                  onFieldSubmitted: (value) {
                    print(value);
                    print('Ahmed');
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  keyboardType: TextInputType.emailAddress,
                  validator: (value){
                    if (value!.isEmpty)
                      {
                        return 'Email address must not be Empty';
                      }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,

                    ),
                    labelText: 'Email Address',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  controller: passwoedController,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (value) {
                    print(value);
                  },
                  validator: (value){
                    if (value!.isEmpty)
                    {
                      return 'Password address must not be Empty';

                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {

                        });
                      },
                      icon: Icon(Icons.remove_red_eye),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      if(keyForm.currentState!.validate())
                      {
                        print(emailAddresscontroller.text);
                        print(passwoedController.text);
                      }
                         },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\`t Have An Account?'),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register Now',
                      ),
                    ),
                  ],
                )
                ,
                Defaultformfield(controller: emailAddresscontroller, validator: (value)
                {
                  if(value!.isEmpty)
                    {
                      return 'Null';
                    }
                  return null ;
                },
                  text: 'Ahmed',
                  prefix: Icons.access_alarm,
                  suffix: IconButton(onPressed:(){} ,icon:Icon(
                    Icons.ac_unit,
                  ) ,)
                    ,
                  obscure: true ,
                  onSubmit: (value){
                  print('Ahmed');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
