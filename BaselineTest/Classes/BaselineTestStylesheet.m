#import "BaselineTestStylesheet.h"

@implementation BaselineTestStylesheet

- (TTStyle*)bigger {
  return [TTTextStyle styleWithFont:[UIFont systemFontOfSize:36] next:nil];
}

- (TTStyle*)smaller {
  return [TTTextStyle styleWithFont:[UIFont systemFontOfSize:7] next:nil];
}

@end

