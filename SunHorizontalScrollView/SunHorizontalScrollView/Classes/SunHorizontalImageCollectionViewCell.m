//
//  SunHorizontalImageCollectionViewCell.m
//  SUNScrollTableViewCell
//
//  Created by 孙博弘 on 15/9/13.
//  Copyright (c) 2015年 孙博弘. All rights reserved.
//

#import "SunHorizontalImageCollectionViewCell.h"

#import "UIImageView+WebCache.h"

@interface SunHorizontalImageCollectionViewCell ()

@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation SunHorizontalImageCollectionViewCell


- (void)layoutSubviews {
    [super layoutSubviews];
    self.imageView.frame = CGRectMake( 0.0,
                                      0.0,
                                      CGRectGetWidth(self.frame),
                                      CGRectGetHeight(self.frame) );
}

- (void)setImageWithURL:(NSURL *)url {
    [self.imageView sd_setImageWithURL:url];
    [self.contentView addSubview:self.imageView];
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [UIImageView new];
        _imageView.contentMode   = UIViewContentModeScaleAspectFill;
        _imageView.clipsToBounds = YES;
    }
    return _imageView;
}

@end
