//
//  HTBaseViewController.h
//  HTKit
//
//  Created by 上海甘乐医疗 on 2016/11/15.
//  Copyright © 2016年 haitong. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YYLabel;

typedef void(^RightItemBlock)(NSInteger index);

@interface HTBaseViewController : UIViewController

@property (nonatomic, strong) UIButton *rightBtn;

@property (nonatomic, strong) UIButton *leftBtn;

@property (nonatomic, copy) RightItemBlock block;

@property (nonatomic, strong) YYLabel *badge;

/**隐藏导航栏
 */
- (void)hideNavigationBar:(BOOL)hidden
                 animated:(BOOL)animated;

/**导航栏LeftItem文字
 */
- (void)setLeftItemTitle:(NSString *)title
                  action:(SEL)action;

/**导航栏LeftItem图片
 */
- (void)setLeftImageNamed:(NSString *)name
                   action:(SEL)action;

/**导航栏RightItem文字
 */
- (void)setRightItemTitle:(NSString *)title
                   action:(SEL)action;

- (void)setRightItemTitle:(NSString *)title
               titleColor:(UIColor *)color
                   action:(SEL)action;

/**导航栏RightItem图片
 */
- (void)setRightImageNamed:(NSString *)name
                    action:(SEL)action;

/**导航栏RightItem多个图片
 */
- (void)setupRightItems:(NSArray *)images;

/**设置titleView图片
 */
- (void)setTitleView:(NSString *)imageName;

/**设置默认navigationbar status bar 黑色
 */
- (void)setDefaultNavigationBar;

/**设置透明navigationbar status bar 黑色
 */
- (void)setClearNavigationBar;

/**隐藏tabBar徽标
 */
- (void)setBadgeValue:(NSInteger)value
              atIndex:(NSInteger)index;

/**设置返回按钮
 */
- (void)setBackItem;
- (void)setBackItemAction:(SEL)sel;
- (void)setBackItem:(NSString *)title
             action:(SEL)sel;
/**设置导航栏
 */
- (void)setNavigationBarBackgroundImage:(UIImage *)image
                              tintColor:(UIColor *)tintColor
                              textColor:(UIColor *)textColor
                         statusBarStyle:(UIStatusBarStyle)style;

/**push不隐藏tabbar
 */
- (void)pushController:(HTBaseViewController *)controller;
/**push隐藏tabbar
 */
- (void)hideBottomBarPush:(HTBaseViewController *)controller;

/**设置右侧导航栏徽标
 */
- (void)setItemBadge:(NSInteger)value;

/**隐藏右侧导航栏徽标
 */
- (void)hideItemBadge;

/**设置详情徽标
 */
- (void)setTreasureDetailBadge:(NSInteger)value;

/**导航栏渐变
 */
- (void)setNavigationBarCover:(UIScrollView *)scrollView
                        color:(UIColor *)color;
@end
