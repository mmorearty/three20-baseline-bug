#import "BaselineTestStylesheet.h"

@implementation BaselineTestStylesheet

- (TTStyle*)bigger {
  return [TTTextStyle styleWithFont:[UIFont systemFontOfSize:36] next:nil];
}

- (TTStyle*)smaller {
  return [TTTextStyle styleWithFont:[UIFont systemFontOfSize:7] next:nil];
}

- (TTStyle*)demo {
  return [TTSolidFillStyle styleWithColor:[UIColor blueColor] next:
           [TTTextStyle styleWithColor:[UIColor whiteColor] next:nil]];
}

@end

