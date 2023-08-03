# AppLink.ai

[AppLink.ai](https://applink.ai) is a powerful library that simplifies the implementation of deeplinking and deferred deeplinking in iOS apps. It provides an easy-to-use API to handle incoming deeplinks and route them to the appropriate parts of your app, enabling a seamless user experience.

## Features

- Easy integration: Get started with just a few lines of code.
- Seamless deeplinking: Handle incoming deeplinks effortlessly.
- Deferred deeplinking: Support deferred deeplinks for receiving deeplink data even after app installation.
- Universal link support: Works with both traditional deeplinks and universal links.

## Installation

### Cocoapods
You can install AppLinkAI using CocoaPods. Add the following line to your Podfile:

```ruby
pod 'AppLinkAI', '~> 1.0.0'
```

### Swift Package Manager
You can also use Swift Package Manager to add AppLinkAI as a dependency to your project. In order to do so, use the following URL:

https://github.com/CoinStatsHQ/AppLinkAI

## Usage

Set up AppLinkAI in your AppDelegate:

```Swift
import AppLinkAI

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // ...
        AppLink.shared.initialize(launchOptions: launchOptions) { params, error in
            // Use params for your deeplinkings
        }
        // ...
        return true
    }
    
    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        // ...
        AppLink.shared.continue(userActivity)
        // ...
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        // ...
        AppLink.shared.handleDeepLink(url)
        // ...
        return true
    }        
```

Set up Api Keys in your app target's info.plist
```xml
<key>applink.keys</key>
<dict>
    <key>live</key>
    <string>{your live api key}</string>
    <key>test</key>
    <string>{your test api key}</string>
</dict>
```

If you don't have an api key yet, you can obtain one from [applink.ai](https://applink.ai) dashboard.

## License

AppLinkAI is released under the MIT License. 
See LICENSE for details.

## Contact

For any inquiries or feedback, please reach out to us at support@applink.ai.
