//
//  Item.h
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
#import "JSONResponseSerializerWithData.h"
@interface Item : JSONModel
@property (strong, nonatomic) NSString* id;
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger price;
@property (assign, nonatomic) BOOL isAvailable;
@property (strong, nonatomic) NSString* categoryId;
@property (assign, nonatomic) BOOL isAlive;
@property (strong, nonatomic) NSString* content;

+ (NSURLSessionDataTask *)listAliveItemsWithBlock:(void (^)(NSArray *items, NSError *error))block;
+ (NSURLSessionDataTask *)listDeadItemsWithBlock:(void (^)(NSArray *items, NSError *error))block;
+ (void)deleteItemsByID:(NSString*)ID;
+ (NSURLSessionDataTask *)updateItem:(Item*)item withID:(NSString*)ID withBlock:(void (^)(Item *item, NSError *error))block;
@end
