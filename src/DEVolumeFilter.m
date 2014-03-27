//
//  DEVolumeFilter.m
//  Praxis Beats
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEVolumeFilter.h"
#import <Accelerate/Accelerate.h>

@interface DEVolumeFilter () {
    @public
    float _volume;
}

@end

@implementation DEVolumeFilter

@dynamic volume;

-(id)init {
    if (self=[super init]) {
        self.volume = 1.f;
    }
    
    return self;
}

static OSStatus filterCallback (id                        filter,
                                AEAudioController        *audioController,
                                AEAudioControllerFilterProducer producer,
                                void                     *producerToken,
                                const AudioTimeStamp     *time,
                                UInt32                    frames,
                                AudioBufferList          *audio) {
    // Pull audio
    OSStatus status = producer(producerToken, audio, &frames);
    if ( status != noErr ) return status;

    DEVolumeFilter *volumeFilter = (DEVolumeFilter *)filter;
    float volume = volumeFilter->_volume;

    vDSP_vsmul((float*)audio->mBuffers[0].mData,
               1,
               &volume,
               (float*)audio->mBuffers[0].mData,
               1,
               frames);

    vDSP_vsmul((float*)audio->mBuffers[1].mData,
               1,
               &volume,
               (float*)audio->mBuffers[1].mData,
               1,
               frames);

    return noErr;
}

-(AEAudioControllerFilterCallback)filterCallback {
    return filterCallback;
}

-(float)volume {
    return _volume;
}

-(void)setVolume:(float)volume {
    _volume = volume;
}

@end
