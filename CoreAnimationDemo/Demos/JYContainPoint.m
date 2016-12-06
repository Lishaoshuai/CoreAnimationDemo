//
//  JYContainPoint.m
//  CoreAnimationDemo
//
//  Created by 李少帅 on 16/10/3.
//  Copyright © 2016年 李少帅. All rights reserved.
//

#import "JYContainPoint.h"

@interface JYContainPoint ()

@property (nonatomic, weak) UIView *layerView;
@property (nonatomic, weak) CALayer *blueLayer;

@end

@implementation JYContainPoint

-(void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *layerView = [[UIView alloc] init];
    layerView.backgroundColor = [UIColor lightGrayColor];
    layerView.frame = CGRectMake(0, 0, 200, 200);
    layerView.center = self.view.center;
    self.layerView = layerView;
    [self.view addSubview:layerView];
    
    CALayer *blueLayer = [CALayer layer];
    blueLayer.frame = CGRectMake(50, 50, 100, 100);
    blueLayer.backgroundColor = [UIColor blueColor].CGColor;
    self.blueLayer = blueLayer;
    [layerView.layer addSublayer:blueLayer];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    CGPoint point = [[touches anyObject] locationInView:self.view];
    
    point = [self.layerView.layer convertPoint:point fromLayer:self.view.layer];
    if ([self.layerView.layer containsPoint:point]) {
        
        point = [self.layerView.layer convertPoint:point toLayer:self.blueLayer];
        if ([self.blueLayer containsPoint:point]) {
            NSLog(@"Inside BlueLayer");
        } else {
            NSLog(@"Inside GrayLayer");
        }
    }
    
}

@end
