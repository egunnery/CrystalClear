# CrystalClear

[![forthebadge made-with-swift](http://ForTheBadge.com/images/badges/made-with-swift.svg)](https://developer.apple.com/swift/) [![ForTheBadge built-with-love](http://ForTheBadge.com/images/badges/built-with-love.svg)](https://GitHub.com/Naereen/) [![ForTheBadge makes-people-smile](http://ForTheBadge.com/images/badges/makes-people-smile.svg)](http://ForTheBadge.com)

An iOS app to promote a modern, healthy lifestyle including tips and meditation features. 

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






