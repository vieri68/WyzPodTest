//
//  UIView+WYZAdd.m
//  WyzPodTest
//
//  Created by wangyuanzhi on 2022/2/17.
//

#import "UIView+WYZAdd.h"

@implementation UIView (WYZAdd)
+ (instancetype)viewFromXib {
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    NSURL *url = [bundle URLForResource:@"WyzPodTestRes" withExtension:@"bundle"];
    NSBundle *resBundle = [NSBundle bundleWithURL:url];
    return [[resBundle loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}
@end
