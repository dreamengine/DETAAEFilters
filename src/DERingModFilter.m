//
//  DERingModFilter.m
//  Praxis Beats
//
//  Created by Jeremy Flores on 6/2/13.
//  Copyright (c) 2013 Dream Engine Interactive, Inc. All rights reserved.
//

#import "DERingModFilter.h"

@interface DERingModFilter () {
    @public
    float _frequency;
    float _phase;
}

@end

@implementation DERingModFilter

@dynamic frequency;

-(id) init {
    if (self=[super init]) {
        self.frequency = 1.f;
        _phase = 0.f;
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

    DERingModFilter *ringModFilter = (DERingModFilter *)filter;
    float frequency = ringModFilter->_frequency;
    float phase = ringModFilter->_phase;
    
    for (int frame=0; frame<frames; frame++) {
        float value = sin(phase * M_PI * 2);

        ((float*)audio->mBuffers[0].mData)[frame] *= value;
        ((float*)audio->mBuffers[1].mData)[frame] *= value;

        phase += 1.f / (44100.f / frequency);
        if (phase > 1.f) {
            phase = -1.f;
        }
    }

    ringModFilter->_phase = phase;
    
    return noErr;
}

-(AEAudioControllerFilterCallback)filterCallback {
    return filterCallback;
}

-(float)frequency {
    return _frequency;
}

-(void)setFrequency:(float)frequency {
    _frequency = frequency;
}

@end
