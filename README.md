# ACKeyboardObserver

[![Version](https://img.shields.io/cocoapods/v/ACKeyboardObserver.svg?style=flat)](http://cocoadocs.org/docsets/ACKeyboardObserver)
[![License](https://img.shields.io/cocoapods/l/ACKeyboardObserver.svg?style=flat)](http://cocoadocs.org/docsets/ACKeyboardObserver)
[![Platform](https://img.shields.io/cocoapods/p/ACKeyboardObserver.svg?style=flat)](http://cocoadocs.org/docsets/ACKeyboardObserver)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

- Implement `ACKeyboardObserverDelegate` in view controller.

```objective-c
- (void)keyboardWillEmitEvent:(ACKeyboardEvent)event withChange:(ACKeyboardChange)change;
- (void)keyboardDidEmitEvent:(ACKeyboardEvent)event withChange:(ACKeyboardChange)change;
```

- Initialize a instance.

```objective-c
self.keyboardObserver = [ACKeyboardObserver observerWithDelegate:self];
[self.keyboardObserver start];
```

- Use `ACKeyboardFastAnimate` to create a keyboard-related animation in delegate methods.

## Installation

ACKeyboardObserver is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

pod "ACKeyboardObserver"

## Author

YANKE Guo, me@yanke.io

## License

ACKeyboardObserver is available under the MIT license. See the LICENSE file for more info.
