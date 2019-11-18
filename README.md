# CrystalClear

An iOS to app to promote a modern, healthy lifestyle. 

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
pod 'Swifty'
pod 'SwiftyGif'
```

Save this and back in terminal type:
```bash
pod install
```

Then open the .xcworkspace project file and you are all set!






