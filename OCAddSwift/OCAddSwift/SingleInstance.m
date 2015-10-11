////
//  SingleInstance.m
//  单例的实现
//
//  Created by Tsz on 15/10/10.
//  Copyright © 2015年 Tsz. All rights reserved.
//

#import "SingleInstance.h"

@implementation SingleInstance
static id  instance;
//+ (instancetype)sharedNetTools{
//    
//    static  dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        instance = [[self alloc]init];
//    });
//    return instance;
//}

//第二种写单例的方法
+(instancetype)allocWithZone:(struct _NSZone *)zone{
    
     static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super allocWithZone:zone];
    });
    return instance;
}

+ (instancetype)sharedNetTools{
    instance = [[self alloc]init];
    return instance;
}

@end
