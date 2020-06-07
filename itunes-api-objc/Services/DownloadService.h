//
//  DownloadService.h
//  itunes-api-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Track.h"
#import "Download.h"

NS_ASSUME_NONNULL_BEGIN

@interface DownloadService : NSObject
@property (nonatomic, nonnull) NSURLSession *downloadsSession;
@property (class, nonatomic, copy) NSDictionary<NSURL *, Download *> *activeDownloads;
-(void) cancelDownload: (Track *) track;
-(void) pauseDownload: (Track *) track;
-(void) resumelDownload: (Track *) track;
-(void) startDownload: (Track *) track;
@end

NS_ASSUME_NONNULL_END
