# CrystalClear

[![forthebadge made-with-swift](http://ForTheBadge.com/images/badges/made-with-swift.svg)](https://developer.apple.com/swift/) [![ForTheBadge built-with-love](http://ForTheBadge.com/images/badges/built-with-love.svg)](https://github.com/egunnery/CrystalClear/pulse) [![ForTheBadge makes-people-smile](http://ForTheBadge.com/images/badges/makes-people-smile.svg)](http://ForTheBadge.com)

A perfect mindfulness app for beginners, including guided and self-led meditations, available in lengths of 5, 10 and 20 minutes. Also includes lifestyle tips to improve your health. 

## To run in Xcode

Make sure to install cocoapods within your terminal:
```bash 
sudo gem install cocoapods
```

Set up the cocoapods master repo:
```bash
pod setup
```

After cloning the project, cd into the folder and type:
```bash
pod init
open -a Xcode Podfile
```

This will open the Podfile. Below "# Pods for CrystalClear" type:
```ruby
pod 'SwiftyGif'
```

Save this and back in terminal type:
```bash
pod install
```

Then open the .xcworkspace project file and you are all set!






