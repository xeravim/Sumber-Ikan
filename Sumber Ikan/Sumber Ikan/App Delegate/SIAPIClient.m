//
//  SIAPIClient.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "SIAPIClient.h"
#import "JSONResponseSerializerWithData.h"
@implementation SIAPIClient
+ (instancetype)sharedClient {
    static SIAPIClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[SIAPIClient alloc] initWithBaseURL:[NSURL URLWithString:[SIConfig SERVER_ADDRESS]]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        //NSDictionary* sessionToken=[JsonManager getSavedJsonData:@"profile"];
        
        
        
        //[_sharedClient.requestSerializer setValue:[sessionToken objectForKey:@"sessionToken"] forHTTPHeaderField:@"Authorization"];
        _sharedClient.responseSerializer = [JSONResponseSerializerWithData serializer];
    });
    
    
    return _sharedClient;
}
@end
