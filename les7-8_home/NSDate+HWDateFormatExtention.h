//
//  NSDate+HWDateFormatExtention.h
//  les7-8_home
//
//  Created by Александр Светлый on 20.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (HWDateFormatExtention)
@property (readonly) NSString *tomorrowDateString;
- (NSString *)getMyDateString;
@end
