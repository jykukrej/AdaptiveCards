//
//  ACRIMeida
//  ACRIMeida.h
//
//  Copyright © 2018 Microsoft. All rights reserved.
//

#import <AdaptiveCards/ACOAdaptiveCard.h>
#import <AdaptiveCards/ACOMediaEvent.h>
#import <AVKit/AVKit.h>
#import <UIKit/UIKit.h>

@protocol ACRMediaDelegate <NSObject>

- (void)didFetchMediaViewController:(AVPlayerViewController *)controller card:(ACOAdaptiveCard *)card;

@optional
- (void)didFetchMediaEvent:(ACOMediaEvent *)mediaElement card:(ACOAdaptiveCard *)card;

@end
