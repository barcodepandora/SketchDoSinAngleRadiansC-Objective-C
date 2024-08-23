//
//  ViewController.m
//  SketchDoSinAngleRadians
//
//  Created by Juan Manuel Moreno on 23/08/24.
//

#import "ViewController.h"
#import "doSin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any [additional setup after loading the view.
    
    UIButton *doSin = [UIButton buttonWithType:UIButtonTypeSystem];
    [doSin setTitle:@"Do sin()" forState:UIControlStateNormal];
    [doSin addTarget:self action:@selector(doSin) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:doSin];
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    CGFloat butWidth = 200;
    CGFloat butHeight = 42;
    CGFloat x = (screenWidth - butWidth) / 2;
    CGFloat y = (screenHeight - butHeight) / 2;
    doSin.frame = CGRectMake(x, y, butWidth, butHeight);
}

-(void)doSin {
    NSLog(@"sin(30) = %f", calculateSin(30));
    /*calculateSin(30)*/;
}
@end
