//
//  PPNetworkCache.h
//  PPNetworkHelper
//
//  Created by AndyPang on 16/8/12.
//  Copyright © 2016年 AndyPang. All rights reserved.
//

/*
 *********************************************************************************
 *
 *⭐️⭐️⭐️ 新建 PP-iOS学习交流群: 323408051 欢迎加入!!! ⭐️⭐️⭐️
 *
 * 如果您在使用 PPNetworkHelper 的过程中出现bug或有更好的建议,还请及时以下列方式联系我,我会及
 * 时修复bug,解决问题.
 *
 * Weibo : CoderPang
 * Email : jkpang@outlook.com
 * QQ 群 : 323408051
 * GitHub: https://github.com/jkpang
 *
 * PS:我的另外两个很好用的封装,欢迎使用!
 * 1.一行代码获取通讯录联系人,并进行A~Z精准排序(已处理姓名所有字符的排序问题):
 *   GitHub:https://github.com/jkpang/PPGetAddressBook
 * 2.仿京东淘宝商品数量的加减按钮,可定制程度高,使用简单:
 *   GitHub:https://github.com/jkpang/PPNumberButton
 *
 * 如果 PPGetAddressBookSwift 好用,希望您能Star支持,你的 ⭐️ 是我持续更新的动力!
 *********************************************************************************
 */

#import <Foundation/Foundation.h>
// 过期提醒
#define PPDeprecated(instead) NS_DEPRECATED(2_0, 2_0, 2_0, 2_0, instead)


#pragma mark - 网络数据缓存类
@interface PPNetworkCache : NSObject

/**
 *  缓存网络数据,根据请求的 URL与parameters
 *  做KEY存储数据, 这样就能缓存多级页面的数据
 *
 *  @param httpData   服务器返回的数据
 *  @param URL        请求的URL地址
 *  @param parameters 请求的参数
 */
+ (void)setHttpCache:(id)httpData URL:(NSString *)URL parameters:(NSDictionary *)parameters;

/**
 *  根据请求的 URL与parameters 取出缓存数据
 *
 *  @param URL        请求的URL
 *  @param parameters 请求的参数
 *
 *  @return 缓存的服务器数据
 */
+ (id)httpCacheForURL:(NSString *)URL parameters:(NSDictionary *)parameters;


/**
 *  获取网络缓存的总大小 bytes(字节)
 */
+ (NSInteger)getAllHttpCacheSize;


/**
 *  删除所有网络缓存,
 */
+ (void)removeAllHttpCache;


#pragma mark - 过期方法
/**
 *  缓存网络数据(已过期!!!推荐使用:+ (void)setHttpCache:(id)httpData URL:(NSString *)URL parameters:(NSDictionary *)parameters)
 *
 *  @param httpCache 服务器返回的数据
 *  @param key       缓存数据对应的key值,推荐填入请求的URL
 */
+ (void)saveHttpCache:(id)httpCache forKey:(NSString *)key PPDeprecated("该方法已过期,请使用 +(void)setHttpCache:(id)httpData URL:(NSString *)URL parameters:(NSDictionary *)parameters");

/**
 *  取出缓存的数据(已过期!!!推荐使用+ (id)httpCacheForURL:(NSString *)URL parameters:(NSDictionary *)parameters;)
 *
 *  @param key 根据存入时候填入的key值来取出对应的数据
 *
 *  @return 缓存的数据
 */
+ (id)getHttpCacheForKey:(NSString *)key PPDeprecated("该方法已过期,请使用 +(id)httpCacheForURL:(NSString *)URL parameters:(NSDictionary *)parameters;");

@end
