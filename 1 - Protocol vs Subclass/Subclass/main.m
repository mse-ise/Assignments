#import<Foundation/Foundation.h>
#import "Class_Super.m"
#import "Class_Sub.m"

int main(int argc, const char *argv[])
{
	id obj = [[Class_Super alloc]init];
	[obj print];
	[obj print2];
	obj = [[Class_Sub alloc]init];
	[obj print];
	return 0;
}