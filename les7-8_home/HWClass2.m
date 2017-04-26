//
//  HWClass2.m
//  les7-8_home
//
//  Created by Александр Светлый on 19.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "HWClass2.h"

@implementation HWClass2
- (NSInteger)getRandomNumberFrom:(NSInteger)from To:(NSInteger)to {
    return from + arc4random() % (to-from+1);
}
@end
