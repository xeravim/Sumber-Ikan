//
//  Item.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "Item.h"

@implementation Item
+ (NSURLSessionDataTask *)listAliveItemsWithBlock:(void (^)(NSArray *items, NSError *error))block{
    NSDictionary* credential=[JsonManager getSavedJsonData:@"credential"];
    [[SIAPIClient sharedClient].requestSerializer setValue:[NSString stringWithFormat:@"sid=%@",credential[@"id"]] forHTTPHeaderField:@"Cookie"];
    return [[SIAPIClient sharedClient] GET:[SIConfig ALIVE_ITEMS] parameters:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {
        NSLog(@"Alive :%@",JSON);
        [JsonManager saveJsonToFile:JSON :@"aliveItems"];
        NSArray *itemsFromResponse = JSON;
        NSMutableArray *mutableItems = [NSMutableArray arrayWithCapacity:[itemsFromResponse count]];
        for (NSDictionary *attributes in itemsFromResponse) {
            Item *item=[[Item alloc]initWithDictionary:attributes error:nil];
            [mutableItems addObject:item];
        }
        
        if (block) {
            block([NSArray arrayWithArray:mutableItems], nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block([NSArray array], error);
        }
    }];
}

+ (NSURLSessionDataTask *)listDeadItemsWithBlock:(void (^)(NSArray *items, NSError *error))block{
    return [[SIAPIClient sharedClient] GET:[SIConfig DEAD_ITEMS] parameters:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {
        [JsonManager saveJsonToFile:JSON :@"deadItems"];
         NSLog(@"%@",JSON);
        NSArray *itemsFromResponse = JSON;
        NSMutableArray *mutableItems = [NSMutableArray arrayWithCapacity:[itemsFromResponse count]];
        for (NSDictionary *attributes in itemsFromResponse) {
            Item *item=[[Item alloc]initWithDictionary:attributes error:nil];
            [mutableItems addObject:item];
        }
        
        if (block) {
            block([NSArray arrayWithArray:mutableItems], nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block([NSArray array], error);
        }
    }];
}

+ (void)deleteItemsByID:(NSString*)ID{
    [[SIAPIClient sharedClient] DELETE:[NSString stringWithFormat:@"%@",[SIConfig DELETE_ITEM:ID]] parameters:nil success:^(NSURLSessionDataTask * __unused task, id JSON) {
        
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        
    }];
    
}
+ (NSURLSessionDataTask *)updateItem:(Item*)item withID:(NSString*)ID withBlock:(void (^)(Item *item, NSError *error))block{
    NSDictionary* credential=[JsonManager getSavedJsonData:@"credential"];
    
    [[SIAPIClient sharedClient].requestSerializer setValue:[NSString stringWithFormat:@"sid=%@",credential[@"id"]] forHTTPHeaderField:@"Cookie"];
    return [[SIAPIClient sharedClient] PUT:[SIConfig UPDATE_ITEM:ID] parameters:item.toDictionary success:^(NSURLSessionDataTask * __unused task, id JSON) {
        if (block) {
            block(item, nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block(nil, error);
            id responseObject = error.userInfo[JSONResponseSerializerWithDataKey];
            if (![responseObject objectForKey:@"userMessage"]) {
                UIAlertView *alertView = [[UIAlertView alloc]
                                          initWithTitle:nil
                                          message:[responseObject objectForKey:@"userMessage"]
                                          delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
                [alertView show];
                
            }
            else{
                UIAlertView *alertView = [[UIAlertView alloc]
                                          initWithTitle:nil
                                          message:[responseObject objectForKey:@"devMessage"]
                                          delegate:self
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
                [alertView show];
                
            }
            
        }
    }];
    
}
- (void)showMessageAlert:(NSString*)alert{
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:nil
                              message:alert
                              delegate:self
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
    [alertView show];
    
}

+(BOOL)propertyIsOptional:(NSString*)propertyName
{
    return YES;
}
@end
