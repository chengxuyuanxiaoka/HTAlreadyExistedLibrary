//
//  HTShareManager.h
//  HTAlreadyExistedLibrary
//
//  Created by 一米阳光 on 2020/4/28.
//  Copyright © 2020 一米阳光. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HTShareManager : NSObject

@property (nonatomic, copy) void(^htResultBlock)(NSDictionary *result);
+ (instancetype)sharedManager;

@end

NS_ASSUME_NONNULL_END
