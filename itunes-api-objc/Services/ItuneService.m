//
//  ItuneService.m
//  itunes-api-objc
//
//  Created by Tassio Marcos Rocha on 06/06/20.
//  Copyright © 2020 Tassio Marcos Rocha. All rights reserved.
//

#import "ItuneService.h"

@implementation ItuneService

- (NSMutableArray<NSString *> *)getItunesMusic:(NSString *)query {
  NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration:NSURLSessionConfiguration.defaultSessionConfiguration];
  
  NSURLSessionDataTask *dataTask;
  [dataTask cancel];
  
  NSURLComponents *url = [NSURLComponents componentsWithString:@"https://itunes.apple.com/search"];
  
  url.query = [NSString stringWithFormat:@"media=music&entity=song&term=%@", query];
  
  dataTask = [defaultSession dataTaskWithURL:url.URL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
    
    if (error != nil) {
      self.errorMessage = [error localizedDescription];
    } else {
      dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"%@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
      });
    }
  }];
  
  [dataTask resume];
  
  return nil;
}

@end
