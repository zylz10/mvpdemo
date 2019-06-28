//
//  ViewController.m
//  mvpdemo
//
//  Created by zhangyiling on 16/11/30.
//  Copyright © 2016年 zhangyiling. All rights reserved.
//

#import "ViewController.h"
#import "VCController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    float w = self.view.frame.size.width - 30*2;
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(30, 100, w , 48)];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn setTitle:@"test" forState:UIControlStateNormal];
    btn.layer.borderColor = [UIColor orangeColor].CGColor;
    btn.layer.borderWidth = 1.f;
    [self.view addSubview:btn];

}
-(void)click:(UIButton *)btn{
    VCController *vc = [[VCController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    [self presentViewController:nav animated:YES completion:nil];
}

-(void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    
}

@end
