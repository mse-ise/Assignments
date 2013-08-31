#import "Circle.h"
#import<math.h>

@implementation Circle

@synthesize radius;

-(double)area
{
	return M_PI * radius * radius;
}

@end

