//
//  RNGetUUID_KeyChain.m
//  RNGetUUID+KeyChain
//
//  Created by wangzixiao on 17/2/9.
//  Copyright © 2017年 WangZiXiao. All rights reserved.
//

#import "RNGetUUID_KeyChain.h"
#import "SFHFKeychainUtils.h"

@implementation RNGetUUID_KeyChain
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(getUDIDKeyChain:(NSString*)uuid callback:(RCTResponseSenderBlock)callback) {
    NSString *SERVICE_NAME = uuid;//最好用程序的bundle id
    NSString * str =  [SFHFKeychainUtils getPasswordForUsername:@"UUID" andServiceName:SERVICE_NAME error:nil];  // 从keychain获取数据
    if ([str length]<=0)
    {
        str  = [[[UIDevice currentDevice] identifierForVendor] UUIDString];  // 保存UUID作为手机唯一标识符
        [SFHFKeychainUtils storeUsername:@"UUID"
                             andPassword:str
                          forServiceName:SERVICE_NAME
                          updateExisting:1
                                   error:nil];  // 往keychain添加数据
    }
    
    callback(@[str ? str : [NSNull null]]);
}

@end
