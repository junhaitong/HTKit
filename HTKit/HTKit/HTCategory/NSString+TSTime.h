//
//  NSString+TSTime.h
//  WinTreasure
//
//  Created by Apple on 16/6/12.
//  Copyright © 2016年 linitial. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TSTime)

//时间戳--->时间
+ (NSString *)transToTime:(NSString *)timsp;

//时间戳--->日期
+ (NSString *)transToDate:(NSString *)timsp;

//时间---->时间戳
+ (NSString *)transTotimeSp:(NSString *)time;

@end
