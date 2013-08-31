#import<Foundation/Foundation.h>
#import "Shape.h"

@interface Square : NSObject <Shape>
{
	id side;
}

-(void)setSide:(double)len;
-(double)side;

@end

