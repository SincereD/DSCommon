//
//  DSAttribuateLabel.m
//  YFMapKit
//
//  Created by Sincere on 16/6/27.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import "DSAttribuateLabel.h"
#import "UIColor+YFHexColor.h"

@implementation DSAttribuateLabel

/**
 *  富文本标签
 *
 *  @param frame               Frame
 *  @param txt                 整体内容
 *  @param attribuateText      需要突出显示的文字
 *  @param attribuateTextColor 需要突出显示的文字颜色
 *
 *  两个数组长度必须一致
 *  @return Instance
 */
- (instancetype)initWithFrame:(CGRect)frame
                         text:(NSString*)txt
               attribuateText:(NSArray*)attribuateText
          attribuateTextColor:(NSArray*)attribuateTextColor
{
    if (self = [super initWithFrame:frame])
    {
        NSMutableAttributedString * attribuateStr = [[NSMutableAttributedString alloc] initWithString:txt];
        for (int i = 0; i<attribuateText.count; i++)
        {
            NSString * str = attribuateText[i];
            UIColor * color = attribuateTextColor[i];
            [attribuateStr addAttribute:NSForegroundColorAttributeName value:color range:[txt rangeOfString:str]];
        }
        [self setText:txt];
        [self setTextColor:[UIColor whiteColor]];
        [self setAttributedText:attribuateStr];
    }
    return self;
}

@end
