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
     [TTTableStyledTextItem itemWithText:[TTStyledText textFromXHTML:@"<div class='demo'><b>First baseline bug:</b> Baseline isn't properly lined up when there are different font sizes on a single line:</div>"]],
     [TTTableStyledTextItem itemWithText:[TTStyledText textFromXHTML:@"hello <span class='bigger'>hello</span> hello <span class='smaller'>hello</span> hello"]],
     [TTTableStyledTextItem itemWithText:[TTStyledText textFromXHTML:@"<div class='demo'><b>Second baseline bug:</b> When text wraps, baseline of last text block is way off:</div>"]],
     [TTTableStyledTextItem itemWithText:[TTStyledText textFromXHTML:@"hello <span class='bigger'>hello</span> hello <span class='smaller'>hello</span> one two three four five six seven eight"]],
     [TTTableStyledTextItem itemWithText:[TTStyledText textFromXHTML:@"<div class='demo'><b>Variation on second baseline bug:</b> When text contains a very long word:</div>"]],
     [TTTableStyledTextItem itemWithText:[TTStyledText textFromXHTML:@"hello <span class='bigger'>hello</span> hello <span class='smaller'>hello</span> onetwothreefourfivesixseveneightonetwothreefourfivesixseveneightonetwothreefourfivesixseveneightonetwothreefourfivesixseveneight"]],
      nil];
}

@end
