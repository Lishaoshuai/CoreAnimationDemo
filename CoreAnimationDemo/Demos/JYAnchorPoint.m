//
//  JYAnchorPoint.m
//  CoreAnimationDemo
//
//  Created by 李少帅 on 16/10/1.
//  Copyright © 2016年 李少帅. All rights reserved.
//

#import "JYAnchorPoint.h"

@interface JYAnchorPoint ()

@end

@implementation JYAnchorPoint

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *compareView = [[UIView alloc] init];
    compareView.backgroundColor = [UIColor redColor];
    compareView.frame = CGRectMake(0, 0, 20, 20);
    compareView.layer.position = CGPointMake(10, 100);
    [self.view addSubview:compareView];
    
    NSLog(@"x:%lf",compareView.layer.position.x - compareView.layer.anchorPoint.x * compareView.frame.size.width);
    NSLog(@"y:%lf",compareView.layer.position.y - compareView.layer.anchorPoint.y * compareView.frame.size.height);
    
    UIView *changeView = [[UIView alloc] init];
    changeView.backgroundColor = [UIColor blueColor];
    changeView.frame = CGRectMake(0, 0, 20, 20);
    changeView.layer.position = CGPointMake(10, 100);
    changeView.layer.anchorPoint = CGPointMake(-1, -1);
    [self.view addSubview:changeView];

    NSLog(@"\na:%@\n,b:%@",NSStringFromCGRect(compareView.frame),NSStringFromCGRect(changeView.frame));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
