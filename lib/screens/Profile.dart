import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool lockApp = true;
  bool useFingerprint = false;
  bool chnagePassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: [
          _commonTileWidget(),
          _accountTileWidget(),
          _securityTileWidget(),
          _miscTileWidget(),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  Column _securityTileWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonTitle(
          title: 'Security',
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Column(
                children: [
                  _toggleButtonRow(
                    title: 'Lock app in background',
                    icon: Icons.lock,
                    callback: () {
                      setState(() {
                        lockApp = !lockApp;
                      });
                    },
                    isSelected: lockApp,
                  ),
                  Divider(),
                  _toggleButtonRow(
                    title: 'Use fingerprint',
                    icon: Icons.fingerprint,
                    callback: () {
                      setState(() {
                        useFingerprint = !useFingerprint;
                      });
                    },
                    isSelected: useFingerprint,
                  ),
                  Divider(),
                  _toggleButtonRow(
                    title: 'Change Password',
                    icon: Icons.password_outlined,
                    callback: () {
                      setState(() {
                        chnagePassword = !chnagePassword;
                      });
                    },
                    isSelected: chnagePassword,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _toggleButtonRow({
    required VoidCallback callback,
    bool isSelected = false,
    required String title,
    required IconData icon,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: callback,
          child: Icon(
            isSelected ? Icons.toggle_on : Icons.toggle_off,
            size: 34,
            color: isSelected ? Colors.redAccent : Colors.black,
          ),
        ),
      ],
    );
  }

  Column _miscTileWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonTitle(
          title: 'Misc',
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Column(
                children: [
                  _profileSettingRow(
                    title: 'Terms of Services',
                    icon: Icons.file_copy_outlined,
                    subtitle: '',
                  ),
                  Divider(
                    height: 30,
                  ),
                  _profileSettingRow(
                    title: 'Open source licenses',
                    icon: Icons.open_in_browser,
                    subtitle: '',
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _commonTileWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonTitle(
          title: 'Common',
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              Column(
                children: [
                  _profileSettingRow(
                    title: 'Language',
                    icon: Icons.language_outlined,
                    subtitle: 'English',
                  ),
                  Divider(
                    height: 30,
                  ),
                  _profileSettingRow(
                    title: 'Environment',
                    icon: Icons.cloud_queue,
                    subtitle: 'Production',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column _accountTileWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonTitle(
          title: 'Account',
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            children: [
              _profileSettingRow(
                title: 'Phone Number',
                icon: Icons.phone,
                subtitle: '',
              ),
              Divider(
                height: 30,
              ),
              _profileSettingRow(
                title: 'Email',
                icon: Icons.email,
                subtitle: '',
              ),
              Divider(
                height: 30,
              ),
              _profileSettingRow(
                title: 'Sign out',
                icon: Icons.logout,
                subtitle: '',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding _commonTitle({
    required String title,
  }) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Row _profileSettingRow({
    required String title,
    required IconData icon,
    required String subtitle,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black,
        ),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        Spacer(),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(width: 10),
        Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: Colors.black,
        ),
      ],
    );
  }
}
