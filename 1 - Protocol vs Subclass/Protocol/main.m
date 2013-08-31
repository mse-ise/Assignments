#import "Square.m"
#import "Circle.m"
#import<Foundation/Foundation.h>
#include<stdio.h>

int main(int argc, const char *argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	id square, circle;
	double len = 10.123, rad = 23.121;
	square = [[Square alloc]init];
	circle = [[Circle alloc]init];
	[square setSide:len];
	[circle setRadius:rad];
	NSLog(@"The area of square with side %.3lf is %.3lf", [square side], [square area]);
	NSLog(@"The area of circle with radius %.3lf is %.3lf", [circle radius], [circle area]);	
	[pool drain];
	return 0;
}