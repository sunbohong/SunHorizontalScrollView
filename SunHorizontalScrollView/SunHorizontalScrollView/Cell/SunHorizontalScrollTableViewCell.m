//
//  SUNScrollTableViewCell.m
//  SUNScrollTableViewCell
//
//  Created by 孙博弘 on 15/9/13.
//  Copyright (c) 2015年 孙博弘. All rights reserved.
//

#import "SunHorizontalScrollTableViewCell.h"


const CGFloat SUNScrollTableViewCellImageHeight = 87.2;
const CGFloat SUNScrollTableViewCellImageWidth  = 148;


const CGFloat SUNScrollTableViewCellLeftInset   = 10.0;
const CGFloat SUNScrollTableViewCellRightInset  = 10.0;
const CGFloat SUNScrollTableViewCellTopInset    = 10.0;
const CGFloat SUNScrollTableViewCellBottomInset = 10.0;

@interface SUNScrollTableViewCell () <SunHorizontalScrollViewDelegate>

@property (strong, nonatomic) SunHorizontalScrollView *scrollView;

@end

@implementation SUNScrollTableViewCell


- (void)layoutSubviews {
    [super layoutSubviews];

    self.scrollView.frame = self.bounds;
}

- (SunHorizontalScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [SunHorizontalScrollView new];
        _scrollView.delegate = self;

        _scrollView.flowLayout.itemSize     = CGSizeMake(SUNScrollTableViewCellImageWidth, SUNScrollTableViewCellImageHeight);
        _scrollView.flowLayout.sectionInset = UIEdgeInsetsMake(SUNScrollTableViewCellTopInset, SUNScrollTableViewCellLeftInset, SUNScrollTableViewCellBottomInset, SUNScrollTableViewCellRightInset);
    }
    return _scrollView;
}

- (UICollectionViewFlowLayout *)flowLayout {
    return self.scrollView.flowLayout;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    [self.scrollView.collectionView setContentOffset:CGPointMake(0, 0) animated:NO];
}

- (void)setMedia:(NSArray *)media {
    [self.scrollView setData:media];
    [self.contentView addSubview:self.scrollView];
}

- (void)setScrollBackgroundColor:(UIColor *)color {
    if (color) {
        self.scrollView.backgroundColor = color;
    }
}

#pragma mark - SUNImageScrollViewDelegate
- (void)collectionView:(SunHorizontalScrollView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    if ([self.delegate respondsToSelector:@selector(scrollTableViewCell:didSelectMediaAtIndexPath:atRow:)]) {
        [self.delegate scrollTableViewCell:self didSelectMediaAtIndexPath:indexPath atRow:self.tag];
    }
}

+ (CGFloat)heightForIndexPath:(NSIndexPath *)indexPath {
    return SUNScrollTableViewCellTopInset + SUNScrollTableViewCellImageHeight + SUNScrollTableViewCellBottomInset;
}

@end
