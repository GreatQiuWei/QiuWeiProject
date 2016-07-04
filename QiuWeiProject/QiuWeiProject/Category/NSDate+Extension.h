
#import <Foundation/Foundation.h>

@interface DateItem : NSObject
@property (nonatomic, assign) NSInteger day;
@property (nonatomic, assign) NSInteger hour;
@property (nonatomic, assign) NSInteger minute;
@property (nonatomic, assign) NSInteger second;
@end

@interface NSDate (Extension)
- (DateItem *)intervalSinceDate:(NSDate *)anotherDate;

- (BOOL)isToday;
- (BOOL)isYesterday;
- (BOOL)isTomorrow;
- (BOOL)isThisYear;
//获取今天周几
- (NSInteger)getNowWeekday;
@end
