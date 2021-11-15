//
//  ViewController.m
//  Zadanie4SM
//
//  Created by Szymon Kozłowski on 08/11/2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self becomeFirstResponder];
    // Do any additional setup after loading the view.
}

- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if (motion == UIEventSubtypeMotionShake) {
        [self showShakeDetectedAlert];
    }
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (IBAction)showShakeDetectedAlert {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Shake gesture detected" message:@"Do you want to change the background color?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *yesButton = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        self.view.backgroundColor = [UIColor colorWithHue:drand48() saturation:1.0 brightness:1.0 alpha:1.0];
    }];
    
    UIAlertAction *noButton = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        NSLog(@"User clicked no button!");
    }];
    
    [alertController addAction:yesButton];
    [alertController addAction:noButton];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (IBAction)tapGesture:(UITapGestureRecognizer *)sender {
    _gestureLabel.text = @"Tap detected";
}

-(IBAction)pinchGesture:(UIPinchGestureRecognizer *)sender{
    _gestureLabel.text = @"Pinch detected";
}

-(IBAction)swipeGesture:(UISwipeGestureRecognizer *)sender{
    _gestureLabel.text = @"Swipe detected";
}

-(IBAction)longPressureGesture:(UILongPressGestureRecognizer *)sender{
    _gestureLabel.text = @"Long pressure detected";
}

@end
