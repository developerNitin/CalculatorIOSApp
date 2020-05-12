# Calculator
> Calculator IOS App Developed With SwiftUI.

<a href="https://developer.apple.com/swift/" rel="nofollow"><img src="https://camo.githubusercontent.com/c71f82ee3309bc14cc904fb1a628903768e1ac39/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f73776966742d352d6f72616e67652e7376673f7374796c653d666c6174" alt="Swift5 compatible" data-canonical-src="https://img.shields.io/badge/swift-5-orange.svg?style=flat" style="max-width:100%;"></a>
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)
<a href="http://cocoapods.org/pods/JTAppleCalendar" rel="nofollow"><img src="https://camo.githubusercontent.com/d89a1e1d87461e800113fdef07187e56b82541f8/68747470733a2f2f696d672e736869656c64732e696f2f636f636f61706f64732f6c2f4a544170706c6543616c656e6461722e7376673f7374796c653d666c6174" alt="License" data-canonical-src="https://img.shields.io/cocoapods/l/JTAppleCalendar.svg?style=flat" style="max-width:100%;"></a>

<div> 
<img src="logo/Calculator.png"></img>
</div>

## Features

- [x] Fast 
- [x] Easy To Use
- [x] Multiple Calculation
- [x] Scientific
- [x] Free

## Requirements

- iOS 8.0+
- Xcode 11.0+

## Installation

#### CocoaPods
You can use [CocoaPods](http://cocoapods.org/) to install Project by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!
pod 'CalculatorIOSApp'
```

To get the full benefits import Project wherever you import UIKit

``` swift
import UIKit
import CalculatorIOSApp
```
#### Manually
1. Download and drop ```Calculator.swift``` in your project.  
2. Congratulations!  

## Usage example

```swift
import UIKit
class ViewController: UIViewController {
     private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("cannot convert display label text to double")
            }
            return number
        }
        set {
            displayLabel.text! = String(newValue)
        }
    }
}
```

## Contribute

We would love you for the contribution to **CalculatorIOSApp**, check the ``LICENSE`` file for more info.

## Meta

Nitin – nitin.birdi@icloud.com
