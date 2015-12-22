//
//  LFSelectionView.h
//  LFSelectionView
//
//  Created by LiuFeng on 15/12/22.
//  Copyright © 2015年 LiuFeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LFSelectionView : UIView
+ (instancetype)selectionViewWith:(NSArray *)titles views:(NSArray *)views origin:(CGPoint)origin;
@end
