//
//  XYAlbumManager.h
//  XYAlbum
//
//  Created by liuxy on 2020/5/21.
//  Copyright © 2020 Golemon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYAlbumManagerDelegate.h"
#import "ALbumAssetModel.h"
#import "AlbumListController.h"


NS_ASSUME_NONNULL_BEGIN

@interface XYAlbumManager : NSObject<XYAlbumManagerDelegate>


+ (instancetype)shreManager;

- (void)setupInit:(AlbumListController *)listController;

@end

NS_ASSUME_NONNULL_END
