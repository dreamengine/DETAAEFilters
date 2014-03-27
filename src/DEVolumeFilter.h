//
//  DEVolumeFilter.h
//  Praxis Beats
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AEAudioController.h"

@interface DEVolumeFilter : NSObject <AEAudioFilter>


// range is from 0.0f to 1.0f. Default is 1.0f.
@property (nonatomic) float volume;

@end
