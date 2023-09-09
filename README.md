# slack_profile: HNG Task 01

- The slack api is used to fetch my profile info using userId.
- A slack app needs to be created on slack.com to get an api key.
# dependencies:
    1. http: for fetching the slack profile
    2. webview_flutter: for displaying github content in webview

- minSdkVersion needs to be set to 19 in android/app/build.gradle for webview to work
- internet permission must be set in android/app/src/main/AndroidManifest.xml 