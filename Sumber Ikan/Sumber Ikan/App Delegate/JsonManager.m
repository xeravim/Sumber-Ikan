//
//  JsonManager.m
//  Nekobiz
//
//  Created by Alvin Resmana on 4/10/15.
//  Copyright (c) 2015 nekobiz. All rights reserved.
//

#import "JsonManager.h"

@implementation JsonManager


+( NSString *)getCacheDir{
    NSString *cachePath = [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    return cachePath;
}

+(void)saveJsonToFile:(NSDictionary *)data :(NSString*)name{
    @try {
        NSString *jsonPath=[[self getCacheDir]stringByAppendingFormat:@"/%@.json",name];
        
        NSData *datas = [NSKeyedArchiver archivedDataWithRootObject:data];
        [datas writeToFile:jsonPath atomically:YES];
        
    }
    @catch (NSException *exception) {
        NSLog(@"%@",exception);
    }
    
}
+ (id)getSavedJsonData:(NSString*)name{
    NSString *jsonPath=[[self getCacheDir]stringByAppendingFormat:@"/%@.json",name];
    
    NSData *data = [NSData dataWithContentsOfFile:jsonPath];
    @try {
         id jsonObject = [NSKeyedUnarchiver unarchiveObjectWithData:data];
        return jsonObject;
    }
    @catch (NSException *exception) {
    
    }
    
   
    
    
}
+ (BOOL)isProfileExist{
    NSString *jsonPath=[[self getCacheDir]stringByAppendingFormat:@"/profile.json"];
    BOOL fileExists = [[NSFileManager defaultManager] fileExistsAtPath:jsonPath];
    return fileExists;
}


@end
