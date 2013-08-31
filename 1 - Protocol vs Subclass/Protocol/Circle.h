#import<Foundation/Foundation.h>
#import "Shape.h"

@interface Circle : NSObject <Shape>
{
	double radius;
}

@property double radius;

@end

