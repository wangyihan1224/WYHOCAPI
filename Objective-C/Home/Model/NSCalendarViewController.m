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
        [_titleArray addObject:@"System Locale Information"];
        [_titleArray addObject:@"Creating and Initializing Calendars"];
        [_titleArray addObject:@"Getting Information About a Calendar"];
        [_titleArray addObject:@"Calendrical Calculations"];
        [_titleArray addObject:@"Comparing Dates"];
        [_titleArray addObject:@"Extracting Components"];
    }
    return _titleArray;
}
-(NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
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
        
        [_dataArray addObject:extracArr];
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
