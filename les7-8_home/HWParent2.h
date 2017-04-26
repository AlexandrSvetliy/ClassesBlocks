//
//  Parent2.h
//  les7-8_home
//
//  Created by Александр Светлый on 19.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HWProtocol.h"

@interface HWParent2 : NSObject <HWProtocol>

@property (nonatomic,copy) NSDate *propDate;
@property (nonatomic,assign) NSInteger propInt;
@property (nonatomic,copy) NSString *propStr;
@property (nonatomic,assign) NSArray *propArray;

- (instancetype) initWithIntProp:(NSInteger)propInt andDateProp:(NSDate*)propDate;
- (instancetype) initWithStrProp:(NSString*)propStr andArrayProp:(NSArray*)propArray;

@end
