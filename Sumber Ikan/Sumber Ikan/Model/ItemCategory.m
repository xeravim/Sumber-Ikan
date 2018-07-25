//
//  Category.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "ItemCategory.h"

@implementation ItemCategory

+ (NSURLSessionDataTask *)listCategoryWithBlock:(void (^)(NSArray *categories, NSError *error))block{
    return [[SIAPIClient sharedClient] GET:[SIConfig CATEGORIES] parameters:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {
        [JsonManager saveJsonToFile:JSON :@"categories"];
        NSLog(@"%@",JSON);
        NSArray *categoriesFromResponse = JSON;
        NSMutableArray *mutableCategories = [NSMutableArray arrayWithCapacity:[categoriesFromResponse count]];
        for (NSDictionary *attributes in categoriesFromResponse) {
            ItemCategory *category=[[ItemCategory alloc]initWithDictionary:attributes error:nil];
            [mutableCategories addObject:category];
        }
        
        if (block) {
            block([NSArray arrayWithArray:mutableCategories], nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block([NSArray array], error);
        }
    }];
}
+(BOOL)propertyIsOptional:(NSString*)propertyName
{
    return YES;
}
@end
