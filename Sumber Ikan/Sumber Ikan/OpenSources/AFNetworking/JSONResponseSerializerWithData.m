//
//  JSONResponseSerializerWithData.m
//  Nekobiz
//
//  Created by Alvin Resmana on 4/13/15.
//  Copyright (c) 2015 nekobiz. All rights reserved.
//

#import "JSONResponseSerializerWithData.h"

@implementation JSONResponseSerializerWithData

- (id)responseObjectForResponse:(NSURLResponse *)response
                           data:(NSData *)data
                          error:(NSError *__autoreleasing *)error
{
    if (![self validateResponse:(NSHTTPURLResponse *)response data:data error:error]) {
        if (*error != nil) {
            NSMutableDictionary *userInfo = [(*error).userInfo mutableCopy];
            NSError *jsonError;
            // parse to json
            id json = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&jsonError];
            NSLog(@"json:%@",json);
            // store the value in userInfo if JSON has no error
            if (jsonError == nil) userInfo[JSONResponseSerializerWithDataKey] = json;
            NSError *newError = [NSError errorWithDomain:(*error).domain code:(*error).code userInfo:userInfo];
            (*error) = newError;
        }
        return (nil);
    }
    return ([super responseObjectForResponse:response data:data error:error]);
}
    

@end
