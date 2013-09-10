#import<Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSDictionary *units = [NSDictionary dictionaryWithObjectsAndKeys:
	             				[NSNumber numberWithInt:10], @"centimeter",
             					[NSNumber numberWithInt:40], @"pound",
             					[NSNumber numberWithInt:50], @"ounce",
            	 				[NSNumber numberWithInt:20], @"kilogram",
									[NSNumber numberWithInt:30], @"yard", 
									[NSNumber numberWithInt:10], @"millimeter",
									[NSNumber numberWithInt:10], @"kilometer", 
									[NSNumber numberWithInt:20], @"milligram", 
									[NSNumber numberWithInt:20], @"gram", 
									[NSNumber numberWithInt:10], @"meter", nil];

	NSLog(@"The dictionary items containing \"meter\":\n");
	for(NSString* key in units)
	{
		if ([key hasSuffix:@"meter"])
		{
			NSLog(@"Unit: %@, Value: %@\n", key, [units objectForKey:key]);
		}
	}
	[pool release];
	return 0;
}
