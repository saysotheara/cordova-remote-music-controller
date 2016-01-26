//
//  MainViewController+RemotePlayer.m
//  HelloApp
//
//  Created by Say Sotheara on 1/26/16.
//
//

#import "MainViewController+RemotePlayer.h"
#import "RemoteControls.h"

@implementation MainViewController (RemotePlayer)

- (void) viewDidLoad
{
    [[UIApplication sharedApplication] beginReceivingRemoteControlEvents];
    [[RemoteControls remoteControls] setWebView:self.webView];
}

- (void) viewDidUnload
{
    [[UIApplication sharedApplication] endReceivingRemoteControlEvents];
}

- (void) remoteControlReceivedWithEvent:(UIEvent *)event
{
    [[RemoteControls remoteControls] receiveRemoteEvent:event];
}

@end
