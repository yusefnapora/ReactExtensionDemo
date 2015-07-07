//
//  SimpleModule.m
//  RNDynamicLinking
//
//  Created by Yusef Napora on 5/9/15.
//  Copyright (c) 2015 Yusef Napora. All rights reserved.
//

#import "SimpleModule.h"

@implementation SimpleModule

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(sayHello) {
  RCTLogInfo(@"[SimpleModule sayHello] called from React Native in a dynamic framework");
}

@end
