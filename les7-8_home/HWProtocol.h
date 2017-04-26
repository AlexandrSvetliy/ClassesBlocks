//
//  HWProtocol.h
//  les7-8_home
//
//  Created by Александр Светлый on 19.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol HWProtocol <NSObject>
@required
- (void)printAllStr;
@optional
- (void)printOnlyIntegers;
- (NSInteger)getRandomNumberFrom:(NSInteger)from To:(NSInteger)to;
@end
