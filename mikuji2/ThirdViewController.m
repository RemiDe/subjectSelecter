//
//  ThirdViewController.m
//  mikuji2
//
//  Created by Ryu I on 2014/11/20.
//  Copyright (c) 2014年 Remi. All rights reserved.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"
#import "ViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if(jikan==1){
        time.text=[NSString stringWithFormat:@"1時間"];
        min=60;
        sec=0;
    }else if(jikan>=2&&jikan<=3){
        time.text=[NSString stringWithFormat:@"50分"];
        min=50;
        sec=0;
    }else if(jikan>=4&&jikan<=6){
        time.text=[NSString stringWithFormat:@"30分"];
        min=30;
        sec=0;
    }else if(jikan>=7&&jikan<=8){
        time.text=[NSString stringWithFormat:@"20分"];
        min=20;
        sec=0;
    }
    result.text=[NSString stringWithFormat:resultStr];
    
    minLabel.text=[NSString stringWithFormat:@"%d",min];
    secLabel.text=[NSString stringWithFormat:@"%d",sec];
}

-(IBAction)startTimer{
    if(![timer isValid]){
    timer=[NSTimer scheduledTimerWithTimeInterval:1
                                       target:self
                                     selector:@selector(up)
                                     userInfo:nil
                                      repeats:YES
           ];
    }
       }

-(void)up{
    sec=sec-1;
    if(min==0&&sec==0){
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"メッセージ"
                                                      message:@"終了"
                                                     delegate:nil
                                            cancelButtonTitle:nil
                                            otherButtonTitles:@"OK",nil
                            ];
        [alert show];
        [timer invalidate];
    }
    
    if(sec<0){
        sec=59;
        min=min-1;
    }
    minLabel.text=[NSString stringWithFormat:@"%d",min];
    secLabel.text=[NSString stringWithFormat:@"%d",sec];
}

-(IBAction)reset{
    mikuji=0;
    number=0;
    jikan=0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
