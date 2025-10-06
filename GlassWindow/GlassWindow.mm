#import "GlassWindow.h"
#import <Cocoa/Cocoa.h>
#import <QScreen>
#import <QGuiApplication>
#import <QtWidgets/QMacNativeWidget>

@interface GlassVisualEffectView : NSVisualEffectView
@end

@implementation GlassVisualEffectView
- (BOOL)allowsVibrancy { return YES; }
@end

GlassWindow::GlassWindow(QWidget *parent)
    : QWidget(parent)
{
    setAttribute(Qt::WA_TranslucentBackground);
    setWindowFlags(Qt::Window | Qt::FramelessWindowHint | Qt::Tool);
//    setWindowFlags(Qt::Window | Qt::Tool);

    setGeometry(100, 100, 800, 600);

    NSView * contentView = (__bridge NSView *)reinterpret_cast<void *>(this->winId());

    GlassVisualEffectView *effectView = [[GlassVisualEffectView alloc]
    initWithFrame:[contentView bounds]];

    effectView.material = NSVisualEffectMaterialPopover;
    effectView.blendingMode = NSVisualEffectBlendingModeBehindWindow;
    effectView.state = NSVisualEffectStateActive;

    [contentView addSubview:effectView];

    [effectView setAutoresizingMask:NSViewWidthSizable | NSViewHeightSizable];
    [contentView setAutoresizesSubviews:YES];
}

void GlassWindow::showEvent(QShowEvent *event)
{
    QWidget::showEvent(event);

    this->raise();
    this->activateWindow();

    NSView * view = (__bridge NSView *)reinterpret_cast<void *>(this->winId());
    NSWindow *nsWindow = view.window;
    [nsWindow setCollectionBehavior:NSWindowCollectionBehaviorFullScreenAuxiliary];

    QRect screen = QGuiApplication::primaryScreen()->geometry();
    move(screen.center() - rect().center());
}

GlassWindow::~GlassWindow()
{
}
