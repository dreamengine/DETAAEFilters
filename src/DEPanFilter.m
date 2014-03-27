//
//  DEPanFilter.m
//  Praxis Beats
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DEPanFilter.h"

@interface DEPanFilter () {
    @public
    float _pan;
}

@end


@implementation DEPanFilter

@dynamic pan;

-(id) init {
    if (self=[super init]) {
        self.pan = 0.f;
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
    
    DEPanFilter *panFilter = (DEPanFilter *)filter;
    float pan = panFilter->_pan;

    for (int frame=0; frame<frames; frame++) {
        float leftMultiplier;
        float rightMultiplier;
        if (pan <= 0.f) {
            leftMultiplier = 1.f;
            rightMultiplier = ((pan/2)+0.5)*2.0;
        }
        else {
            leftMultiplier = (1.0-((pan/2)+0.5))*2.0;
            rightMultiplier = 1.f;
        }
        ((float*)audio->mBuffers[0].mData)[frame] *= leftMultiplier;//(0.5f-pan/2);
        ((float*)audio->mBuffers[1].mData)[frame] *= rightMultiplier;//(0.5f+pan/2);
    }
    
    return noErr;
}


-(AEAudioControllerFilterCallback)filterCallback {
    return filterCallback;
}

-(float)pan {
    return _pan;
}

-(void)setPan:(float)pan {
    _pan = pan;
}

@end
