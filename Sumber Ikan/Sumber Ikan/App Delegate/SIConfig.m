//
//  SIConfig.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/28/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "SIConfig.h"
#define UIColorFromHex(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/0xFF green:((float)((hexValue & 0xFF00) >> 8))/0xFF blue:((float)(hexValue & 0xFF))/0xFF alpha:1.0]
@implementation SIConfig
+ (UIColor*)Dark{
    return UIColorFromHex(0x29363c);
}

+ (UIColor*)MediumDark{
    return UIColorFromHex(0x37474f);
}
+ (UIColor*)DarkGreen{
    return UIColorFromHex(0x15584a);
}
+ (UIColor*)Green{
    return UIColorFromHex(0x57c5c6);
}
+ (UIColor*)MediumGray{
    return UIColorFromHex(0xa5a5a5);
}
+ (UIColor*)Gray{
    return UIColorFromHex(0xd6d6d6);
}

//API URL
+ (BOOL)isLive{
    return YES;
}
+ (NSString*)LIVE_SERVER_ADDRESS{
    return @"http://api.anfish.co";
}
+ (NSString*)MOCKUP_SERVER_ADDRESS{
    return @"http://api.anfish.co";
}
+ (NSString*)SERVER_ADDRESS{
    if ([self isLive]) {
        return [NSString stringWithFormat:@"%@",[self LIVE_SERVER_ADDRESS]];
    }
    else{
        return [self MOCKUP_SERVER_ADDRESS];
    }
}

+ (NSString*)USERNAME{
    return @"cad01f3df9005f61831aca86f63cce29";
}
+ (NSString*)PASSWORD{
    return @"d8de85f9a7b9cd97fb707049ad830d3a";
}

+ (NSString*)ITEMS{
    return [NSString stringWithFormat:@"%@/items",[self SERVER_ADDRESS]];
}
+ (NSString*)USERS{
    return [NSString stringWithFormat:@"%@/users",[self SERVER_ADDRESS]];
}
+ (NSString*)CATEGORIES{
    return [NSString stringWithFormat:@"%@/categories",[self SERVER_ADDRESS]];
}
+ (NSString*)LOGIN{
    return [NSString stringWithFormat:@"%@/login",[self USERS]];
}
+ (NSString*)LOGOUT{
    return [NSString stringWithFormat:@"%@/logout",[self USERS]];
}
+ (NSString*)ALIVE_ITEMS{
    return [NSString stringWithFormat:@"%@?isAlive=true",[self ITEMS]];
}
+ (NSString*)DEAD_ITEMS{
    NSLog(@"%@?isAlive=false",[self ITEMS]);
    return [NSString stringWithFormat:@"%@?isAlive=false",[self ITEMS]];
}
+ (NSString*)DELETE_ITEM :(NSString*)ID{
    return [NSString stringWithFormat:@"%@?id=%@",[self ITEMS],ID];
}
+ (NSString*)UPDATE_ITEM :(NSString*)ID{
    return [NSString stringWithFormat:@"%@?id=%@",[self ITEMS],ID];
}

@end
