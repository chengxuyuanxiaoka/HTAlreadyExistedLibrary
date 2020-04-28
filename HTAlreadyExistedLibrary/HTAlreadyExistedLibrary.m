//
//  HTAlreadyExistedLibrary.m
//  HTAlreadyExistedLibrary
//
//  Created by 一米阳光 on 2020/4/28.
//  Copyright © 2020 一米阳光. All rights reserved.
//

#import "HTAlreadyExistedLibrary.h"
#import "HTShareManager.h"
#import <UIKit/UIKit.h>
#import "HTTestController.h"

@implementation HTAlreadyExistedLibrary

- (void)setupIntroduceInfo:(UserInfo *)userInfo resultBlock:(void (^)(NSDictionary * resultDict))introduceResultBlock {
    [HTShareManager sharedManager].htResultBlock = introduceResultBlock;
    HTTestController *testVC = [[HTTestController alloc] init];
    [[self getCurrentVC] presentViewController:testVC animated:YES completion:nil];
}

//获取当前屏幕显示的viewcontroller
- (UIViewController *)getCurrentVC {
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    UIViewController *currentVC = [self getCurrentVCFrom:rootViewController];
    return currentVC;
}

- (UIViewController *)getCurrentVCFrom:(UIViewController *)rootVC {
    UIViewController *currentVC;
    if ([rootVC presentedViewController]) {
        // 视图是被presented出来的
        rootVC = [rootVC presentedViewController];
    }
    if ([rootVC isKindOfClass:[UITabBarController class]]) {
        currentVC = [self getCurrentVCFrom:[(UITabBarController *)rootVC selectedViewController]];
    } else if ([rootVC isKindOfClass:[UINavigationController class]]){
        currentVC = [self getCurrentVCFrom:[(UINavigationController *)rootVC visibleViewController]];
    } else {
        // 根视图为非导航类
        currentVC = rootVC;
    }
    
    return currentVC;
}

@end
