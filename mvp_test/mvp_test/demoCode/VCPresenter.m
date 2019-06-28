//
//  VCPresenter.m
//  mvpdemo
//
//  Created by zhangyiling on 16/12/1.
//  Copyright © 2016年 zhangyiling. All rights reserved.
//

#import "VCPresenter.h"
#import "VCModel.h"

@interface VCPresenter()
@property(nonatomic, strong) VCModel *m;
@property(nonatomic, weak) id<VCViewProtocol> v;
@end

@implementation VCPresenter

- (id) init
{
    self = [super init];
    
    VCModel *m = [[VCModel alloc] init];    
    m.p = self;
    self.m = m;
    
    return self;
}

- (void) setView:(id<BaseViewProtocol>)view
{
    [view setPresender:self];
    [self setV:(id<VCViewProtocol>)view];
}

/*
P层处理业务逻辑（假装业务很复杂的样子😁）
*/
-(void)sendTag:(NSInteger)tag{

    switch (tag) {
        case 1:
            /*从M层获取数据*/
            if ([self.m respondsToSelector:@selector(getData:)]) {
                [self.m getData:nil];
            }
            break;
        case 2:
            break;
        case 3:
            break;
        default:
            break;
    }
}

#pragma VCMtoPProtocol
/*
P层处理业务逻辑（假装业务很复杂的样子😁）
*/
-(void)PGetData:(NSString *)data{
    
    if ([data isEqualToString:@"我是数据"]) {
        if ([self.v respondsToSelector:@selector(VGetData:)]) {
            [self.v VGetData:@"通讯成功"];
        }
    }else{
        if ([self.v respondsToSelector:@selector(VGetData:)]) {
            [self.v VGetData:@"通讯失败"];
        }
    }
}
-(void)dealloc{
    NSLog(@"P销毁");
}
@end
