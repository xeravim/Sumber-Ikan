//
//  JsonManager.h
//  Nekobiz
//
//  Created by Alvin Resmana on 4/10/15.
//  Copyright (c) 2015 nekobiz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JsonManager : NSObject

+ (id)getSavedJsonData:(NSString*)name;
+ (void)saveJsonToFile:(NSDictionary *)data :(NSString*)name;
+ (BOOL)isProfileExist;
    

@end
