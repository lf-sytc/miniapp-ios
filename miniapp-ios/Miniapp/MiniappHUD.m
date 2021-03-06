//
//  MiniappHUD.m
//  miniapp-ios
//
//  Created by liufan on 2019/8/26.
//  Copyright © 2019年 uhutu. All rights reserved.
//

#import "MiniappHUD.h"
#import "MBProgressHUD.h"
@implementation MiniappHUD

+ (void)showMessage:(NSString *)message {
    
    [self showLoading:NO];
    
    UIView *view = [[UIApplication sharedApplication].windows lastObject];
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    hud.mode = MBProgressHUDModeText;
    hud.removeFromSuperViewOnHide = YES;
    hud.backgroundView.color = [UIColor clearColor];
    [hud hideAnimated:YES afterDelay:1.5];
}

+ (void)showLoading:(BOOL)show{
    
    UIWindow *view = [UIApplication sharedApplication].keyWindow;
    NSEnumerator *subviewsEnum = [view.subviews reverseObjectEnumerator];
    MBProgressHUD *hudView = nil;
    for (UIView *subview in subviewsEnum) {
        if ([subview isKindOfClass:[MBProgressHUD class]]) {
            hudView = (MBProgressHUD *)subview;
            [hudView hideAnimated:YES];
        }
    }
    
    if (show) {
        // 快速显示一个提示信息
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
        hud.mode = MBProgressHUDModeIndeterminate;
        hud.removeFromSuperViewOnHide =  YES;
    }
}


@end
