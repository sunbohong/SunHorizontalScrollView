//
//  SunHorizontalScrollMedia.h
//  SUNScrollTableViewCell
//
//  Created by 孙博弘 on 15/9/13.
//  Copyright (c) 2015年 孙博弘. All rights reserved.
//

#import <Foundation/Foundation.h>


/**
 *  list of supported media
 */
typedef NS_ENUM (NSUInteger, SunHorizontalScrollMediaType) {
    /**
     *  NSURL link of image on the web
     */
    SunHorizontalScrollMediaTypeImageURL,
};

@interface SunHorizontalScrollMedia : NSObject

@property (nonatomic) SunHorizontalScrollMediaType type;
@property (nonatomic) Class mediaClass;
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) id object;

/**
 *  factory method without a title
 *
 *  @param type   SUNMediaType
 *  @param object object such as NSURL
 *
 *  @return self
 */
+ (instancetype)mediaWithType:(SunHorizontalScrollMediaType)type object:(id)object;


@end
