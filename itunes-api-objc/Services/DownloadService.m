//
//  DownloadService.m
//  itunes-api-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import "DownloadService.h"
#import "Download.h"

@implementation DownloadService

static NSDictionary<NSURL *, Download *> *activeDownloads;

+(void)setActiveDownloads:(NSDictionary<NSURL *,Download *> *)activeDownloads {
  activeDownloads = [activeDownloads copy];
}

+ (NSDictionary<NSURL *,Download *> *)activeDownloads {
  return activeDownloads;
}

- (void)cancelDownload:(Track *)track {
  
}

- (void)resumelDownload:(Track *)track {
  
}

- (void)pauseDownload:(Track *)track {
  
}

- (void)startDownload:(Track *)track {
  
}
@end
