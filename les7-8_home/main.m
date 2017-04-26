//
//  main.m
//  les7-8_home
//
//  Created by Александр Светлый on 18.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+HWDateFormatExtention.h"
#import "HWClass1.h"
#import "HWClass2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Using extension
        NSLog(@"%@",[[NSDate date] getMyDateString]);
        NSLog(@"TOMORROW: %@",[[NSDate date] tomorrowDateString]);
        //Using Classes
        HWClass1 *hwClass1Obj = [[HWClass1 alloc] initWithStrProps:@"String" strProp:@"String2"];
        HWClass2 *hwClass2Obj = [[HWClass2 alloc] initWithIntProp:(arc4random()%10+1) andDateProp:[NSDate date]];
        //Using Protocol
        if ([hwClass1Obj respondsToSelector:@selector(printOnlyIntegers)])
            [hwClass1Obj printOnlyIntegers];
        if ([hwClass1Obj respondsToSelector:@selector(printAllStr)])
            [hwClass1Obj printAllStr];
        if ([hwClass2Obj respondsToSelector:@selector(printOnlyIntegers)])
            [hwClass2Obj printOnlyIntegers];
        if ([hwClass2Obj respondsToSelector:@selector(getRandomNumberFrom:To:)])
            NSLog(@"Random number: %ld",(long)[hwClass2Obj getRandomNumberFrom:1 To:10]);
        //Using Block
        NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                    hwClass2Obj, @"anObject",
                                    @"Hello, World!", @"helloString",
                                    @42, @"magicNumber",
                                    hwClass1Obj, @"aValue",
                                    nil];
        HWClass1 *hwClass1Obj2 = [[HWClass1 alloc] initWithDictionary:dictionary];
        [hwClass1Obj2 printDictionaryWithBlock:^(id key, id obj, BOOL *stop) {
            NSLog(@"key: %@, value: %@", key, obj);
        }];
    }
    return 0;
}
