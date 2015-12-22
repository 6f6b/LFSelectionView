//
//  ViewController.m
//  LFSelectionView
//
//  Created by LiuFeng on 15/12/22.
//  Copyright © 2015年 LiuFeng. All rights reserved.
//

#import "ViewController.h"
#import "LFSelectionView.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
@interface ViewController ()<SeclectionViewDelegate>
@property (nonatomic,weak) UIView *containView;
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
    

    
    UIView *containView = [[UIView alloc] initWithFrame:CGRectMake(0, 100, SCREEN_WIDTH, 20)];
    containView.backgroundColor = [UIColor greenColor];
    _containView = containView;
    [self.view addSubview:containView];
    
    LFSelectionView *selectionView = [LFSelectionView selectionViewWith:titles views:views origin:CGPointMake(0, 0)];
    selectionView.delegate = self;
    
    [self.containView addSubview:selectionView];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)selectView:(UIView *)selectView{
    CGRect frame = self.containView.frame;
    frame.size.height = selectView.frame.size.height;
    self.containView.frame = frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
