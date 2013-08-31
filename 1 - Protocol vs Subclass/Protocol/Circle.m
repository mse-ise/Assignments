#import "Circle.h"
#import<math.h>

@implementation Circle

@synthesize radius;

-(double)area //has to be overriden as its inheriting a protocol
{
	return M_PI * radius * radius;
}

@end

