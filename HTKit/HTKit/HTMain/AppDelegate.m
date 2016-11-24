//
//  AppDelegate.m
//  HTKit
//
//  Created by 上海甘乐医疗 on 2016/11/14.
//  Copyright © 2016年 haitong. All rights reserved.
//

#import "AppDelegate.h"
#import "HTTabBarController.h"
#import "YYKit.h"
#import "SVProgressHUD.h"
#import "HTLoginVC.h"

@interface AppDelegate () <UITabBarControllerDelegate>

@end

@implementation AppDelegate

//应用程序启动后的定制的覆盖点
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    HHLog(@"----------%s", __func__);
    
    // 窗口初始化
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    HTTabBarController *tabBarController = [[HTTabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:kCommonColor} forState:UIControlStateSelected];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:18]}];
    [UINavigationBar appearance].tintColor = UIColorHex(666666);
    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleDark];
    [SVProgressHUD setMinimumDismissTimeInterval:1.0];
    
    if (NSFoundationVersionNumber > NSFoundationVersionNumber_iOS_8_0) {
        // do stuff for iOS 9 and newer
        HHLog(@"----------%@", @"大于");
    } else {
        // do stuff for older versions than iOS 9
        HHLog(@"----------%@", @" 小于");
    }
    
    return YES;
}

//当应用程序从活动状态(active)变到非活动状态(inactive时被触发调用， 这可能发生在一些临时中断下(例如：来电话、来短信)又或者程序退出时，他会先过渡到后台然后terminate 使用这方法去暂停正在进行的任务，禁用计时器，节流OpenGL ES 帧率。在游戏中应该在这个方法里面暂停游戏。
- (void)applicationWillResignActive:(UIApplication *)application {
    HHLog(@"----------%s", __func__);
}

//使用这种方法来释放共享资源,保存用户数据,无效计时器,存储足够多的应用程序状态信息来恢复您的应用程序的当前状态,以防它终止丢失数据。 如果你的程序支持后台运行，那么当用户退出时不会调用
- (void)applicationDidEnterBackground:(UIApplication *)application {
    HHLog(@"----------%s", __func__);
}

//先从后台切换到非活动状态，然后进入活动状态。
- (void)applicationWillEnterForeground:(UIApplication *)application {
    HHLog(@"----------%s", __func__);
}

//重启所有的任务，不管是从非活动状态还是刚启动程序，还是后台状态。
- (void)applicationDidBecomeActive:(UIApplication *)application {
    HHLog(@"----------%s", __func__);
}

//说明：当程序将要退出是被调用，通常是用来保存数据和一些退出前的清理工作。这个需要要设置UIApplicationExitsOnSuspend的键值。
- (void)applicationWillTerminate:(UIApplication *)application {
    HHLog(@"----------%s", __func__);
}

+ (AppDelegate *)getAppDelegate {
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "com.linitial.WinTreasure" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

#pragma mark - UITabBarControllerDelegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController {
    if (viewController == tabBarController.viewControllers[4]  && ![[NSUserDefaults standardUserDefaults]boolForKey:kIsLogined]) {
        HTLoginVC *loginVC = [[HTLoginVC alloc]init];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:loginVC];
        [((UINavigationController *)tabBarController.selectedViewController) presentViewController:nav animated:YES completion:nil];
        return NO;
    }
    return YES;
}

@end
