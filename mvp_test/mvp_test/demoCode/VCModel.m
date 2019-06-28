//
//  VCModel.m
//  mvpdemo
//
//  Created by zhangyiling on 16/12/1.
//  Copyright © 2016年 zhangyiling. All rights reserved.
//

#import "VCModel.h"

@implementation VCModel

/*M层获取数据（假装数据很难获取到的的样子😁*/
-(void)getData:(NSDictionary *)param{

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3.f * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        if ([self.p respondsToSelector:@selector(PGetData:)]) {
            [self.p PGetData:@"我是数据"];
        }
    });
}
-(void)dealloc{
    NSLog(@"M销毁");
}

@end
