//
//  SIAPIClient.h
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "AFHTTPSessionManager.h"
#import "SIConfig.h"
#import "Credential.h"
@interface SIAPIClient : AFHTTPSessionManager
+ (instancetype)sharedClient;
@end
