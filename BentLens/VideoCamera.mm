//
//  VideoCamera.mm
//  BentLens
//
//  Created by Rehan Shariff on 6/8/16.
//  Copyright © 2016 Stackhall Learning Services, LLC. All rights reserved.
//

/*
 *  cap_ios_video_camera.mm
 *  For iOS video I/O
 *  by Eduard Feicho on 29/07/12
 *  by Alexander Shishkov on 17/07/13
 *  by Stackhall Learning Services, LLC on 08/06/16
 *  Copyright 2012, 2016. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
 * EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 */

#import "VideoCamera.h"

@interface VideoCamera(NoRotation)

@property (nonatomic, retain) CALayer* customPreviewLayer;

@end

@implementation VideoCamera

- (void)updateOrientation {
    // This is purposefully blank since it overrides the superclass method
}

- (void)layoutPreviewLayer {
    if(self.parentView != nil) {
        CALayer* layer = self.customPreviewLayer;
        CGRect bounds = self.customPreviewLayer.bounds;
        layer.position = CGPointMake(self.parentView.frame.size.width/2, self.parentView.frame.size.height/2);
        layer.bounds = bounds;
    }
}

@end