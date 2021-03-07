#import "NcutBbsApiPlugin.h"
#if __has_include(<ncut_bbs_api/ncut_bbs_api-Swift.h>)
#import <ncut_bbs_api/ncut_bbs_api-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ncut_bbs_api-Swift.h"
#endif

@implementation NcutBbsApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNcutBbsApiPlugin registerWithRegistrar:registrar];
}
@end
