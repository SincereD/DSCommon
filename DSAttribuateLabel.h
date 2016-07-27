//
//  DSAttribuateLabel.h
//  YFMapKit
//
//  Created by Sincere on 16/6/27.
//  Copyright © 2016年 Sincere. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DSAttribuateLabel : UILabel

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
          attribuateTextColor:(NSArray*)attribuateTextColor;

@end
