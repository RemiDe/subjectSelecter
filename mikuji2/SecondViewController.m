//
//  SecondViewController.m
//  mikuji2
//
//  Created by Ryu I on 2014/11/06.
//  Copyright (c) 2014年 Remi. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    
    /*if(mikuji==1){
        lesurt.text=[NSString stringWithFormat:@"国語"];
        lesurt.textColor=[UIColor redColor];
    }else if(mikuji==2){
        lesurt.text=[NSString stringWithFormat:@"数学"];
        lesurt.textColor=[UIColor blueColor];
    }else if(mikuji==3){
        lesurt.text=[NSString stringWithFormat:@"英語"];
    }else if(mikuji==4){
        lesurt.text=[NSString stringWithFormat:@"理科"];
        lesurt.textColor=[UIColor yellowColor];
    }else{
        lesurt.text=[NSString stringWithFormat:@"社会"];
        lesurt.textColor=[UIColor greenColor];
    }
*/
    
    one.delegate=self;
    two.delegate=self;
    three.delegate=self;
    four.delegate=self;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    //キーボードを消す
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)modoru{
    mikuji=0;
    number=0;
    jikan=0;
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)kimeru{
    jikan=arc4random_uniform(8);
    
    NSMutableArray *section = [NSMutableArray array];
    if ([one.text length]!=0) {
        [section addObject:one.text];
    }
    if([two.text length]!=0){
        [section addObject:two.text];
    }
    if([three.text length]!=0){
        [section addObject:three.text];
    }
    if([four.text length]!=0){
        [section addObject:four.text];
    }
     setkind = rand() % [section count];
    
    resultStr=[section objectAtIndex:setkind];
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
