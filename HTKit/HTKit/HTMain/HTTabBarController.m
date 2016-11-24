//
//  HTTabBarController.m
//  HTKit
//
//  Created by 上海甘乐医疗 on 2016/11/15.
//  Copyright © 2016年 haitong. All rights reserved.
//

#import "HTTabBarController.h"
#import "HTHomeVC.h"
#import "HTSecondVC.h"
#import "HTThirdVC.h"
#import "HTFourthVC.h"
#import "HTMineVC.h"
#import "HTLoginVC.h"

@interface HTTabBarController () <UITabBarControllerDelegate>

@property (nonatomic, strong) NSMutableArray *controllerArray;

@end

@implementation HTTabBarController

#pragma mark - lazy load
- (NSMutableArray *)controllerArray {
    if (!_controllerArray) {
        _controllerArray = [NSMutableArray array];
    }
    return _controllerArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setup];
}

- (void)setup {
    HTHomeVC *homeVC = [[HTHomeVC alloc]init];
    homeVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"首页" image:[UIImage imageNamed:@"tabbar_firstItem"] selectedImage:[[UIImage imageNamed:@"tabbar_firstItem_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    UINavigationController *homeNav = [[UINavigationController alloc]initWithRootViewController:homeVC];
    
    HTSecondVC *secondVC = [[HTSecondVC alloc]init];
    secondVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"第二" image:[UIImage imageNamed:@"tabbar_secondItem"] selectedImage:[[UIImage imageNamed:@"tabbar_secondItem_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    UINavigationController *secondNav = [[UINavigationController alloc]initWithRootViewController:secondVC];
    
    HTThirdVC *thirdVC = [[HTThirdVC alloc]init];
    thirdVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"第三" image:[UIImage imageNamed:@"tabbar_thirdItem"] selectedImage:[[UIImage imageNamed:@"tabbar_thirdItem_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    UINavigationController *discoveryNav = [[UINavigationController alloc]initWithRootViewController:thirdVC];
    
    HTFourthVC *fourthVC = [[HTFourthVC alloc]
                                              init];
    fourthVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"第四" image:[UIImage imageNamed:@"tabbar_forthItem"] selectedImage:[[UIImage imageNamed:@"tabbar_forthItem_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    UINavigationController *shoppingNav = [[UINavigationController alloc]initWithRootViewController:fourthVC];
    
    HTMineVC *mineVC = [[HTMineVC alloc]init];
    mineVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"我的" image:[UIImage imageNamed:@"tabbar_fifthItem"] selectedImage:[[UIImage imageNamed:@"tabbar_fifthItem_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    UINavigationController *mineNav = [[UINavigationController alloc]initWithRootViewController:mineVC];
    
    self.viewControllers = @[homeNav,secondNav,discoveryNav,shoppingNav,mineNav];
    
}

- (UINavigationController *)subControllerFor:(nullable Class)aClass {
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[aClass alloc]init]];
    return nav;
}


@end
