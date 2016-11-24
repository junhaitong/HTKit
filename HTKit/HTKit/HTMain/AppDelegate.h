//
//  AppDelegate.h
//  HTKit
//
//  Created by 上海甘乐医疗 on 2016/11/14.
//  Copyright © 2016年 haitong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic, assign) NSInteger value;

- (NSURL *)applicationDocumentsDirectory;
+ (AppDelegate *)getAppDelegate;

@end

