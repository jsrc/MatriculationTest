//
//  NSString+otherSelectorOfString.h
//  入学测试
//
//  Created by 周伟昕 on 15/5/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (otherSelectorOfString)
//1:获取字符串中英文字母的个数
-(int)countOFletters;
//2:反转字符串
-(NSString *)rollBackString;
//3:除去字符串两端空格
-(NSString *)removeBlank;
//4:截取网站域名中的字符串
-(NSString *)getSubArray;
@end
