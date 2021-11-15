//
//  ViewController.h
//  Zadanie4SM
//
//  Created by Szymon Kozłowski on 08/11/2021.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(weak, nonatomic) IBOutlet UILabel *gestureLabel;

-(IBAction)tapGesture:(UITapGestureRecognizer *)sender;
-(IBAction)pinchGesture:(UIPinchGestureRecognizer *)sender;
-(IBAction)swipeGesture:(UISwipeGestureRecognizer *)sender;
-(IBAction)longPressureGesture:(UILongPressGestureRecognizer *)sender;

@end

