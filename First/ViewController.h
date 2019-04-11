//
//  ViewController.h
//  First
//
//  Created by kuang on 2019/2/3.
//  Copyright © 2019 kuang. All rights reserved.
//

#import <UIKit/UIKit.h>

int i = 10;

@interface ViewController : UIViewController

@property (strong, nonatomic) NSMutableString *strA;
@property (strong, nonatomic) NSMutableString *strB;

@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)myButton:(UIButton *)sender;

@end

