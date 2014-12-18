//
//  ViewController.m
//  mikuji2
//
//  Created by Ryu I on 2014/11/06.
//  Copyright (c) 2014年 Remi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    label.hidden=YES;
    label.text=[NSString stringWithFormat:@"こいつのプロフィール\n名前:こいつ　性別:男子\n年齢:13歳　体長:10cm\n「あいつ」と「そいつ」という\n友達がいる。寝ていたところを\nつっつかれて起きた。"];
}

-(IBAction)koitsu{
    number=number+1;
    if(number%2==0){
        label.hidden=YES;
    }else
        label.hidden=NO;
}


/*-(IBAction)hiku{
    mikuji=arc4random_uniform(5);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}*/

@end
