//
//  GlobalFunction.m
//  Sumber Ikan
//
//  Created by Alvin Resmana on 5/29/15.
//  Copyright (c) 2015 alvin. All rights reserved.
//

#import "GlobalFunction.h"

@implementation GlobalFunction

+ (NSString*)changeCurrency:(NSInteger)rawCurrency{
    NSString *result=@"";
    NSString *value=[NSString stringWithFormat:@"%ld",(long)rawCurrency];
    if (rawCurrency==0) {
        result=@"0";
    }
    else{
        NSInteger len=[NSString stringWithFormat:@"%ld",(long)rawCurrency].length ;
        
        for (NSInteger i=len; i>0; i--)
        {
            if ((i%3)==0 && i!=len)
            {
                
                result= [result stringByAppendingString:@"."];
            }
            
            result=[result stringByAppendingString:[value substringWithRange:NSMakeRange(len-i,1)]];
        }
    }
    return result;
    
}
@end
