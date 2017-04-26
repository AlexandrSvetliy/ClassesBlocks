//
//  HWClass1.m
//  les7-8_home
//
//  Created by Александр Светлый on 19.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "HWClass1.h"

@implementation HWClass1
- (instancetype)initWithDictionary:(NSDictionary *)aDictionary {
    self = [super init];
    if(self) {
        _aDictionary = aDictionary;
    }
    return self;
}
- (void)setBlockPropertyWithBlock:(void (^)(id, id, BOOL *))aBlock {
    _blockProperty = aBlock;
}
- (void)printDictionaryWithBlock:(void (^)(id key, id obj, BOOL *stop))aBlock {
    [self.aDictionary enumerateKeysAndObjectsUsingBlock:aBlock];
}
@end
