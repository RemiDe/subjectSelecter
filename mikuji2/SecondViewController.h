//
//  SecondViewController.h
//  mikuji2
//
//  Created by Ryu I on 2014/11/06.
//  Copyright (c) 2014年 Remi. All rights reserved.
//

NSString *resultStr;

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController<UITextFieldDelegate>{
    
    IBOutlet UITextField *one; //左上
    IBOutlet UITextField *two; //右上
    IBOutlet UITextField *three; //左下
    IBOutlet UITextField *four; //右下
    

}

-(IBAction)modoru;
-(IBAction)kimeru;

@end
