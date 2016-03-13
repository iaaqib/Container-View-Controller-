//
//  ViewController.h
//  Container View
//
//  Created by Aaqib Hussain on 11/03/2016.
//  Copyright © 2016 Aaqib Hussain. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContainerViewController.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *second;
@property (weak, nonatomic) IBOutlet UIButton *first;
@property ContainerViewController *container;
@end

