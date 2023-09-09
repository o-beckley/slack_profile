import 'package:flutter/material.dart';
import 'package:slack_profile/service.dart';
import 'package:slack_profile/webview.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error} occoured'),
            );
          } else if (snapshot.hasData) {
            if (snapshot.data['ok']) {
              var profile = snapshot.data['profile'];
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfilePhoto(url: profile['image_original']),
                    const SizedBox(height: 40),
                    Text('${profile['real_name']}',
                      style: Theme.of(context).textTheme.displayLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Text('${profile['email']}',
                      style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(height: 40),
                    SizedBox(
                      width: 200,
                      height: 50,
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: 
                          Text('open github profile',
                          style: Theme.of(context).textTheme.labelLarge)
                          ),
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const GithubWebView())
                        ),
                      ),
                    )
                  ],
                ),
              );
            }
          }
        }
        return const Center(child: CircularProgressIndicator());
      },
      future: getProfile(),
    ));
  }
}

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: CircleAvatar(
        backgroundImage: NetworkImage(url),
      ),
    );
  }
}
