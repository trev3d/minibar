#import <Cocoa/Cocoa.h>

@interface minibar : NSToolbar @end

@implementation minibar

+ (void)load {
    [[NSNotificationCenter defaultCenter] addObserver:self
        selector:@selector(applyCompact:)
        name:NSWindowDidBecomeMainNotification object:nil];
}

+ (void)applyCompact:(NSNotification *)n {
    NSWindow *w = n.object;

    if (!w.toolbar) return;
    if (![w isKindOfClass:[NSWindow class]]) return;

    [w setToolbarStyle:NSWindowToolbarStyleUnifiedCompact];
}

@end
