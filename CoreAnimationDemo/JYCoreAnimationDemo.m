//
//  CoreAnimationDemoTableViewController.m
//  CoreAnimationDemo
//
//  Created by 李少帅 on 16/9/29.
//  Copyright © 2016年 李少帅. All rights reserved.
//

#import "JYCoreAnimationDemo.h"

@interface JYCoreAnimationDemo ()

@property (nonatomic, strong) NSMutableArray *titles;

@property (nonatomic, strong) NSMutableArray *classNames;

@end

@implementation JYCoreAnimationDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Core Animation";
    _titles = [NSMutableArray array];
    _classNames = [NSMutableArray array];
    [self addCell:@"LayerTree" className:@"JYLayerTree"];
    [self addCell:@"AnchorPoint" className:@"JYAnchorPoint"];
    [self.tableView reloadData];
}

-(void)addCell:(NSString *)title className:(NSString *)className {
    [self.titles addObject:title];
    [self.classNames addObject:className];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"JY"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"JY"];
    }
    cell.textLabel.text = _titles[indexPath.row];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *className = _classNames[indexPath.row];
    Class class = NSClassFromString(className);
    if (class) {
        UIViewController *vc = [class new];
        vc.view.backgroundColor = [UIColor whiteColor];
        vc.title = _titles[indexPath.row];
        [self.navigationController pushViewController:vc animated:YES];
    }
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
