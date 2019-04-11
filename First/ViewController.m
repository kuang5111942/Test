//
//  ViewController.m
//  First
//
//  Created by kuang on 2019/2/3.
//  Copyright © 2019 kuang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _myLabel.text = @"mylab";
    _myLabel.textColor = UIColor.redColor;
    
    self.strA = [NSMutableString stringWithString:@"pro"];
    self.strB = self.strA;
    NSLog(@"Memory location of \n a = %p, \n b = %p", self.strA, self.strB);
    // 断点1位置
    
    // 2.指针a指向字符串pro648
//    a = @"pro648";
//    NSString *b = @"123";
//    a = b;
    [self.strA appendString:@"123"];
//    self.strA = [NSMutableString stringWithString:@"123"];
    NSLog(@"Memory location of \n a = %p, \n b = %p", self.strA, self.strB);
    // 断点2位置
    NSLog(@"%@,%@",self.strA, self.strB);
    
    [self urlForDocumentDirectoryWithPathComponent:@"controlStateComponent"];
    
}

- (NSURL *)urlForDocumentDirectoryWithPathComponent:(NSString *)pathComponent {
    NSURL *documentDirectory = [[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask].firstObject;
    NSLog(@"documentDirectory = %@", documentDirectory);
    NSLog(@"documentDirectory2 = %@", [documentDirectory URLByAppendingPathComponent:pathComponent]);

    return [documentDirectory URLByAppendingPathComponent:pathComponent];
}

- (IBAction)myButton:(UIButton *)sender {
    _myLabel.textColor = UIColor.greenColor;

}
@end
