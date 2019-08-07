//
//  DemoEvent.m
//  miniapp-ios
//
//  Created by 刘流 on 2019/7/5.
//  Copyright © 2019 uhutu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DemoEvent.h"
@implementation  DemoEvent

+ (instancetype)sharedInstance{
    static DemoEvent * abc;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        abc = [[DemoEvent alloc] init];
    });
    return abc;
}



    
    -(MiniappModelUser*) upNativeUserInfo{
        
        MiniappModelUser *user=[MiniappModelUser new];
        user.token=@"bf57a0c27712eaf998f82c3e2a8f7eb7";
        
        return user;
    }
    
    -(NSString*) upRequestUrl{
        return @"http://icomeminiapp.srnpr.com/mapps/version/%@/beta_ios.json";
        //return @"http://localhost:8870/build/version/%@/alpha_ios.json";
    }
    
@end
