# Animating Location Pin [![GitHub stars](https://img.shields.io/github/stars/apgapg/animating_location_pin.svg?style=social)](https://github.com/apgapg/animating_location_pin) [![Twitter Follow](https://img.shields.io/twitter/url/https/@ayushpgupta.svg?style=social)](https://twitter.com/ayushpgupta) ![GitHub last commit](https://img.shields.io/github/last-commit/apgapg/animating_location_pin.svg) [![Website shields.io](https://img.shields.io/website-up-down-green-red/http/shields.io.svg)](https://play.google.com/store/apps/details?id=com.coddu.flutterprofile)[![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)](https://github.com/apgapg/animating_location_pin)

This Flutter package provides a Animating Location Pin Widget which can be used while fetching device location.

<img src="https://raw.githubusercontent.com/apgapg/animating_location_pin/master/src/s.gif"  height = "400" alt="PieChart">

# 💻 Installation
In the `dependencies:` section of your `pubspec.yaml`, add the following line:

[![Version](https://img.shields.io/pub/v/animating_location_pin.svg)](https://pub.dartlang.org/packages/animating_location_pin)

```yaml
dependencies:
  animating_location_pin: <latest version>
```

# ❔ Usage

### Import this class

```dart
import 'package:animating_location_pin/animating_location_pin.dart';
```

### Add 
Adding this widget is simple. Just directly use its instance for default configuration
```dart
Container(
  child: AnimatingLocationPin(),
)
```
### Full Implementation
```dart
AnimatingLocationPin(
  pinAsset: 'assets/images/pin.png',
  shadowAsset: 'assets/images/shadow.png',
  shadowSizeFactor: 0.4,
  duration: Duration(milliseconds: 500),
  pinJumpHeight: 44.0,
  pinSize: 70.0,
),
```
### Assets used are
<img src="https://raw.githubusercontent.com/apgapg/animating_location_pin/master/src/pin.png" height="100"> 
<img src="https://raw.githubusercontent.com/apgapg/animating_location_pin/master/src/shadow.png" height="100">  

### Note
- Although this animation can be achieved easily with Flare Animation, but this widget involves a good learning to coding such animation manually in flutter 

# ⭐ My Flutter Packages
- [pie_chart](https://pub.dartlang.org/packages/pie_chart)  [![GitHub stars](https://img.shields.io/github/stars/apgapg/pie_chart.svg?style=social)](https://github.com/apgapg/pie_chart)  Flutter Pie Chart with cool animation.
- [avatar_glow](https://pub.dartlang.org/packages/avatar_glow)  [![GitHub stars](https://img.shields.io/github/stars/apgapg/avatar_glow.svg?style=social)](https://github.com/apgapg/avatar_glow)  Flutter Avatar Glow Widget with glowing animation.
- [search_widget](https://pub.dartlang.org/packages/search_widget)  [![GitHub stars](https://img.shields.io/github/stars/apgapg/search_widget.svg?style=social)](https://github.com/apgapg/search_widget)  Flutter Search Widget for selecting an option from list.

# ⭐ My Flutter Apps
- [flutter_profile](https://github.com/apgapg/flutter_profile)  [![GitHub stars](https://img.shields.io/github/stars/apgapg/flutter_profile.svg?style=social)](https://github.com/apgapg/flutter_profile)  Showcase My Portfolio: Ayush P Gupta on Playstore.
- [flutter_sankalan](https://github.com/apgapg/flutter_sankalan)  [![GitHub stars](https://img.shields.io/github/stars/apgapg/flutter_sankalan.svg?style=social)](https://github.com/apgapg/flutter_sankalan)  Flutter App which allows reading/uploading short stories.


# 👍 Contribution
1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -m 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request
