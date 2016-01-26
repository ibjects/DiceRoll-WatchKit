//
//  InterfaceController.m
//  Dice Roll WatchKit Extension
//
//  Created by Chaudhary Talha on 1/28/15.
//  Copyright (c) 2015 MindGem Studios. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    totalToss = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"totalR"];
    
    [[NSUserDefaults standardUserDefaults] setInteger:totalToss forKey:@"totalR"];
    [[NSUserDefaults standardUserDefaults] synchronize];

    // Configure interface objects here.
}

-(void)loadUserData
{
    //call this function in awakeWithContent if you want to save the value
    [[NSUserDefaults standardUserDefaults] setInteger:totalToss forKey:@"totalR"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)rollButton {
    int number = arc4random_uniform(6)+1;
    
    if (number==1) {
        totalToss++;
        self.totalRollNumber.text = [NSString stringWithFormat:@"Total Roll: %d",totalToss];
        self.diceLabel.text = [NSString stringWithFormat:@"ONE"];
        [self.diceImage setImageNamed:@"1.png"];
    }
    if (number==2) {
        totalToss++;
        self.totalRollNumber.text = [NSString stringWithFormat:@"Total Roll: %d",totalToss];
        self.diceLabel.text = [NSString stringWithFormat:@"TWO"];
        [self.diceImage setImageNamed:@"2.png"];
    }
    if (number==3) {
        totalToss++;
        self.totalRollNumber.text = [NSString stringWithFormat:@"Total Roll: %d",totalToss];
        self.diceLabel.text = [NSString stringWithFormat:@"THREE"];
        [self.diceImage setImageNamed:@"3.png"];
    }
    if (number==4) {
        totalToss++;
        self.totalRollNumber.text = [NSString stringWithFormat:@"Total Roll: %d",totalToss];
        self.diceLabel.text = [NSString stringWithFormat:@"FOUR"];
        [self.diceImage setImageNamed:@"4.png"];
    }
    if (number==5) {
        totalToss++;
        self.totalRollNumber.text = [NSString stringWithFormat:@"Total Roll: %d",totalToss];
        self.diceLabel.text = [NSString stringWithFormat:@"FIVE"];
        [self.diceImage setImageNamed:@"5.png"];
    }
    if (number==6) {
        totalToss++;
        self.totalRollNumber.text = [NSString stringWithFormat:@"Total Roll: %d",totalToss];
        self.diceLabel.text = [NSString stringWithFormat:@"SIX"];
        [self.diceImage setImageNamed:@"6.png"];
    }
}
@end



