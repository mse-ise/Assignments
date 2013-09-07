#import<Foundation/Foundation.h>
#include<stdlib.h>
#include<time.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSTimeInterval interval = 24*60*60, random = 0;
	NSDate *today = [NSDate date];
	NSMutableArray *dates = [[NSMutableArray alloc]init];
	NSDictionary *days = [NSDictionary dictionaryWithObjectsAndKeys:
	             				@"sunday", [NSNumber numberWithInteger:1],
	             				@"monday", [NSNumber numberWithInteger:2],
	             				@"tuesday", [NSNumber numberWithInteger:3],
	             				@"wednesday", [NSNumber numberWithInteger:4],
	             				@"thurday", [NSNumber numberWithInteger:5],
	             				@"friday", [NSNumber numberWithInteger:6],
	             				@"saturday", [NSNumber numberWithInteger:7], nil];
	
	//today's date
	NSLog(@"Today's date: %@", today);
	NSDate *dayAfterTomorrow = [[NSDate alloc] initWithTimeIntervalSinceNow:interval*2];
	
	//day after tomorrow's date
	NSLog(@"Day after tomorrow's date: %@", dayAfterTomorrow);
	
	//last thursday's date
	NSCalendar *gregorian = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
   NSDateComponents *comps = [gregorian components:NSWeekdayCalendarUnit fromDate:today];
   int weekday = [comps weekday];
	if(weekday>5)
	{
 		interval = 24*3600*(weekday-5);
	}
	else
	{
		interval = 24*3600*(7-weekday);
	}
	NSDate *lastThursday = [[NSDate date] addTimeInterval:-interval];
   NSLog(@"Last Thursday's date: %@",lastThursday);
	
	//finding earlies date among a given set of dates
	int i=0;
	interval = 24*3600; 
	NSDate *d = nil;
	NSLog(@"All the dates: \n");
	for(i=0;i<5;i++)
	{
		random = interval* (rand()%5);
		d = [[NSDate alloc] initWithTimeIntervalSinceNow:random];
		[dates addObject:d];
		NSLog(@"%@", d);
	}
	NSDate *earliestDate = nil;
	for(id entry in dates)
	{
		//NSLog(entry);
		if(earliestDate == nil)
		{
			earliestDate = entry;
		}
		else if([earliestDate compare:entry] == NSOrderedDescending)
		{
			earliestDate = entry;
		}
	}
	NSLog(@"The earliest date among the above given dates: %@", earliestDate);
	
	
	//findinf tenth day of the month given the first day
	id firstDayOfMonth = [NSNumber numberWithInteger:3];
	int tenthDay = ([firstDayOfMonth intValue]+2)%7;
	id tenthDayOfMonth = [NSNumber numberWithInteger:tenthDay];
	NSLog(@"First day of the month is %@, then tenth day is %@", 
							[days objectForKey:firstDayOfMonth], [days objectForKey:tenthDayOfMonth]);
	
	[pool release];
	return 0;
}
	