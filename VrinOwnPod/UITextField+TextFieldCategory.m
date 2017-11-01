//
//  UITextField+TextFieldCategory.m
//  SHIPD
//
//  Created by Nick on 17/10/17.
//  Copyright © 2017 Krishna. All rights reserved.
//

#import "UITextField+TextFieldCategory.h"

@implementation UITextField (TextFieldCategory)


-(void)setLeftViewWithImageName:(UIImage*)imageToSet{
    

    UIView *viewMain=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 30, self.frame.size.height)];

    UIImageView *imgView = [[UIImageView alloc] init];
    imgView.image = imageToSet;
    [imgView sizeToFit];
    [viewMain addSubview:imgView];
    
    imgView.center=CGPointMake(viewMain.center.x-10, viewMain.center.y);
    
    
//    UIImageView *lineImage = [[UIImageView alloc] init];
//    lineImage.image = [UIImage imageNamed:@"verticle_line"];
//    [lineImage sizeToFit];
//    [viewMain addSubview:lineImage];
//    lineImage.frame=CGRectMake(lineImage.frame.origin.x, lineImage.frame.origin.y, lineImage.frame.size.width, lineImage.frame.size.height-8);
//    
//    lineImage.center=CGPointMake(40, viewMain.center.y);
    self.leftView=viewMain;
    [self setLeftViewMode:UITextFieldViewModeAlways];
    [self setRightViewMode:UITextFieldViewModeNever];
    


}

@end
