//
//  NSDate+HWDateFormatExtention.m
//  les7-8_home
//
//  Created by Александр Светлый on 20.02.17.
//  Copyright © 2017 Александр Светлый. All rights reserved.
//

#import "NSDate+HWDateFormatExtention.h"

@implementation NSDate (HWDateFormatExtention)
@dynamic tomorrowDateString;

-(NSString *)tomorrowDateString {
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *todayComponents = [gregorian components:(NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear) fromDate:[NSDate date]];
    NSInteger theDay = [todayComponents day];
    NSInteger theMonth = [todayComponents month];
    NSInteger theYear = [todayComponents year];
    
    NSDateComponents *components = [[NSDateComponents alloc] init];
    [components setDay:theDay];
    [components setMonth:theMonth];
    [components setYear:theYear];
    NSDate *thisDate = [gregorian dateFromComponents:components];
    
    NSDateComponents *offsetComponents = [[NSDateComponents alloc] init];
    [offsetComponents setDay:1];
    NSDate *nextDate = [gregorian dateByAddingComponents:offsetComponents toDate:thisDate options:0];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    
    return [dateFormatter stringFromDate:nextDate];
}
- (NSString *)getMyDateString {
    NSString *dateString = [[NSString alloc] init];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    dateString = [NSString stringWithFormat:@"### NOW: %@ ###",[dateFormatter stringFromDate:[NSDate date]]];
    
    return [dateString copy];
}
@end
