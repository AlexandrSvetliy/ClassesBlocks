//
//  Parent2.m
//  les7-8_home
//
//  Created by Александр Светлый on 19.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "HWParent2.h"

@implementation HWParent2

- (instancetype) initWithIntProp:(NSInteger)propInt andDateProp:(NSDate*)propDate {
    self = [self init];
    if(self) {
        _propInt = propInt;
        _propDate = propDate;
    }
    return self;
}
- (instancetype) initWithStrProp:(NSString*)propStr andArrayProp:(NSArray*)propArray {
    self = [self init];
    if(self) {
        _propStr = propStr;
        _propArray = propArray;
    }
    return self;
}
-(void)printAllStr {
    NSLog(@"%@",self.propStr);
}
-(void)printOnlyIntegers {
    NSLog(@"%li",(long)self.propInt);
}
@end
