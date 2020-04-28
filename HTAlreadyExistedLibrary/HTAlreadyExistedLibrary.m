//
//  HTAlreadyExistedLibrary.m
//  HTAlreadyExistedLibrary
//
//  Created by 一米阳光 on 2020/4/28.
//  Copyright © 2020 一米阳光. All rights reserved.
//

#import "HTAlreadyExistedLibrary.h"
#import "HTShareManager.h"

@implementation HTAlreadyExistedLibrary

- (void)setupIntroduceInfo:(UserInfo *)userInfo resultBlock:(void (^)(NSDictionary * resultDict))introduceResultBlock {
    [HTShareManager sharedManager].htResultBlock = introduceResultBlock;
}

@end
