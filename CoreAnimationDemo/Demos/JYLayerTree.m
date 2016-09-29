//
//  JYLayerTree.m
//  CoreAnimationDemo
//
//  Created by 李少帅 on 16/9/29.
//  Copyright © 2016年 李少帅. All rights reserved.
//

#import "JYLayerTree.h"

@interface JYLayerTree ()

@end

@implementation JYLayerTree

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *layerView = [[UIView alloc] init];
    layerView.backgroundColor = [UIColor lightGrayColor];
    layerView.frame = CGRectMake(0, 0, 200, 200);
    layerView.center = self.view.center;
    [self.view addSubview:layerView];
    
    CALayer *blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(50, 50, 100, 100);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    
    [layerView.layer addSublayer:blueLayer];
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
