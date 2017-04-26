//
//  Parent1.h
//  les7-8_home
//
//  Created by Александр Светлый on 19.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HWProtocol.h"

@interface HWParent1 : NSObject <HWProtocol>

@property (nonatomic,assign) NSInteger propInt1;
@property (nonatomic,assign) NSInteger propInt2;
@property (nonatomic,copy) NSString *propStr1;
@property (nonatomic,copy) NSString *propStr2;

- (instancetype) initWithIntProps:(NSInteger)propInt1 intProp:(NSInteger)propInt2;
- (instancetype) initWithStrProps:(NSString*)propStr1 strProp:(NSString*)propStr2;

@end
