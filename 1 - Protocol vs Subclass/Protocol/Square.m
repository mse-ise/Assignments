#import "Square.h"

@implementation Square

-(void)setSide:(double)len
{
	side = [NSNumber numberWithDouble:len];
}

-(double)side
{
	return [side doubleValue];
}

-(double)area
{
	double value = [side doubleValue];
	return value * value;
}

@end