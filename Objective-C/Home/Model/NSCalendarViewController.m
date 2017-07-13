//
//  NSCalendarViewController.m
//  Objective-C
//
//  Created by 王乙涵 on 2017/7/11.
//  Copyright © 2017年 simpleway. All rights reserved.
//

#import "NSCalendarViewController.h"
#import "NSArrayTableViewCell.h"
#import "WyhModel.h"
static NSString *templateCell = @"templateCell";
@interface NSCalendarViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *wyhTable;
@property(nonatomic,strong)NSMutableArray *dataArray;
@property(nonatomic,strong)NSMutableArray *titleArray;
@end

@implementation NSCalendarViewController

-(UITableView *)wyhTable{
    
    if (!_wyhTable) {
        _wyhTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENMAINWIDTH, SCREENMAINHEIGHT) style:UITableViewStylePlain];
        _wyhTable.delegate = self;
        _wyhTable.dataSource = self;
        _wyhTable.sectionIndexBackgroundColor = CLEARCOLOR;
        _wyhTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_wyhTable registerClass:[NSArrayTableViewCell class] forCellReuseIdentifier:templateCell];
        
    }
    return _wyhTable;
}
-(NSMutableArray *)titleArray{
    if (!_titleArray) {
        _titleArray = [NSMutableArray new];
        [_titleArray addObject:@"NSCalendar"];
        [_titleArray addObject:@"System Locale Information"];
        [_titleArray addObject:@"Creating and Initializing Calendars"];
        [_titleArray addObject:@"Getting Information About a Calendar"];
        [_titleArray addObject:@"Calendrical Calculations"];
        [_titleArray addObject:@"Comparing Dates"];
        [_titleArray addObject:@"Extracting Components"];
        [_titleArray addObject:@"AM and PM Symbols"];
        [_titleArray addObject:@"Weekday Symbols"];
        [_titleArray addObject:@"Month Symbols"];
        [_titleArray addObject:@"Quarter Symbols"];
        [_titleArray addObject:@"Era Symbols"];
        [_titleArray addObject:@"Constants"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
        //NSCalendar
        NSMutableArray *titlarr = [NSMutableArray new];
        
        WyhModel *model = [WyhModel new];
        model.firstName = @"NSCalendar";
        model.secondName = @"NSCalendar对象封装了关于计算时间系统的信息，其中定义了一年的开始、长度和划分。它们提供关于日历的信息以及对calendrical计算的支持，例如确定给定的calendrical单元的范围，并在给定的绝对时间内添加单元";
        [titlarr addObject:model];
        
        [_dataArray addObject:titlarr];
        
        //System Locale Information
        NSMutableArray *sysArr = [NSMutableArray new];
        NSCalendar *calendar = [NSCalendar currentCalendar];
        WyhModel *model1 = [WyhModel new];
        model1.firstName = @"@property(class, readonly, copy) NSCalendar *currentCalendar;";
        model1.secondName = @"返回当前用户的逻辑日历。\n例子：NSCalendar *calendar = [NSCalendar currentCalendar];";
        [sysArr addObject:model1];
        
        WyhModel *model2 = [WyhModel new];
        model2.firstName = @"@property(class, readonly, strong) NSCalendar *autoupdatingCurrentCalendar;";
        model2.secondName = @"为当前用户返回当前的逻辑日历。\n例子：NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];";
        [sysArr addObject:model2];
        
        [_dataArray addObject:sysArr];
        
        //Creating and Initializing Calendars
        NSMutableArray *creatArr = [NSMutableArray new];
        
        WyhModel *model3 = [WyhModel new];
        model3.firstName = @"+ (NSCalendar *)calendarWithIdentifier:(NSCalendarIdentifier)calendarIdentifierConstant;";
        model3.secondName = @"创建并返回一个给定标识符指定的新的NSCalendar对象。\n例子：NSCalendar *calendar =  [NSCalendar calendarWithIdentifier:@\"1\"];";
        [creatArr addObject:model3];
        
        WyhModel *model4 = [WyhModel new];
        model4.firstName = @"- (id)initWithCalendarIdentifier:(NSCalendarIdentifier)ident;";
        model4.secondName = @"为指定的标识符指定的日历初始化一个新分配的NSCalendar对象。\n例子：NSCalendar *calendar =  [[NSCalendar alloc]initWithCalendarIdentifier:@\"1\"];";
        [creatArr addObject:model4];
        
        [_dataArray addObject:creatArr];
        
        //Getting Information About a Calendar
        NSMutableArray *getArr = [NSMutableArray new];
        
        WyhModel *model5 = [WyhModel new];
        model5.firstName = @"@property(readonly, copy) NSCalendarIdentifier calendarIdentifier;";
        model5.secondName = @"为指定的标识符指定的日历初始化一个新分配的NSCalendar对象。\n例子：NSCalendarIdentifier identifi = calendar.calendarIdentifier;";
        [getArr addObject:model5];
        
        WyhModel *model6 = [WyhModel new];
        model6.firstName = @"@property NSUInteger firstWeekday;";
        model6.secondName = @"第一个工作日的索引。\n例子： NSUInteger firstWeekday = calendar.firstWeekday;";
        [getArr addObject:model6];
        
        WyhModel *model7 = [WyhModel new];
        model7.firstName = @"@property(copy) NSLocale *locale;";
        model7.secondName = @"接收机的现场。\n例子：NSLocale *locale = calendar.locale;";
        [getArr addObject:model7];
        
        WyhModel *model8 = [WyhModel new];
        model8.firstName = @"- (NSRange)maximumRangeOfUnit:(NSCalendarUnit)unit;";
        model8.secondName = @"给定单元在接收时所能接收到的值的最大范围限制。\n例子： NSRange rang = [calendar maximumRangeOfUnit:NSCalendarUnitYear];";
        [getArr addObject:model8];
        
        WyhModel *model9 = [WyhModel new];
        model9.firstName = @"@property NSUInteger minimumDaysInFirstWeek;";
        model9.secondName = @"在接收方的第一个星期内，最少的天数，一个整数值。\n例子： NSUInteger mini = calendar.minimumDaysInFirstWeek;";
        [getArr addObject:model9];
       
        WyhModel *model10 = [WyhModel new];
        model10.firstName = @"- (NSRange)minimumRangeOfUnit:(NSCalendarUnit)unit;";
        model10.secondName = @"返回一个给定单元在接收方可以接受的值的最小范围限制。\n例子：   NSRange rang = [calendar minimumRangeOfUnit:NSCalendarUnitMonth];";
        [getArr addObject:model10];
        
        WyhModel *model11 = [WyhModel new];
        model11.firstName = @"- (NSUInteger)ordinalityOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;";
        model11.secondName = @"在给定的绝对时间内，在指定的较大的日历单元(例如一周)中，一个更小的日历单元(例如一天)的序号。\n例子：  NSUInteger ordinality = [calendar ordinalityOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitHour forDate:[NSDate date]];";
        [getArr addObject:model11];
      
        WyhModel *model12 = [WyhModel new];
        model12.firstName = @"- (NSRange)rangeOfUnit:(NSCalendarUnit)smaller inUnit:(NSCalendarUnit)larger forDate:(NSDate *)date;";
        model12.secondName = @"返回一个更小的日历单元(比如一天)的绝对时间值的范围，它可以在更大的日历单元(例如一个月)中进行，其中包括指定的绝对时间。\n例子： NSRange rang = [calendar rangeOfUnit:NSCalendarUnitSecond inUnit:NSCalendarUnitMinute forDate:[NSDate date]];";
        [getArr addObject:model12];
        
        WyhModel *model13 = [WyhModel new];
        model13.firstName = @"- (BOOL)rangeOfUnit:(NSCalendarUnit)unit startDate:(NSDate * _Nullable *)datep interval:(NSTimeInterval *)tip forDate:(NSDate *)date;";
        model13.secondName = @"通过引用包含给定日期的给定日历单元的起始时间和持续时间。\n例子： NSDate *date = [NSDate date];\nNSTimeInterval inter;\nBOOL range = [calendar rangeOfUnit:NSCalendarUnitYear startDate:&date interval:&inter forDate:[NSDate date]];";
        [getArr addObject:model13];
        
        WyhModel *model14 = [WyhModel new];
        model14.firstName = @"- (BOOL)rangeOfWeekendStartDate:(out NSDate * _Nullable *)datep interval:(out NSTimeInterval *)tip containingDate:(NSDate *)date;";
        model14.secondName = @"返回一个给定的日期是否在一个周末期间，如果是，则通过引用起始日期和周末范围的时间间隔返回。\n例子： NSDate *date = [NSDate date];\nNSTimeInterval inter;\nBOOL range = [calendar rangeOfWeekendStartDate:&date interval:&inter containingDate:[NSDate date]];";
        [getArr addObject:model14];
        
        WyhModel *model15 = [WyhModel new];
        model15.firstName = @"@property(copy) NSTimeZone *timeZone;";
        model15.secondName = @"接收方的时区。\n例子：NSTimeZone *timeZone = calendar.timeZone;";
        [getArr addObject:model15];
        
        [_dataArray addObject:getArr];
        
        //Calendrical Calculations
        NSMutableArray *calendricalArr = [NSMutableArray new];
        
        WyhModel *model16 = [WyhModel new];
        model16.firstName = @"- (NSDate *)dateByAddingComponents:(NSDateComponents *)comps toDate:(NSDate *)date options:(NSCalendarOptions)opts;";
        model16.secondName = @"返回一个新的NSDate对象，该对象表示通过添加给定的组件到给定日期所计算的绝对时间。\n例子：  NSDateComponents *comps = [NSDateComponents new];\n[comps setYear:2017];\n[comps setMonth:7];\n[comps setDay:11];\nNSDate *date = [calendar dateByAddingComponents:comps toDate:[NSDate date] options:NSCalendarWrapComponents];";
        [calendricalArr addObject:model16];
        
        WyhModel *model17 = [WyhModel new];
        model17.firstName = @"- (NSDate *)dateByAddingUnit:(NSCalendarUnit)unit value:(NSInteger)value toDate:(NSDate *)date options:(NSCalendarOptions)options;";
        model17.secondName = @"返回一个新的NSDate对象，该对象表示通过将给定组件的值添加到给定日期来计算的绝对时间。\n例子：  NSDate *date = [calendar dateByAddingUnit:NSCalendarUnitDay value:1 toDate:[NSDate date] options:NSCalendarMatchStrictly];";
        [calendricalArr addObject:model17];
       
        WyhModel *model18 = [WyhModel new];
        model18.firstName = @"- (NSDate *)dateFromComponents:(NSDateComponents *)comps;";
        model18.secondName = @"返回一个新的NSDate对象，表示从给定组件计算的绝对时间。\n例子：NSDateComponents *comps = [NSDateComponents new];\n[comps setYear:2017];\n[comps setMonth:7];\n[comps setDay:11];\nNSDate *date = [calendar dateFromComponents:comps];";
        [calendricalArr addObject:model18];
        
        WyhModel *model19 = [WyhModel new];
        model19.firstName = @"- (void)enumerateDatesStartingAfterDate:(NSDate *)start matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)opts usingBlock:(void (^)(NSDate *date, BOOL exactMatch, BOOL *stop))block;";
        model19.secondName = @"计算匹配(或最紧密匹配)一组给定的组件的日期，并为每个组件调用该块，直到停止枚举。\n例子：NSDateComponents *comps = [NSDateComponents new];\n[comps setYear:2017];\n[comps setMonth:7];\n[comps setDay:11];\n [calendar enumerateDatesStartingAfterDate:[NSDate date] matchingComponents:comps options:NSCalendarSearchBackwards usingBlock:^(NSDate * _Nullable date, BOOL exactMatch, BOOL * _Nonnull stop) {\n}];";
        [calendricalArr addObject:model19];
       
        WyhModel *model20 = [WyhModel new];
        model20.firstName = @"- (NSDate *)dateBySettingHour:(NSInteger)h minute:(NSInteger)m second:(NSInteger)s ofDate:(NSDate *)date options:(NSCalendarOptions)opts;";
        model20.secondName = @"创建一个以给定时间计算的新的NSDate实例。\n例子： NSDate *date = [calendar dateBySettingHour:12 minute:30 second:50 ofDate:[NSDate date] options:NSCalendarMatchPreviousTimePreservingSmallerUnits];";
        [calendricalArr addObject:model20];
        
        WyhModel *model21 = [WyhModel new];
        model21.firstName = @"- (NSDate *)dateBySettingUnit:(NSCalendarUnit)unit value:(NSInteger)v ofDate:(NSDate *)date options:(NSCalendarOptions)opts;";
        model21.secondName = @"返回一个新的NSDate对象，该对象表示将给定日期的特定组件设置为给定值的日期，同时尝试保持较低的组件不变。\n例子： NSDate *date = [calendar dateBySettingUnit:NSCalendarUnitWeekday value:2 ofDate:[NSDate date] options:NSCalendarMatchNextTimePreservingSmallerUnits];";
        [calendricalArr addObject:model21];
        
        WyhModel *model22 = [WyhModel new];
        model22.firstName = @"- (NSDate *)dateWithEra:(NSInteger)eraValue year:(NSInteger)yearValue month:(NSInteger)monthValue day:(NSInteger)dayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue;";
        model22.secondName = @"返回一个用给定组件创建的新NSDate对象。\n例子：  NSDate *date = [calendar dateWithEra:10 year:2017 month:7 day:11 hour:10 minute:33 second:30 nanosecond:999];";
        [calendricalArr addObject:model22];
        
        WyhModel *model23 = [WyhModel new];
        model23.firstName = @"- (NSDate *)dateWithEra:(NSInteger)eraValue yearForWeekOfYear:(NSInteger)yearValue weekOfYear:(NSInteger)weekValue weekday:(NSInteger)weekdayValue hour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue nanosecond:(NSInteger)nanosecondValue;";
        model23.secondName = @"返回一个新的NSDate对象，该对象以给定的组件为基础，在一个星期的时间内。\n例子： NSDate *date = [calendar dateWithEra:10 yearForWeekOfYear:2017 weekOfYear:40 weekday:3 hour:12 minute:13 second:30 nanosecond:999];";
        [calendricalArr addObject:model23];
        
        WyhModel *model24 = [WyhModel new];
        model24.firstName = @"- (BOOL)date:(NSDate *)date matchesComponents:(NSDateComponents *)components;";
        model24.secondName = @"返回给定日期是否匹配所有给定的日期组件。\n例子：NSDateComponents *comps = [NSDateComponents new];\n[comps setYear:2017];\n[comps setMonth:7];\n[comps setDay:11];\nBOOL isMatches = [calendar date:[NSDate date] matchesComponents:comps];";
        [calendricalArr addObject:model24];
        
        WyhModel *model25 = [WyhModel new];
        model25.firstName = @"- (NSDate *)nextDateAfterDate:(NSDate *)date matchingComponents:(NSDateComponents *)comps options:(NSCalendarOptions)options;";
        model25.secondName = @"在给定日期与给定组件匹配后返回下一个日期。\n例子：NSDateComponents *comps = [NSDateComponents new];\n[comps setYear:2017];\n[comps setMonth:7];\n[comps setDay:11];\n NSDate *date = [calendar nextDateAfterDate:[NSDate date] matchingComponents:comps options:NSCalendarMatchNextTime];";
        [calendricalArr addObject:model25];
        
        WyhModel *model26 = [WyhModel new];
        model26.firstName = @"- (NSDate *)nextDateAfterDate:(NSDate *)date matchingHour:(NSInteger)hourValue minute:(NSInteger)minuteValue second:(NSInteger)secondValue options:(NSCalendarOptions)options;";
        model26.secondName = @"在给定的日期之后返回下一个日期，该日期与给定的时间、分钟和第二个组件值相匹配。\n例子：  NSDate *date = [calendar nextDateAfterDate:[NSDate date] matchingHour:12 minute:12 second:12 options:NSCalendarMatchFirst];";
        [calendricalArr addObject:model26];
        
        WyhModel *model27 = [WyhModel new];
        model27.firstName = @"- (NSDate *)nextDateAfterDate:(NSDate *)date matchingUnit:(NSCalendarUnit)unit value:(NSInteger)value options:(NSCalendarOptions)options;";
        model27.secondName = @"在给定的日期与给定的日历单元值相匹配后返回下一个日期。\n例子：  NSDate *date = [calendar nextDateAfterDate:[NSDate date] matchingUnit:NSCalendarUnitWeekdayOrdinal value:10 options:NSCalendarMatchLast];";
        [calendricalArr addObject:model27];
        
        WyhModel *model28 = [WyhModel new];
        model28.firstName = @"- (BOOL)nextWeekendStartDate:(out NSDate * _Nullable *)datep interval:(out NSTimeInterval *)tip options:(NSCalendarOptions)options afterDate:(NSDate *)date;";
        model28.secondName = @"通过参考给定日期下的下一个周末的起始日期和时间间隔范围。\n例子： NSDate *date = [NSDate date];\nNSTimeInterval interval;\nBOOL isNext = [calendar nextWeekendStartDate:&date interval:&interval options:NSCalendarWrapComponents afterDate:[NSDate date]];";
        [calendricalArr addObject:model28];
        
        WyhModel *model29 = [WyhModel new];
        model29.firstName = @"- (NSDate *)startOfDayForDate:(NSDate *)date;";
        model29.secondName = @"返回给定日期的第一个时刻。\n例子： NSDate *date = [calendar startOfDayForDate:[NSDate date]];";
        [calendricalArr addObject:model29];
       
        [_dataArray addObject:calendricalArr];
        
        //Comparing Dates
        NSMutableArray *comparArr = [NSMutableArray new];
        
        WyhModel *model30 = [WyhModel new];
        model30.firstName = @"- (NSComparisonResult)compareDate:(NSDate *)date1 toDate:(NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit;";
        model30.secondName = @"返回一个ns对比结果值，它指示两个给定的日期的顺序，基于它们的组件，并根据给定的单位粒度进行排序。\n例子：  NSComparisonResult result = [calendar compareDate:[NSDate date] toDate:[NSDate date] toUnitGranularity:NSCalendarUnitEra];";
        [comparArr addObject:model30];
        
        WyhModel *model31 = [WyhModel new];
        model31.firstName = @"- (BOOL)isDate:(NSDate *)date1 equalToDate:(NSDate *)date2 toUnitGranularity:(NSCalendarUnit)unit;";
        model31.secondName = @"返回两个日期是否等于给定的粒度单位。\n例子：  BOOL isEqual = [calendar isDate:[NSDate date] equalToDate:[NSDate date] toUnitGranularity:NSCalendarUnitEra];";
        [comparArr addObject:model31];
      
        WyhModel *model32 = [WyhModel new];
        model32.firstName = @"- (BOOL)isDate:(NSDate *)date1 inSameDayAsDate:(NSDate *)date2;";
        model32.secondName = @"是否在同一天返回两个日期。\n例子： BOOL isSame = [calendar isDate:[NSDate date] inSameDayAsDate:[NSDate date]];";
        [comparArr addObject:model32];
        
        WyhModel *model33 = [WyhModel new];
        model33.firstName = @"- (BOOL)isDateInToday:(NSDate *)date;";
        model33.secondName = @"返回给定的日期是否在“今天”。\n例子：BOOL isToday = [calendar isDateInToday:[NSDate date]];";
        [comparArr addObject:model33];
        
        WyhModel *model34 = [WyhModel new];
        model34.firstName = @"- (BOOL)isDateInTomorrow:(NSDate *)date;";
        model34.secondName = @"返回日期是否在“明天”。\n例子：BOOL isTomorrow = [calendar isDateInTomorrow:[NSDate date]];";
        [comparArr addObject:model34];
        
        WyhModel *model35 = [WyhModel new];
        model35.firstName = @"- (BOOL)isDateInWeekend:(NSDate *)date;";
        model35.secondName = @"返回一个给定的日期是否在一个周末期间，如日历和日历的语言环境所定义的。\n例子：BOOL isWeek = [calendar isDateInWeekend:[NSDate date]];";
        [comparArr addObject:model35];
        
        WyhModel *model36 = [WyhModel new];
        model36.firstName = @"- (BOOL)isDateInYesterday:(NSDate *)date;";
        model36.secondName = @"返回的日期是否在“昨天”。\n例子：BOOL isYesterday = [calendar isDateInYesterday:[NSDate date]];";
        [comparArr addObject:model36];
        
        [_dataArray addObject:comparArr];
        
        //Extracting Components
        NSMutableArray *extracArr = [NSMutableArray new];
        
        WyhModel *model37 = [WyhModel new];
        model37.firstName = @"- (NSInteger)component:(NSCalendarUnit)unit fromDate:(NSDate *)date;";
        model37.secondName = @"从指定日期返回指定的日期组件。\n例子：NSInteger cf = [calendar component:NSCalendarUnitEra fromDate:[NSDate date]];";
        [extracArr addObject:model36];
        
        WyhModel *model38 = [WyhModel new];
        model38.firstName = @"- (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)date;";
        model38.secondName = @"返回一个包含给定日期的nsdatecomponent对象，它被分解为指定的组件。\n例子：NSDateComponents *comps = [calendar components:NSCalendarUnitEra fromDate:[NSDate date]];";
        [extracArr addObject:model38];
        
        WyhModel *model39 = [WyhModel new];
        model39.firstName = @"- (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDate:(NSDate *)startingDate toDate:(NSDate *)resultDate options:(NSCalendarOptions)opts;";
        model39.secondName = @"返回，作为一个使用指定组件的nsdatecomponent对象，两个提供的日期之间的区别。\n例子：NSDateComponents *comps = [calendar  components:NSCalendarUnitEra fromDate:[NSDate date] toDate:[NSDate date] options:NSCalendarMatchFirst];";
        [extracArr addObject:model39];
        
        WyhModel *model40 = [WyhModel new];
        model40.firstName = @"- (NSDateComponents *)components:(NSCalendarUnit)unitFlags fromDateComponents:(NSDateComponents *)startingDateComp toDateComponents:(NSDateComponents *)resultDateComp options:(NSCalendarOptions)options;";
        model40.secondName = @"返回一个nsdatecomponent对象表示从给定的nsdatecomponent对象构造的开始和结束NSDate对象之间的区别。\n例子：   NSDateComponents *comps = [NSDateComponents new];\n[comps setYear:2017];\n[comps setMonth:7];\n[comps setDay:11];\nNSDateComponents *comps2 = [NSDateComponents new];\n[comps2 setYear:2018];\n[comps2 setMonth:7];\n[comps2 setDay:11];\nNSDateComponents *comps3 = [calendar components:NSCalendarUnitYear fromDateComponents:comps toDateComponents:comps2 options:NSCalendarMatchFirst];";
        [extracArr addObject:model40];
        
        WyhModel *model41 = [WyhModel new];
        model41.firstName = @"- (NSDateComponents *)componentsInTimeZone:(NSTimeZone *)timezone fromDate:(NSDate *)date;";
        model41.secondName = @"返回日期的所有日期组件，就像在给定的时区(而不是接收日历的时区)。\n例子：   NSTimeZone *timezone = calendar.timeZone;\nNSDateComponents *comps = [calendar componentsInTimeZone:timezone fromDate:[NSDate date]];";
        [extracArr addObject:model41];
        
        WyhModel *model42 = [WyhModel new];
        model42.firstName = @"- (void)getEra:(out NSInteger *)eraValuePointer year:(out NSInteger *)yearValuePointer month:(out NSInteger *)monthValuePointer day:(out NSInteger *)dayValuePointer fromDate:(NSDate *)date;";
        model42.secondName = @"通过参考日期、年、年和工作日的组件值来返回一个给定的日期。\n例子：NSInteger era;\nNSInteger ye;\nNSInteger mt;\nNSInteger dy;\n[calendar getEra:&era year:&ye month:&mt day:&dy fromDate:[NSDate date]];";
        [extracArr addObject:model42];
        
        WyhModel *model43 = [WyhModel new];
        model43.firstName = @"- (void)getEra:(out NSInteger *)eraValuePointer yearForWeekOfYear:(out NSInteger *)yearValuePointer weekOfYear:(out NSInteger *)weekValuePointer weekday:(out NSInteger *)weekdayValuePointer fromDate:(NSDate *)date;";
        model43.secondName = @"通过参考日期、年、年和工作日的组件值来返回一个给定的日期。\n例子：NSInteger era;\nNSInteger ye;\nNSInteger mt;\nNSInteger dy;\n[calendar getEra:&era yearForWeekOfYear:&ye weekOfYear:&mt weekday:&dy fromDate:[NSDate date]];";
        [extracArr addObject:model43];
        
        WyhModel *model44 = [WyhModel new];
        model44.firstName = @"- (void)getHour:(out NSInteger *)hourValuePointer minute:(out NSInteger *)minuteValuePointer second:(out NSInteger *)secondValuePointer nanosecond:(out NSInteger *)nanosecondValuePointer fromDate:(NSDate *)date;";
        model44.secondName = @"通过引用给定日期的小时、分钟、秒和纳秒的组件值来返回。\n例子： NSInteger hour;\nNSInteger minute;\nNSInteger second;\nNSInteger nanosecond;\n[calendar getHour:&hour minute:&minute second:&second nanosecond:&nanosecond fromDate:[NSDate date]];";
        [extracArr addObject:model44];
       
        [_dataArray addObject:extracArr];
        
        //AM and PM Symbols
        NSMutableArray *symbolArr = [NSMutableArray new];
        
        WyhModel *model45 = [WyhModel new];
        model45.firstName = @"@property(readonly, copy) NSString *AMSymbol;";
        model45.secondName = @"这是接收者的符号。\n例子：NSString *AMSymbol = calendar.AMSymbol;";
        [symbolArr addObject:model45];
        
        WyhModel *model46 = [WyhModel new];
        model46.firstName = @"@property(readonly, copy) NSString *PMSymbol;";
        model46.secondName = @"接收方的PM符号。\n例子：NSString *PMSymbol = calendar.PMSymbol;";
        [symbolArr addObject:model46];
        
        [_dataArray addObject:symbolArr];
        
        //Weekday Symbols
        NSMutableArray *weekArr = [NSMutableArray new];
        
        WyhModel *model47 = [WyhModel new];
        model47.firstName = @"@property(readonly, copy) NSArray<NSString *> *weekdaySymbols;";
        model47.secondName = @"接收器的一组工作日符号。\n例子：NSArray *arr = calendar.weekdaySymbols;";
        [weekArr addObject:model47];
        
        WyhModel *model48 = [WyhModel new];
        model48.firstName = @"@property(readonly, copy) NSArray<NSString *> *shortWeekdaySymbols;";
        model48.secondName = @"接收器的一组短的工作日符号。\n例子：NSArray *arr = calendar.shortWeekdaySymbols;";
        [weekArr addObject:model48];
        
        WyhModel *model49 = [WyhModel new];
        model49.firstName = @"@property(readonly, copy) NSArray<NSString *> *veryShortWeekdaySymbols;";
        model49.secondName = @"一组非常短的工作日符号。\n例子：NSArray *arr = calendar.veryShortWeekdaySymbols;";
        [weekArr addObject:model49];
        
        WyhModel *model50 = [WyhModel new];
        model50.firstName = @"@property(readonly, copy) NSArray<NSString *> *standaloneWeekdaySymbols;";
        model50.secondName = @"接收器的一组独立的工作日符号。\n例子：NSArray *arr = calendar.standaloneWeekdaySymbols;";
        [weekArr addObject:model50];
        
        WyhModel *model51 = [WyhModel new];
        model51.firstName = @"@property(readonly, copy) NSArray<NSString *> *shortStandaloneWeekdaySymbols;";
        model51.secondName = @"接收器的一组短时间的独立工作日符号。\n例子：NSArray *arr = calendar.shortStandaloneWeekdaySymbols;";
        [weekArr addObject:model51];
        
        WyhModel *model52 = [WyhModel new];
        model52.firstName = @"@property(readonly, copy) NSArray<NSString *> *veryShortStandaloneWeekdaySymbols;";
        model52.secondName = @"一组非常短的独立工作日符号。\n例子：NSArray *arr = calendar.veryShortStandaloneWeekdaySymbols;";
        [weekArr addObject:model52];
        
        [_dataArray addObject:weekArr];
        
        //Month Symbols
        NSMutableArray *monArr = [NSMutableArray new];
        
        WyhModel *model53 = [WyhModel new];
        model53.firstName = @"@property(readonly, copy) NSArray<NSString *> *monthSymbols;";
        model53.secondName = @"接收器的一组月符号。\n例子：NSArray *arr = calendar.monthSymbols;";
        [monArr addObject:model53];
        
        WyhModel *model54 = [WyhModel new];
        model54.firstName = @"@property(readonly, copy) NSArray<NSString *> *shortMonthSymbols;";
        model54.secondName = @"接收器的一组短月符号。\n例子：NSArray *arr = calendar.shortMonthSymbols;";
        [monArr addObject:model54];
        
        WyhModel *model55 = [WyhModel new];
        model55.firstName = @"@property(readonly, copy) NSArray<NSString *> *veryShortMonthSymbols;";
        model55.secondName = @"接收器的一个非常短的月符号的数组。\n例子：NSArray *arr = calendar.veryShortMonthSymbols;";
        [monArr addObject:model55];
        
        WyhModel *model56 = [WyhModel new];
        model56.firstName = @"@property(readonly, copy) NSArray<NSString *> *standaloneMonthSymbols;";
        model56.secondName = @"接收器的一组独立月符号。\n例子：NSArray *arr = calendar.standaloneMonthSymbols;";
        [monArr addObject:model56];
        
        WyhModel *model57 = [WyhModel new];
        model57.firstName = @"@property(readonly, copy) NSArray<NSString *> *shortStandaloneMonthSymbols;";
        model57.secondName = @"接收器的一组短时间的独立月符号。\n例子：NSArray *arr = calendar.shortStandaloneMonthSymbols;";
        [monArr addObject:model57];
        
        WyhModel *model58 = [WyhModel new];
        model58.firstName = @"@property(readonly, copy) NSArray<NSString *> *veryShortStandaloneMonthSymbols;";
        model58.secondName = @"接收器的一个非常短的月符号的数组。\n例子：NSArray *arr = calendar.veryShortStandaloneMonthSymbols;";
        [monArr addObject:model58];
        
        [_dataArray addObject:monArr];
        
        //Quarter Symbols
        NSMutableArray *quarterArr = [NSMutableArray new];
        
        WyhModel *model59 = [WyhModel new];
        model59.firstName = @"@property(readonly, copy) NSArray<NSString *> *quarterSymbols;";
        model59.secondName = @"接收机的一组四分之一符号。\n例子：NSArray *arr = calendar.quarterSymbols;";
        [quarterArr addObject:model59];
        
     
        
        WyhModel *model60 = [WyhModel new];
        model60.firstName = @"@property(readonly, copy) NSArray<NSString *> *shortQuarterSymbols;";
        model60.secondName = @"接收机的一组短四分之一符号。\n例子：NSArray *arr = calendar.shortQuarterSymbols;";
        [quarterArr addObject:model60];
        
        WyhModel *model61 = [WyhModel new];
        model61.firstName = @"@property(readonly, copy) NSArray<NSString *> *standaloneQuarterSymbols;";
        model61.secondName = @"接收器的一组独立的四分之一符号。\n例子：NSArray *arr = calendar.standaloneQuarterSymbols;";
        [quarterArr addObject:model61];
        
        WyhModel *model62 = [WyhModel new];
        model62.firstName = @"@property(readonly, copy) NSArray<NSString *> *shortStandaloneQuarterSymbols;";
        model62.secondName = @"接收器的一组短的独立的四分之一符号。\n例子：NSArray *arr = calendar.shortStandaloneQuarterSymbols;";
        [quarterArr addObject:model62];
        
        [_dataArray addObject:quarterArr];
        
        //Era Symbols
        NSMutableArray *eraArr = [NSMutableArray new];
        
        WyhModel *model63 = [WyhModel new];
        model63.firstName = @"@property(readonly, copy) NSArray<NSString *> *eraSymbols;";
        model63.secondName = @"接收器的一组时代符号。\n例子：NSArray *arr = calendar.eraSymbols;";
        [eraArr addObject:model63];
        
        WyhModel *model64 = [WyhModel new];
        model64.firstName = @"@property(readonly, copy) NSArray<NSString *> *longEraSymbols;";
        model64.secondName = @"接收器的一组长时期符号。\n例子：NSArray *arr = calendar.longEraSymbols;";
        [eraArr addObject:model64];
        
        [_dataArray addObject:eraArr];
        //Constants
        NSMutableArray *constantArr = [NSMutableArray new];
        
        WyhModel *model65 = [WyhModel new];
        model65.firstName = @"NSCalendarIdentifier";
        model65.secondName = @"日历标识符的类型。查看定义值的日历标识符。\n例子：NSCalendarIdentifier:日历标识符的类型。查看定义值的日历标识符";
        [constantArr addObject:model65];
        
        WyhModel *model66 = [WyhModel new];
        model66.firstName = @"Calendar Identifiers";
        model66.secondName = @"指定日历的标识符，例如格里历，它是欧洲、西半球和其他地方的通用日历。\n例子：NSCalendarIdentifierGregorian:公历的标识符\nNSCalendarIdentifierBuddhist:佛教日历的标识符\nNSCalendarIdentifierChinese:中国日历的标识符\nNSCalendarIdentifierCoptic:科普特日历的标识符\nNSCalendarIdentifierEthiopicAmeteMihret:埃塞俄比亚(Amete Mihret)日历的标识符\nNSCalendarIdentifierEthiopicAmeteAlem:埃塞俄比亚(Amete Alem)日历的标识\nNSCalendarIdentifierHebrew:希伯来日历的标识符\nNSCalendarIdentifierISO8601:ISO8601日历的标识符。\nNSCalendarIdentifierIndian:印度日历的标识符\nNSCalendarIdentifierIslamic:伊斯兰历的标识符\nNSCalendarIdentifierIslamicCivil:伊斯兰文明日历的标识符\nNSCalendarIdentifierJapanese:日本日历的标识符。\nNSCalendarIdentifierPersian:波斯历的标识符\nNSCalendarIdentifierRepublicOfChina:中华民国(台湾)年历\nNSCalendarIdentifierIslamicTabular:列表伊斯兰日历的标识符\nNSCalendarIdentifierIslamicUmmAlQura:伊斯兰乌姆本图拉日历的标识符。";
        [constantArr addObject:model66];
        
        WyhModel *model67 = [WyhModel new];
        model67.firstName = @"NSCalendarDayChangedNotification";
        model67.secondName = @"当系统的日历日发生变化时，由系统日历、地区和时区决定。这个通知不提供对象。\n例子：NSCalendarDayChangedNotification:当系统的日历日发生变化时，由系统日历、地区和时区决定。这个通知不提供对象";
        [constantArr addObject:model67];
        
        WyhModel *model68 = [WyhModel new];
        model68.firstName = @"NSCalendarUnit";
        model68.secondName = @"指定calendrical单元，如日和月。\n例子：NSCalendarUnitEra:指定单位时代\nNSCalendarUnitYear:今年指定单位\nNSCalendarUnitMonth:这个月指定单位\nNSCalendarUnitDay:指定天单位。\nNSCalendarUnitHour:指定小时单位\nNSCalendarUnitMinute:指定分单元\nNSCalendarUnitSecond:指定秒单元\nNSCalendarUnitWeekday:指定工作日单位\nNSCalendarUnitWeekdayOrdinal:指定普通工作日单位\nNSCalendarUnitQuarter:指定日历的四分之一\nNSCalendarUnitWeekOfMonth:指定一个月日历单元的原始周\nNSCalendarUnitWeekOfYear:指定年度日历单元的原始周\nNSCalendarUnitYearForWeekOfYear:指定日历被解释为一个星期的日历\nNSCalendarUnitNanosecond:指定了纳秒单位\nNSCalendarUnitCalendar:指定日期组件对象的日历作为一个NSCalendar\nNSCalendarUnitTimeZone:指定日期组件对象的时区为NSTimeZone\nNSEraCalendarUnit:指定单位时代\nNSYearCalendarUnit:今年指定单位\nNSMonthCalendarUnit:这个月指定单位\nNSDayCalendarUnit:指定天单位\nNSHourCalendarUnit:指定小时单位\nNSMinuteCalendarUnit:指定分单位\nNSSecondCalendarUnit:指定秒单位\nNSWeekCalendarUnit:指定周单位\nNSWeekdayCalendarUnit:指定工作日单位\nNSWeekdayOrdinalCalendarUnit:指定普通工作日单位\nNSQuarterCalendarUnit:将日历的四分之一指定为kcf日历秒。在OS X v104.6中，这被定义为等于kcf日历。在macOS 10.7中，它被定义为(1小于20)\nNSWeekOfMonthCalendarUnit:指定一个月日历单元的原始周\nNSWeekOfYearCalendarUnit:指定年度日历单元的原始周\nNSYearForWeekOfYearCalendarUnit:指定日历被解释为基于周的日历的年份\nNSCalendarCalendarUnit:指定日历的日历\nNSTimeZoneCalendarUnit:指定日历的时区作为一个NSTimeZone";
        [constantArr addObject:model68];
        
        WyhModel *model69 = [WyhModel new];
        model69.firstName = @"NSCalendarOptions";
        model69.secondName = @"包括日历的算术操作的选项。\n例子：NSCalendarWrapComponents:指定为一个nsdatecomponent对象指定的组件应该被增加，并将其缠绕到溢出的0/1上，但是不应该导致更高的单元被增加\nNSCalendarMatchStrictly:指定操作应该尽可能向前或向后移动，以查找匹配的匹配项\nNSCalendarSearchBackwards:指定操作应该向后移动以查找给定日期之前的匹配\nNSCalendarMatchPreviousTimePreservingSmallerUnits:指定当在给定的nsdatecomponent对象中指定的下一个最高单元的下一个实例结束之前没有匹配的时间，这个方法将使用丢失单元的先前的值，并保留较低单元的值\nNSCalendarMatchNextTimePreservingSmallerUnits:指定当在给定的nsdatecomponent对象中指定的下一个最高单元的下一个实例结束之前没有匹配的时间时，该方法将使用缺失单元的下一个现有值，并保留较低单元的值\nNSCalendarMatchNextTime:指定当在给定的nsdatecomponent对象中指定的下一个最高单元的下一个实例结束之前没有匹配的时间时，该方法将使用缺失单元的下一个现有值，并且不保存较低单元的值\nNSCalendarMatchFirst:指定如果有两个或多个匹配时间，则操作应该返回第一次出现的情况\nNSCalendarMatchLast:指定如果有两个或多个匹配时间，则操作应该返回最后一个发生的事件\nNSWrapCalendarComponents:指定为一个nsdatecomponent对象指定的组件应该被增加，并将其包装到溢出的zero/one上，但是不应该导致更高的单元被增加。";
        [constantArr addObject:model69];
        
        [_dataArray addObject:constantArr];
    }
    return _dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.wyhTable];
    // Do any additional setup after loading the view.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.dataArray.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSMutableArray *arr = self.dataArray[section];
    return arr.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSArrayTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:templateCell];
    NSMutableArray *arr = self.dataArray[indexPath.section];
    cell.model = arr[indexPath.row];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableArray *arr = self.dataArray[indexPath.section];
    return [tableView cellHeightForIndexPath:indexPath model:arr[indexPath.row] keyPath:@"model" cellClass:[NSArrayTableViewCell class] contentViewWidth:SCREENMAINWIDTH];
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return self.titleArray[section];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 30;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    
    return 0.1;
}
-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    
    return self.titleArray;
}
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    
    return [self.titleArray indexOfObject:title];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
