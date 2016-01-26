//
//  InterfaceController.h
//  Dice Roll WatchKit Extension
//
//  Created by Chaudhary Talha on 1/28/15.
//  Copyright (c) 2015 MindGem Studios. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController
{
    NSUserDefaults *noOfGame;
    
    int totalToss;
}
@property (weak, nonatomic) IBOutlet WKInterfaceImage *diceImage;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *diceLabel;

- (IBAction)rollButton;

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *totalRollNumber;

@end
