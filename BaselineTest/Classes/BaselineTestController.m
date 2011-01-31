#import "BaselineTestController.h"

@implementation BaselineTestController

- (id) initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
  if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    self.variableHeightRows = YES;
  }
  return self;
}

- (void) createModel {
    self.dataSource =
      [TTListDataSource dataSourceWithObjects:
       [TTTableStyledTextItem itemWithText:[TTStyledText textFromXHTML:@"hello <span class='bigger'>hello</span> hello <span class='smaller'>hello</span> hello"]],
        nil];
}

@end

