# SunHorizontalScrollView
An easy-to-use UIView subclass that implements a scrolling effect UIView with images

## Purpose

An easy-to-use UIView subclass that implements a scrolling effect UIView with images

##### Let's see example

![Screenshot:](Assets/example.gif)


## How to use

import class `#import "SunHorizontalScrollMedia.h"` `#import "SUNScrollTableViewCell.h"` and add its delegate `SunHorizontalScrollViewDelegate`.

```objc
- (SunHorizontalScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [SunHorizontalScrollView new];
        _scrollView.delegate = self;

        _scrollView.flowLayout.itemSize     = CGSizeMake(SUNScrollTableViewCellImageWidth, SUNScrollTableViewCellImageHeight);
        _scrollView.flowLayout.sectionInset = UIEdgeInsetsMake(SUNScrollTableViewCellTopInset, SUNScrollTableViewCellLeftInset, SUNScrollTableViewCellBottomInset, SUNScrollTableViewCellRightInset);
    }
    return _scrollView;
}
```


## Requirements
iOS 7, Xcode 7

## Author

sunbohong, sunbohong@gmail.com

#License
SUNScrollTableViewCell is available under the MIT license. See the LICENSE file for more info.
