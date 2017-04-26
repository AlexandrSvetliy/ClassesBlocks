//
//  Parent1.m
//  les7-8_home
//
//  Created by Александр Светлый on 19.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "HWParent1.h"

@implementation HWParent1

- (instancetype)initWithIntProps:(NSInteger)propInt1 intProp:(NSInteger)propInt2 {
    self = [super init];
    if(self) {
        _propInt1 = propInt1;
        _propInt2 = propInt2;
    }
    return self;
}
- (instancetype)initWithStrProps:(NSString*)propStr1 strProp:(NSString*)propStr2 {
    self = [super init];
    if(self) {
        _propStr1 = propStr1;
        _propStr2 = propStr2;
    }
    return self;
}
-(void)printAllStr {
    NSLog(@"%@ %@",self.propStr1,self.propStr2);
}

@end
