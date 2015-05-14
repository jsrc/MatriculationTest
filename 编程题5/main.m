//
//  main.m
//  编程题5
//
//  Created by 周伟昕 on 15/5/13.
//  Copyright (c) 2015年 小码哥. All rights reserved.
//
/*
 编程题5:定义一个书本类，需要有名字，价格，出版年份（比如2014）三个成员属性，创建5个书本对象，属性可以任意值，但名字不要使用中文
 1) 增加一个便利构造方法（工厂方法），用于快速创建对象
 2) 使用NSLog直接输出书本对象时，要保证输出字符串格式为：这本书叫做xx, 价格是xx, 出版年份是xx.'
 3) 对5个书本对象按照"出版年份"—>"价格"->"名字"优先级从小到大排序（出版年份相同按照价格排序，价格同按照名字排序序）

 */
#import <Foundation/Foundation.h>
#import "Book.h"
#import "NSArray+descriptionSEL.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1:通过构造方法快速创建对象
        Book *book1=[Book bookWithName:@"a" AndYear:2001 AndPrice:12.32];
        Book *book2=[Book bookWithName:@"b" AndYear:2002 AndPrice:12.32];
        Book *book3=[Book bookWithName:@"ab" AndYear:2002 AndPrice:13.32];
        Book *book4=[Book bookWithName:@"bc" AndYear:2004 AndPrice:14.32];
        Book *book5=[Book bookWithName:@"ac" AndYear:2002 AndPrice:12.32];
        //2:将对象放入数组中
        NSArray *array=@[book1,book2,book3,book4,book5];
        //3:设置排序条件
        NSSortDescriptor *bookNameDescrip=[NSSortDescriptor sortDescriptorWithKey:@"bookName" ascending:YES];
        NSSortDescriptor *yearDescrip=[NSSortDescriptor sortDescriptorWithKey:@"year" ascending:YES];
        NSSortDescriptor *priceDescrip=[NSSortDescriptor sortDescriptorWithKey:@"price" ascending:YES];
        //4:设置排序条件的优先级
        NSArray *descripArray=@[bookNameDescrip,yearDescrip,priceDescrip];
        //5:返回排序好的数组并输出
        NSArray *array2=[array sortedArrayUsingDescriptors:descripArray];
        NSLog(@"%@",array2);
        
        




    }
    return 0;
}
