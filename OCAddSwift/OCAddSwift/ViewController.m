//
//  ViewController.m
//  OCAddSwift
//
//  Created by Tsz on 15/10/10.
//  Copyright © 2015年 Tsz. All rights reserved.
//

#import "ViewController.h"
#import "SingleInstance.h"
#import "OCAddSwift-Swift.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad;{
    [super viewDidLoad];
    
    //    NSLog(@"%@" , [SingleInstance sharedNetTools]);
    //异步去实现
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        for (int i=0; i<10; i++) {
            
            NSLog(@"%@  %@",SwiftSigle.sharedSound , [NSThread currentThread]);
        }
    });
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    //    NSLog(@"  %@----- " , [SingleInstance sharedNetTools]);
    NSLog(@"%@",SwiftSigle.sharedSound);
    
}
@end
