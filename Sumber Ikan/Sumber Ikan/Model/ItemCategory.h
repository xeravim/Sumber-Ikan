//
//  Category.h
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "SIAPIClient.h"
#import "SIConfig.h"
#import "JsonManager.h"
@interface ItemCategory : JSONModel
@property (strong, nonatomic) NSString* id;
@property (strong, nonatomic) NSString* name;
+ (NSURLSessionDataTask *)listCategoryWithBlock:(void (^)(NSArray *categories, NSError *error))block;
@end
