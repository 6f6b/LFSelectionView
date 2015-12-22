//
//  ViewController.m
//  LFSelectionView
//
//  Created by LiuFeng on 15/12/22.
//  Copyright © 2015年 LiuFeng. All rights reserved.
//

#import "ViewController.h"
#import "LFSelectionView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *titles = @[@"1",@"2",@"3"];
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    view1.backgroundColor = [UIColor redColor];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 150)];
    view2.backgroundColor = [UIColor orangeColor];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 160)];
    view3.backgroundColor = [UIColor yellowColor];
    
    NSArray *views = @[view1,view2,view3];
    
    LFSelectionView *selectionView = [LFSelectionView selectionViewWith:titles views:views origin:CGPointMake(0, 100)];
    [self.view addSubview:selectionView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
