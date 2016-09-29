//
//  ViewController.m
//  CoreAnimationDemo
//
//  Created by 李少帅 on 16/9/29.
//  Copyright © 2016年 李少帅. All rights reserved.
//

#import "ViewController.h"
#import "JYCoreAnimationDemo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    JYCoreAnimationDemo *demo = [JYCoreAnimationDemo new];
    [self pushViewController:demo animated:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
