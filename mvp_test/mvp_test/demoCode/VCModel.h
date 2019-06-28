//
//  VCModel.h
//  mvpdemo
//
//  Created by zhangyiling on 16/12/1.
//  Copyright © 2016年 zhangyiling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VCPresenter.h"

@interface VCModel : NSObject

@property(nonatomic, weak) id<VCMtoPProtocol> p;

/*获取数据*/
-(void)getData:(NSDictionary *)param;

@end
