//
//  Book.h
//  入学测试
//
//  Created by 周伟昕 on 15/5/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject
//名字
@property (nonatomic,copy)NSString *bookName;
//年份
@property (nonatomic,assign) int year;
//价格
@property (nonatomic,assign) float price;

//初始化方法
+(instancetype)bookWithName:(NSString *)name AndYear:(int)year AndPrice:(float)price;
-(instancetype)initWithName:(NSString *)name AndYear:(int)year AndPrice:(float)price;

//排序方法


@end
