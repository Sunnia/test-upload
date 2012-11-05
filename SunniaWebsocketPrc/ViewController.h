//
//  ViewController.h
//  SunniaWebsocketPrc
//
//  Created by Shih Sunnia on 12/11/5.
//  Copyright (c) 2012年 Shih Sunnia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyWebSocket.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *buttonRequest;
@property (strong, nonatomic) IBOutlet UITextView *textOutput;
@property MyWebSocket *mws;



- (IBAction)buttonRequestClickHandler:(id)sender;

- (BOOL)ReciveMessage:(NSString*) aMessage;


@end
