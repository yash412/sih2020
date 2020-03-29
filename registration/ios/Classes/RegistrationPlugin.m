#import "RegistrationPlugin.h"
#if __has_include(<registration/registration-Swift.h>)
#import <registration/registration-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "registration-Swift.h"
#endif

@implementation RegistrationPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRegistrationPlugin registerWithRegistrar:registrar];
}
@end
