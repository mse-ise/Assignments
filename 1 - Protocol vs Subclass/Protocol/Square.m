#import "Square.h"

@implementation Square

-(void)setSide:(double)len
{
	side = [NSNumber numberWithDouble:len]; //side is of type id => its an object. so, it has to be initialized
}

-(double)side
{
	return [side doubleValue]; //to retrieve its value as it is used as double here
}

-(double)area //has to be overriden as its inheriting a protocol
{
	double value = [side doubleValue];
	return value * value; //return area
}

@end
