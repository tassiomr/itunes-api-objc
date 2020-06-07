//
//  Download.h
//  itunes-api-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Track.h"

NS_ASSUME_NONNULL_BEGIN

@interface Download : NSObject
@property (nonnull, nonatomic) BOOL *isDownloading;
@property (nonnull, nonatomic) Float64 *progress;
@property (nonnull, nonatomic) NSData *resumeData;
@property (nonnull, nonatomic) NSURLSessionDownloadTask *task;
@property (nonnull, nonatomic) Track *track;

-(instancetype) initWithTrack: (Track *) track;
@end

NS_ASSUME_NONNULL_END
