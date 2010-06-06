
@interface Error : NSError

extern NSString * const ISIErrorDomain;

enum {
	ISIErrorCannotGetCoordinate = -1
};

+ (Error *)errorWithCode:(int)code description:(NSString *)description;

@end
