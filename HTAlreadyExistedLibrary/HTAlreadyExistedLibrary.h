//
//  HTAlreadyExistedLibrary.h
//  HTAlreadyExistedLibrary
//
//  Created by 一米阳光 on 2020/4/28.
//  Copyright © 2020 一米阳光. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface HTAlreadyExistedLibrary : NSObject

- (void)setupIntroduceInfo:(UserInfo *)userInfo resultBlock:(void (^)(NSDictionary * resultDict))introduceResultBlock;

@end

NS_ASSUME_NONNULL_END
