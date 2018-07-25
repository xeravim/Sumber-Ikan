//
//  SIConfig.h
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/28/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SIConfig : NSObject
//Coloring the apps
+ (UIColor*)Dark;
+ (UIColor*)MediumDark;
+ (UIColor*)DarkGreen;
+ (UIColor*)Green;
+ (UIColor*)MediumGray;
+ (UIColor*)Gray;

//API
+ (NSString*)LIVE_SERVER_ADDRESS;
+ (NSString*)MOCKUP_SERVER_ADDRESS;
+ (NSString*)SERVER_ADDRESS;
+ (NSString*)USERNAME;
+ (NSString*)PASSWORD;

+ (NSString*)ITEMS;
+ (NSString*)ALIVE_ITEMS;
+ (NSString*)DEAD_ITEMS;
+ (NSString*)DELETE_ITEM :(NSString*)ID;
+ (NSString*)UPDATE_ITEM :(NSString*)ID;
+ (NSString*)USERS;
+ (NSString*)CATEGORIES;

+ (NSString*)LOGIN;
+ (NSString*)LOGOUT;

@end
