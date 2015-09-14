//
//  SunHorizontalScrollMedia.m
//  SUNScrollTableViewCell
//
//  Created by 孙博弘 on 15/9/13.
//  Copyright (c) 2015年 孙博弘. All rights reserved.
//

#import "SunHorizontalScrollMedia.h"

@implementation SunHorizontalScrollMedia


#pragma mark - class method

+ (id)mediaWithType:(SunHorizontalScrollMediaType)type object:(id)object {
    SunHorizontalScrollMedia *mediaObject = [[SunHorizontalScrollMedia alloc] init];
    mediaObject.type = type;
    mediaObject.object = object;

    return mediaObject;
}

- (NSString *)description {
    NSString *type;

    switch (self.type) {
        case SunHorizontalScrollMediaTypeImageURL:
          {
        type = @"image url";
        break;
          }
            break;
        default:
            break;
    }

    return [NSString stringWithFormat:@"Type:%@, Object:%@",type, [self.object class]];
}



@end
