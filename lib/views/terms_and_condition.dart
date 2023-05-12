import 'package:flutter/material.dart';
import 'package:telfili/utils/hex_color.dart';

class TermsAndConditions extends StatefulWidget {

  const TermsAndConditions({Key key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();

}

class _TermsAndConditionsState extends State<TermsAndConditions> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor("#F2F2F2"),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.fromLTRB(15, 70, 15, 0),
            child: Column(
              children: [
                Image.asset("assets/images/text logo.png"),
                Container(height: 35,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("Terms and conditions", style: TextStyle(
                    color: HexColor("#1845F9"),
                    fontFamily: 'futura-medium',
                    fontSize: 24,
                  ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("""These terms and conditions (“Agreement”) set forth the general terms and conditions of your use 
of the “panny” mobile application (“Mobile Application” or “Service”) and any of its related 
products and services (collectively, “Services”). This Agreement is legally binding between you 
(“User”, “you” or “your”) and this Mobile Application developer. If you are entering into this 
agreement on behalf of a business or other legal entity, you represent that you have the authority
to bind such entity to this agreement, in which case the terms “User”, “you” or “your” shall refer to
such entity. If you do not have such authority, or if you do not agree with the terms of this
 agreement,  you must not accept this agreement and may not access and use the Mobile
Application and Services. By accessing and using the Mobile Application and Services, you 
acknowledge that you have read, understood, and agree to be bound by the terms of this 
Agreement. You acknowledge that this Agreement is a contract between you and the Operator, 
even though it is electronic and is not physically signed by you, and it governs your use of the 
Mobile Application and Services. This terms and conditions policy was created with the help of the 
terms and conditions generator.""",
                    style: TextStyle(
                    color: HexColor("#707070"),
                    fontFamily: 'futura-regular',
                    fontSize: 12,
                  ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("Accounts and membership", style: TextStyle(
                    color: HexColor("#1845F9"),
                    fontFamily: 'futura-medium',
                    fontSize: 24,
                  ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("""You must be at least 16 years of age to use the Mobile Application and Services. 
By using the Mobile Application and Services and by agreeing to this Agreement you warrant 
and represent that you are at least 16 years of age. If you create an account in the 
Mobile Application, you are responsible for maintaining the security of your account and you are 
fully responsible for all activities that occur under the account and any other actions taken in 
connection with it. We may, but have no obligation to, monitor and review new accounts before 
you may sign in and start using the Services. Providing false contact information of any kind may
result in the termination of your account. You must immediately notify us of any unauthorized uses 
of your account or any other breaches of security. We will not be liable for any acts or omissions 
by you, including any damages of any kind incurred as a result of such acts or omissions.
We may suspend, disable, or delete your account (or any part thereof) if we determine that you 
have violated any provision of this Agreement or that your conduct or content would tend to 
damage our reputation and goodwill. If we delete your account for the foregoing reasons, you 
may not re-register for our Services. We may block your email address and Internet protocol 
address to prevent further registration.""",
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("User content", style: TextStyle(
                    color: HexColor("#1845F9"),
                    fontFamily: 'futura-medium',
                    fontSize: 24,
                  ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("""We do not own any data, information or material (collectively, “Content”) that you submit in the 
Mobile Application in the course of using the Service. You shall have sole responsibility for the 
accuracy, quality, integrity, legality, reliability, appropriateness, and intellectual property 
ownership or right to use of all submitted Content. We may, but have no obligation to, monitor 
and review the Content in the Mobile Application submitted or created using our Services by you. 
You grant us permission to access, copy, distribute, store, transmit, reformat, display and perform 
the Content of your user account solely as required for the purpose of providing the Services to 
you. Without limiting any of those representations or warranties, we have the right, though not the
obligation, to, in our own sole discretion, refuse or remove any Content that, in our reasonable 
opinion, violates any of our policies or is in any way harmful or objectionable. 
Unless specifically permitted by you, your use of the Mobile Application and Services does not 
grant us the license to use, reproduce, adapt, modify, publish or distribute the Content created 
by you or stored in your user account for commercial, marketing or any similar purpose.
""",
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("Acceptance of these terms", style: TextStyle(
                    color: HexColor("#1845F9"),
                    fontFamily: 'futura-medium',
                    fontSize: 24,
                  ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("""You acknowledge that you have read this Agreement and agree to all its terms and conditions. 
By accessing and using the Mobile Application and Services you agree to be bound by this 
Agreement. If you do not agree to abide by the terms of this Agreement, you are not authorized 
to access or use the Mobile Application and Services.
""",
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("Contacting us", style: TextStyle(
                    color: HexColor("#1845F9"),
                    fontFamily: 'futura-medium',
                    fontSize: 24,
                  ),),
                ),
                Container(height: 15,),
                Container(
                  padding: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Text("""If you have any questions, concerns, or complaints regarding this Agreement, we encourage you
to contact us using the details below:

panny4mobile@gmail.com
""",
                    style: TextStyle(
                      color: HexColor("#707070"),
                      fontFamily: 'futura-regular',
                      fontSize: 12,
                    ),),
                ),
                Container(height: 120,),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
        height: 90,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        color: HexColor("#F0F0F0"),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              alignment: Alignment.centerRight,
              width: 300,
              height: 40,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                color: HexColor("#FF66C4"),
                child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Go back",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: 'futura-medium'
                          ),
                        ),
                      ],
                    )

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
