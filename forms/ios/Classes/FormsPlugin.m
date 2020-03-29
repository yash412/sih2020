#import "FormsPlugin.h"
#if __has_include(<forms/forms-Swift.h>)
#import <forms/forms-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "forms-Swift.h"
#endif

@implementation FormsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFormsPlugin registerWithRegistrar:registrar];
}
@end
