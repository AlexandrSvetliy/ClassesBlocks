//
//  HWClass1.h
//  les7-8_home
//
//  Created by Александр Светлый on 19.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "HWParent1.h"

typedef void (^MyBlock)(id key, id obj, BOOL *stop);

@interface HWClass1 : HWParent1 <HWProtocol>
@property (nonatomic,copy) MyBlock blockProperty;
@property (nonatomic,strong) NSDictionary *aDictionary;
- (void)setBlockPropertyWithBlock:(void (^)(id key, id obj, BOOL *stop))aBlock;
- (instancetype)initWithDictionary:(NSDictionary *)aDictionary;
- (void)printDictionaryWithBlock:(void (^)(id key, id obj, BOOL *stop))aBlock;
@end
