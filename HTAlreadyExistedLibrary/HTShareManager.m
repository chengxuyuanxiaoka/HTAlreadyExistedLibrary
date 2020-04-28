//
//  HTShareManager.m
//  HTAlreadyExistedLibrary
//
//  Created by 一米阳光 on 2020/4/28.
//  Copyright © 2020 一米阳光. All rights reserved.
//

#import "HTShareManager.h"

static HTShareManager *shareManager = nil;

@implementation HTShareManager

+ (instancetype)sharedManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareManager = [[HTShareManager alloc] init];
    });
    return shareManager;
}

@end
