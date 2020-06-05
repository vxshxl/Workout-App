/*
Name: Settings.dart
Purpose: Sets up the settings page for our app and includes the 
Version: 1.0  6/7/20
Author(s): Patrick Phang
Dependencies: None
*/

import 'package:flutter/material.dart';
import 'package:gyminprogress/main.dart';

class Setting extends StatefulWidget{
  @override
   SetState createState() => SetState();
}

class SetState extends State<Setting> {
  @override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title:Text("Settings"),
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              SwitchListTile(
                value: true,
                title: Text("Notifications",style: TextStyle(color:Colors.white),),
                onChanged: (value) {
                  value = false;
                },
              ),
              ListTile(
                  title: Text("Unit of Measurement",style: TextStyle(color:Colors.white),),
                  subtitle: Text("Imperial (lb)",style: TextStyle(color:Colors.white),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Unit()),
                    );
                  }
              ),
            ],
          ),
          SizedBox(height: 30.0),
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "LEGAL",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              ListTile(
                  title: Text("Terms & Conditions",style: TextStyle(color:Colors.white),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Terms()),
                    );
                  }
              ),
              ListTile(
                  title: Text("Privacy Policy",style: TextStyle(color:Colors.white),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Privacy()),
                    );
                  }
              ),
              SizedBox(height: 30.0)
            ],
          ),
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "HELP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              ListTile(
                  title: Text("Contact Us",style: TextStyle(color:Colors.white),),
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onTap:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Contact()),
                    );
                  }
              ),
            ],
          ),
          ListTile(
            title: Text("Sign Out",style: TextStyle(color:Colors.white),),
            onTap: (){
              Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GIP()),
              );
              },
          ),
        ],
      ),
    );
  }
}

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      body: SingleChildScrollView(
          child: Text("Welcome to Gip! These terms and conditions outline the rules and regulations for the use of GIP. By accessing this GIP we assume you accept these terms and conditions. Do not continue to use GIP if you do not agree to take all of the terms and conditions stated on this page. The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: “Client”, “You” and “Your” refers to you, the person log on this GIP and compliant to the Company's terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves. All terms refer to the offer, acceptance, and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client's needs in respect of the provision of the Company's stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same. Cookies We employ the use of cookies. By accessing GIP, you agreed to use cookies in agreement with the Company Name's Privacy Policy. Most interactive GIPuse cookies to let us retrieve the user's details for each visit. Cookies are used by our app to enable the functionality of certain areas to make it easier for people visiting our app. Some of our affiliate/advertising partners may also use cookies. License Unless otherwise stated, Company Name and/or its licensors own the intellectual property rights for all material on GIP. All intellectual property rights are reserved. You may access this from GIP for your own personal use subjected to restrictions set in these terms and conditions. You must not: Republish material from GIP Sell, rent or sub-license material from GIP Reproduce, duplicate or copy material from GIP Redistribute content from GIP This Agreement shall begin on the date hereof. Parts of this GIP offer an opportunity for users to post and exchange opinions and information in certain areas of the GIP. Company Name does not filter, edit, publish, or review Comments prior to their presence on the app. Comments do not reflect the views and opinions of Company Name, its agents, and/or affiliates. Comments reflect the views and opinions of the person who posts their views and opinions. To the extent permitted by applicable laws, Company Name shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this app. Company Name reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive, or causes breach of these Terms and Conditions. You warrant and represent that: You are entitled to post the Comments on our app and have all necessary licenses and consents to do so; The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party; The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity. You hereby grant Company Name a non-exclusive license to use, reproduce, edit, and authorize others to use, reproduce, and edit any of your Comments in any and all forms, formats or media. Hyperlinking to our Content The following organizations may link to our app without prior written approval: Government agencies; Search engines; News organizations; Online directory distributors may link to our app in the same manner as they hyperlink to the app of other listed businesses; and Systemwide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site. These organizations may link to our home page, to publications or to other app information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party's site. We may consider and approve other link requests from the following types of organizations: commonly-known consumer and/or business information sources; dot.com community sites; associations or other groups representing charities; online directory distributors; internet portals; accounting, law and consulting firms; and educational institutions and trade associations. We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Company Name, and (d) the link is in the context of general resource information. These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party's site. If you are one of the organizations listed in paragraph 2 above and are interested in linking to our app, you must inform us by sending an e-mail to Company Name. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our app, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response. Approved organizations may hyperlink to our app as follows: By use of our corporate name; or By use of the uniform resource locator being linked to; or By use of any other description of our app being linked to that makes sense within the context and format of content on the linking party's site. No use of Company Name's logo or other artwork will be allowed for linking absent a trademark license agreement. Iframes Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our app. Content Liability We shall not be held responsible for any content that appears on your app. You agree to protect and defend us against all claims that are rising on your app. No link(s) should appear on any app that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights. Reservation of Rights We reserve the right to request that you remove all links or any particular link to our app. You approve to immediately remove all links to our app upon request. We also reserve the right to amend these terms and conditions and it's linking policy at any time. By continuously linking to our app, you agree to be bound to and follow these linking terms and conditions. Removal of links from our app if you find any link on our app that is offensive for any reason, you are free to contact and inform us at any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly. We do not ensure that the information on this app is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the app remains available or that the material on the app is kept up to date. Disclaimer To the maximum extent permitted by applicable law, we exclude all representations, warranties, and conditions relating to our app and the use of this app. Nothing in this disclaimer will: limit or exclude our or your liability for death or personal injury; limit or exclude our or your liability for fraud or fraudulent misrepresentation; limit any of our or your liabilities in any way that is not permitted under applicable law, or exclude any of our or your liabilities that may not be excluded under applicable law. The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty. As long as the app and the information and services on the app are provided free of charge, we will not be liable for any loss or damage of any nature.",style: TextStyle(color: Colors.white),)
      ),
    );
  }
}

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Privacy Policy"),
      ),
      body: SingleChildScrollView(
          child: Text("Privacy Policy By using this app, you agree to the terms set forth in this Privacy Policy and in the Terms of Service. This app is used to inform GIP visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service. If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy. The terms used in this Privacy Policy have the same meanings as in our Terms of Service unless otherwise defined in this Privacy Policy. Information Collection and Use For a better experience while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to your contact information. The information that we collect will be used to contact or identify you, and help make the service a better experience for the users of the service. Log Data We want to inform you that when you visit our Service, we may collect information that your browser sends to us that is called Log Data. This Log Data may include information such as your computer’s Internet Protocol (“IP”) address, browser version, pages of our Service that you visit, the time and date of your visit, the time spent on those pages, and other statistics.  This helps us provide a better overall service for you and all users. Cookies Cookies are files with a small amount of data that is commonly used as an anonymous unique identifier. These are sent to your browser from the app that you visit and are stored on your computer’s hard drive. Our app uses these “cookies” to improve our Service for many reasons, including, but not limited to, helping you log in and log out of your account. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your computer. If you choose to refuse our cookies, you may not be able to use some portions of our Service. Service Providers, We may employ third-party companies and individuals due to the following reasons: To facilitate our Service; To provide the Service on our behalf; To perform Service-related services, or To assist us in analyzing how our Service is used. We want to inform our Service users that these third parties may have access to your Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose. Security We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security. Links to Other Sites Our Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of this app. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services. Children’s Privacy Our Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 and do not permit them to utilize the service. Changes to This Privacy Policy We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. Any changes to the Privacy Policy will be posted on this page and all changes are effective immediately for all users. Terms of Service By using this app you agree to the Privacy Policy on this page, as well as, the terms specified in the Terms of Service.",style: TextStyle(color: Colors.white,)
      ),
    ))
    ;
  }
}

class Unit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Unit of Measurement"),
      ),
      body: Column(
          children: <Widget>[
            SwitchListTile(
              value: true,
              title: Text("Imperial (lb)"),
              onChanged: (value) {},
            ),
            SwitchListTile(
              value: false,
              title: Text("Metric (kg)"),
              onChanged: (value) {},
            ),
          ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
              title: Text("Email Us"),
              subtitle: Text("gip@gmail.com",style: TextStyle(color: Colors.white),)
          ),
          ListTile(
              title: Text("Call Us"),
              subtitle: Text("215-555-0191",style: TextStyle(color: Colors.white))
          ),
        ]
      ),
    );
  }
}