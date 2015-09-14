//
//  SunHorizontalScrollView.h
//  SUNScrollTableViewCell
//
//  Created by 孙博弘 on 15/9/13.
//  Copyright (c) 2015年 孙博弘. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SunHorizontalScrollMedia.h"

@class SunHorizontalScrollView;

@protocol SunHorizontalScrollViewDelegate <NSObject>

- (void)collectionView:(SunHorizontalScrollView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath;

@end

@interface SunHorizontalScrollView : UIView {
    UICollectionViewFlowLayout *_flowLayout;
    UICollectionView *_collectionView;
}

@property (weak, nonatomic) id<SunHorizontalScrollViewDelegate> delegate;

@property (nonatomic, strong, readonly) UICollectionView *collectionView;

// you can use this to layout
@property (nonatomic, strong, readonly) UICollectionViewFlowLayout *flowLayout;


- (void)setData:(NSArray *)collectionImageData;
- (void)setBackgroundColor:(UIColor *)color;


@end
