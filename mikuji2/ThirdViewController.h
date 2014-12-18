//
//  ThirdViewController.h
//  mikuji2
//
//  Created by Ryu I on 2014/11/20.
//  Copyright (c) 2014年 Remi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController{
    IBOutlet UILabel *time;
    IBOutlet UILabel *result;
    
    int min;
    int sec;
    
    IBOutlet UILabel *minLabel;
    IBOutlet UILabel *secLabel;
    
    NSTimer *timer;
}

-(IBAction)reset;
-(IBAction)startTimer;

@end
