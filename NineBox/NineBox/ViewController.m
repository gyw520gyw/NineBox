//
//  ViewController.m
//  NineBox
//
//  Created by gyw on 16/9/19.
//  Copyright © 2016年 gyw. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#define viewW 100
#define viewH 120
#define totalCount 12
#define colCount 3
#define startY 30
    
    CGFloat marginX = (self.view.bounds.size.width - colCount * viewW) / (colCount + 1);
    CGFloat marginY = 20;
    
    for(int i = 0; i < totalCount; i++) {
        
        CGFloat row = i / colCount;
        CGFloat col = i % colCount;
        
        CGFloat itemX = marginX + col * (viewW + marginX);
        CGFloat itemY = startY + marginY + row * (viewH + marginY);
        
        
        UIView *itemView = [[UIView alloc]initWithFrame:CGRectMake(itemX, itemY, viewW, viewH)];
        
        itemView.backgroundColor = [UIColor blackColor];
        
        
        [self.view addSubview:itemView];
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
