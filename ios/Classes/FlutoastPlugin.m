#import "FlutoastPlugin.h"
#if __has_include(<flutoast/flutoast-Swift.h>)
#import <flutoast/flutoast-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutoast-Swift.h"
#endif

@implementation FlutoastPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutoastPlugin registerWithRegistrar:registrar];
}
@end
