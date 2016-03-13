//
//  ContainerViewController.m
//  Container View
//
//  Created by Aaqib Hussain on 11/03/2016.
//  Copyright © 2016 Aaqib Hussain. All rights reserved.
//

#import "ContainerViewController.h"


@implementation ContainerViewController
-(void) viewDidLoad{
    
   [self segueIdentifierReceivedFromParent:@"buttonOne"];
    


}


-(void)segueIdentifierReceivedFromParent:(NSString*)button{

    if ([button  isEqual: @"buttonOne"]){
    
        
        self.segueIdentifier = @"first";
        [self performSegueWithIdentifier:self.segueIdentifier sender:nil];
        
    }
    else if ([button  isEqual: @"buttonTwo"]){
        
        
        self.segueIdentifier = @"second";
        [self performSegueWithIdentifier:self.segueIdentifier sender:nil];
    }
}

    - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
        UIViewController  *lastViewController, *vc;
      //  vc = [[UIViewController alloc]init];
        // Make sure your segue name in storyboard is the same as this line
    
        if ([[segue identifier] isEqual: self.segueIdentifier]){
                if(lastViewController != nil){
            [lastViewController.view removeFromSuperview];
        
        
        }
        
            
            // Get reference to the destination view controller
          vc = (UIViewController *)[segue destinationViewController];
            [self addChildViewController:(vc)];
             
             
         vc. view.frame  = CGRectMake(0,0, self.view.frame.size.width , self.view.frame.size.height);
            
             [self.view addSubview:vc.view];
            lastViewController = vc;
            // Pass any objects to the view controller here, like...
            
        }
    }








@end
