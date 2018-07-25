//
//  Credential.h
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "AFNetworking.h"
#import "SIAPIClient.h"
#import "JsonManager.h"
@interface Credential : JSONModel
@property (strong, nonatomic) NSString* path;
@property (strong, nonatomic) NSString* uid;
@property (strong, nonatomic) NSString* id;

+ (NSURLSessionDataTask *)Login:(NSString*)USERNAME withPassword:(NSString*)PASSWORD withBlock:(void (^)(Credential *credential, NSError *error))block;
@end
