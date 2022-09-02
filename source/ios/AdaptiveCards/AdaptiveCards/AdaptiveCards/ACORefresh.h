//
//  ACORefresh
//  ACORefresh.h
//
//  Copyright © 2021 Microsoft. All rights reserved.
//

#import <AdaptiveCards/ACOBaseActionElement.h>
#import <Foundation/Foundation.h>

@interface ACORefresh : NSObject

@property ACOBaseActionElement *action;
@property NSArray<NSString *> *userIds;

- (instancetype)init:(ACOBaseActionElement *)action userIds:(NSArray<NSString *> *)userIds;

@end
