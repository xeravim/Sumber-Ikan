//
//  Credential.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "Credential.h"

@implementation Credential

+ (NSURLSessionDataTask *)Login:(NSString*)USERNAME withPassword:(NSString*)PASSWORD withBlock:(void (^)(Credential *credential, NSError *error))block {
    NSDictionary *params = [[NSDictionary alloc] initWithObjectsAndKeys:USERNAME, @"username", PASSWORD, @"password", nil];
    return [[SIAPIClient sharedClient] POST:[SIConfig LOGIN] parameters:params success:^(NSURLSessionDataTask * __unused task, id JSON) {
        NSLog(@"Credential :%@",JSON);
        [JsonManager saveJsonToFile:JSON :@"credential"];
        Credential *credential=[[Credential alloc]initWithDictionary:JSON error:nil];
        if (block) {
            block(credential, nil);
        }
    } failure:^(NSURLSessionDataTask *__unused task, NSError *error) {
        if (block) {
            block(nil, error);
        }
    }];}



@end
