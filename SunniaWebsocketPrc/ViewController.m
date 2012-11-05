//
//  ViewController.m
//  SunniaWebsocketPrc
//
//  Created by Shih Sunnia on 12/11/5.
//  Copyright (c) 2012年 Shih Sunnia. All rights reserved.
//

#import "ViewController.h"
#import "MyWebSocket.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize buttonRequest=_buttonRequest;
@synthesize textOutput=_textOutput;
@synthesize mws=_mws;

- (void)buttonRequestClickHandler:(id)sender {
    NSString *inputString = [[NSString alloc]initWithString:@"test"];
    [self.mws sendMessage:inputString];
    self.textOutput.text = [NSString stringWithFormat:@"Send:%@\n%@",inputString,self.textOutput.text];
    
    

}


- (void)viewDidLoad
{
    if(self.mws == nil){
        MyWebSocket *ws =  [[MyWebSocket alloc] init];
        [ws  startMyWebSocket:self];
        self.mws = ws;
    }
    
    //[mws startMyWebSocket];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (BOOL)ReciveMessage:(NSString*) aMessage
{
    self.textOutput.text = [NSString stringWithFormat:@"Receive:%@\n%@",aMessage,self.textOutput.text];
    return true;
}

@end
