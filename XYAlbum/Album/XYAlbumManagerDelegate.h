//
//  XYAlbumManagerDelegate.h
//  XYAlbum
//
//  Created by liuxy on 2020/5/21.
//  Copyright © 2020 Golemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ALbumAssetModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol XYAlbumManagerDelegate <NSObject>

// 获取相册列表
- (NSMutableArray *)albumManageList;

- (ALbumAssetModel *)albumListModel:(NSInteger )index;

//- (void)addDelegate:(id<XYAlbumManagerDelegate>)delegate;

@end

NS_ASSUME_NONNULL_END
