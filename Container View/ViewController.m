//
//  ViewController.m
//  Container View
//
//  Created by Aaqib Hussain on 11/03/2016.
//  Copyright © 2016 Aaqib Hussain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)first:(id)sender {
  //  self.container = [[ContainerViewController alloc]init];
    [self.container segueIdentifierReceivedFromParent:@"buttonOne"];
    
    
}
- (IBAction)second:(id)sender {
   // self.container = [[ContainerViewController alloc]init];
    [self.container segueIdentifierReceivedFromParent:@"buttonTwo"];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
   
    //  vc = [[UIViewController alloc]init];
    // Make sure your segue name in storyboard is the same as this line
    
    if ([[segue identifier] isEqual: @"container"]){
    
        self.container = (ContainerViewController *)[segue destinationViewController];
        
       
       
      
        
    }
}




@end
