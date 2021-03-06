# NOTE: This library has been [merged](https://github.com/TheAmazingAudioEngine/TheAmazingAudioEngine/commit/73559c31c5cfecb374d3af1b2041169ea10a50f5) directly into The Amazing Audio Engine. The DETAAEFilters repository is therefore deprecated and will no longer be maintained.


# ~~DETAAEFilters~~
[https://github.com/dreamengine/DETAAEFilters](https://github.com/dreamengine/DETAAEFilters)

## What It Does

NOTE: This library has been [merged](https://github.com/TheAmazingAudioEngine/TheAmazingAudioEngine/commit/73559c31c5cfecb374d3af1b2041169ea10a50f5) directly into The Amazing Audio Engine. The DETAAEFilters repository is therefore deprecated and will no longer be maintained.

~~`DETAAEFilters` simplifies getting basic audio filters up and running when using *The Amazing Audio Engine*. Instead of always using raw C and *CoreAudio* patterns, `DETAAEFilters` provides object wrappers for each of the audio filters provided by Apple. E.g. to apply a low-pass filter to a signal, you can simply instantiate `DELowPassFilter` and set its frequency and resonance values properties.~~

## How It Works

### Available Filters

Here is a list of available signal modifiers:

* Bandpass
* Delay
* Distortion
* Dynamics Processor
* Highpass
* High shelf
* Lowpass
* Low shelf
* New Time Pitch
* Parametric EQ
* Peak Limiter
* Reverb
* Varispeed


### Example

Below is an example of how to add reverb.

	-(void)someMethod {
		self.audioController =
		[[AEAudioController alloc] initWithAudioDescription: [AEAudioController nonInterleaved16BitStereoAudioDescription] inputEnabled: YES];
                                                                  
		...
	
		self.reverbFilter = [DEReverbFilter filterWithAudioController:self.audioController];
		self.reverbFilter.dryWetMix = 50.f;
	
		[self.audioController addFilter:self.reverbFilter];

		...
	}