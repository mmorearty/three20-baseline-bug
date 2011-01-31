#import <Three20/Three20.h>
#import "BaselineTestAppDelegate.h"
#import "BaselineTestStylesheet.h"
#import "BaselineTestController.h"

@implementation BaselineTestAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
  [TTStyleSheet setGlobalStyleSheet:[[[BaselineTestStylesheet alloc] init] autorelease]];
  
  TTNavigator* navigator = [TTNavigator navigator];
  navigator.persistenceMode = TTNavigatorPersistenceModeNone;
  
  TTURLMap* map = navigator.URLMap;
  
  [map from:@"tt://home" toViewController:[BaselineTestController class]];
  
  if (![navigator restoreViewControllers]) {
    [navigator openURLAction:[TTURLAction actionWithURLPath:@"tt://home"]];
  }
}

@end
