//
//  ViewController.m
//  testDemo
//
//  Created by Admin on 2019/12/16.
//  Copyright © 2019年 JZY. All rights reserved.
//

#import "ViewController.h"
#if APP_RELEASE
#import "BViewController.h"
#else
#import "AViewController.h"
#endif
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
#if APP_RELEASE
    self.view.backgroundColor = [UIColor redColor];
#endif
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
#if APP_RELEASE
    BViewController *a = [[BViewController alloc] init];
#else
    AViewController *a = [[AViewController alloc] init];
#endif
    [self presentViewController:a animated:YES completion:nil];
}


@end
