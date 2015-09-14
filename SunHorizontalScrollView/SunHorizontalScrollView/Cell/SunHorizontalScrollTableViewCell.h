//
//  SUNScrollTableViewCell.h
//  SUNScrollTableViewCell
//
//  Created by 孙博弘 on 15/9/13.
//  Copyright (c) 2015年 孙博弘. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SunHorizontalScrollMedia.h"
#import "SunHorizontalScrollView.h"

@class SUNScrollTableViewCell;

@protocol SunHorizontalScrollTableViewCellDelegate <NSObject>

@optional

- (void)scrollTableViewCell:(SUNScrollTableViewCell *)scrollTableViewCell didSelectMediaAtIndexPath:(NSIndexPath *)indexPath atRow:(NSInteger)row;

@end

@interface SUNScrollTableViewCell : UITableViewCell

@property (weak, nonatomic) id<SunHorizontalScrollTableViewCellDelegate> delegate;


// you can use this to layout
@property (strong, nonatomic, readonly) UICollectionViewFlowLayout *flowLayout;

- (void)setMedia:(NSArray *)media;

+ (CGFloat)heightForIndexPath:(NSIndexPath *)indexPath;

@end
