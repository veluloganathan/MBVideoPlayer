# MBVideoPlayer

## Contents
- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Tips](#tips)
- [Contact us](#contact-us)
- [License](#license)

## Features

 - ✅ Support Both Horizontal and Vertical Orientation. 
 - ✅ Custom Header view which in configurable.
 - ✅ Custom Theme which will control your player colors, fonts etc.
 - ✅ Custom Configuration which will control player settings.
 - ✅ Can be embedded within a view or be presented in full screen.
 - ✅ option to add custom playlist with title and thumbnail.
 - ✅ Include play, pause, forward, backward, fullscreen, timer and playlist functionalities.

## Requirements

- iOS 13.0
- Swift 5.0

## Installation

### Manually


### CocoaPods


## Usage

We can initialize it via Storyboard as well as from the code.

1- Using StoryBoard

2- Using Code


### Custom CallBacks

```swift
protocol MBVideoPlayerViewDelegate: class {
    var playerStateDidChange: ((MBVideoPlayerState)->())? {get set}
    var playerTimeDidChange: ((TimeInterval, TimeInterval)->())? {get set}
    var playerOrientationDidChange: ((PlayerDimension) -> ())? {get set}
    var playerDidChangeSize: ((PlayerDimension) -> ())? {get set}
    var playerCellForItem: (()->(UICollectionViewCell))? {get set}
    var playerDidSelectItem: ((IndexPath)->())? {get set}
}
```
### Custom Configuration

```swift
public protocol MBConfiguration {
    var canShowVideoList: Bool { get }
    var canShowTime: Bool { get }
    var canShowPlayPause: Bool { get }
    var canShowTimeBar: Bool { get }
    var canShowFullScreenBtn: Bool { get }
    var canShowForwardBack: Bool { get }
    var canShowHeader: Bool { get }
    var canShowHeaderTitle: Bool { get }
    var canShowHeaderOption: Bool { get }
    var dimension: PlayerDimension { get }
    var seekDuration: Float64 { get }
}
```

### Custom Theme

```swift
public protocol MBTheme {
    var buttonTintColor: UIColor { get }
    var headerBackgroundColor: UIColor { get }
    var headerBackgroundOpacity: Float { get }
    var playListCurrentItemTextColor: UIColor { get }
    var playListItemsTextColor: UIColor { get }
    var playListCurrentItemFont: UIFont { get }
    var playListItemsFont: UIFont { get }
    var timeLabelTextColor: UIColor { get }
    var sliderTintColor: UIColor { get }
    var sliderThumbColor: UIColor { get }
    var activityViewColor: UIColor { get }
    var playListItemsBackgroundColor: UIColor { get }
    
    var resizeButtonImage: UIImage! { get }
    var playButtonImage: UIImage! { get }
    var pauseButtonImage: UIImage! { get }
    var forwardButtonImage: UIImage! { get }
    var backButtonImage: UIImage! { get }
    var optionsButtonImage: UIImage! { get }
}
```






