import 'package:flutter/material.dart';
import 'package:slack_profile/webview.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  final String name = 'Olasunkanmi Beckley';
  final String email = 'beckleysunkanmi@gmail.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('My slack profile'))),
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ProfilePhoto(),
          const SizedBox(height: 40),
          Text( name,
            style: Theme.of(context).textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(email,
              style: Theme.of(context).textTheme.displayMedium),
          const SizedBox(height: 40),
          SizedBox(
            width: 200,
            height: 50,
            child: GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Text('open github profile',
                        style: Theme.of(context).textTheme.labelLarge)),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const GithubWebView())),
            ),
          )
        ],
      ),
    ));
  }
}

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key});


  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/profile_pic.png'),
      ),
    );
  }
}
