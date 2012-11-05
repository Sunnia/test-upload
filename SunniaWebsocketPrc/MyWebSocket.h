//
//  MyWebSocket.h
//  SunniaWebsocketPrc
//
//  Created by Shih Sunnia on 12/11/5.
//  Copyright (c) 2012年 Shih Sunnia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WebSocket.h"

@interface MyWebSocket : NSObject<WebSocketDelegate>
{
    
@private WebSocket* ws;
}
@property (nonatomic, readonly) WebSocket* ws;
@property (nonatomic, strong) UIViewController* parent;


- (void) startMyWebSocket:(UIViewController *)parent;
- (void) sendMessage :(NSString*) aMessage;

@end
