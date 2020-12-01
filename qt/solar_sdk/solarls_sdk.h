#pragma once

#include <windows.h>

enum ShutterState
{
	SHUTTER_STATE_Unknown = 0,
	SHUTTER_STATE_Open = 1,
	SHUTTER_STATE_Close = 2 
};

enum InstrumentStatus
{
	INSTRUMENT_STATUS_BUSY = 0, // executing command 
	INSTRUMENT_STATUS_READY = 1, //ready to execute command like set wavelength
	INSTRUMENT_STATUS_ERROR = 2, //internal error occurred (instrument not powered, limit switch triggered etc.)
};

enum SdkLogLevel
{
	SDKLOGLEVEL_OFF = 0,
	SDKLOGLEVEL_TRACE = 1,
	SDKLOGLEVEL_DEBUG = 2,
	SDKLOGLEVEL_INFO = 3,
	SDKLOGLEVEL_WARN = 4,
	SDKLOGLEVEL_ERROR = 5,
	SDKLOGLEVEL_FATAL = 6,
};

#ifdef __cplusplus
extern "C"
{
#endif
	//---- WARNING 
	//				- .Net framework v4.0 must be installed
	//				- Don't forget copy your instrument configuration to appropriate path. (e.g. to your app folder if you call sls_Init(NULL))
	//				- All provided functions NOT thread safe.
	
	//All functions returns boolean value (except sls_GetLastErrorText). 0 - failed. non zero - success

	//----------------------------------------   Common instrument functions
#if 1
	//initialize the library. Must be called only once before any library function.
	// configPath - path where we load instrument configuration(s). Instrument configuration is xml file provided by manufacturer e.g. 'InstrumentCfg.xml' or 'M150 SM21.xml' and so forth.
	// in case configPath is NULL or empty string then configurations will be loaded from current folder
	// configPath encoding must be default OS encoding
	extern int sls_Init(char* configPath);

	//get amount of available instruments (does not matter it is powered or not)
	// count - pointer to variable where amount of loaded instrument configurations will be copied. "loaded instrument configurations" = amount of instruments
	extern int sls_GetInstrumentCount(int* count);
	
	//Get instrument name.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// nameBuf - buffer where instrument name will be copied
	// bufSize - size of nameBuf (amount of characters in buffer)
	extern int sls_GetInstrumentName(int instrumentIdx, char* nameBuf, int bufSize);

	//Get instrument serial number.
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// serialBuf - buffer where instrument serial number will be copied
	// bufSize - size of serialBuf (amount of characters in buffer)
	extern int sls_GetInstrumentSerial(int instrumentIdx, char* serialBuf, int bufSize);
#endif

	//----------------------------------------   Wavelength Control
#if 1
	//Set wavelength using current active grating.
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// wl - wavelength (nanometers)
	extern int sls_SetWl(int instrumentIdx, double wl);
	extern int sls_SetWlAsync(int instrumentIdx, double wl); //same as sls_SetWl but runs asynchronously

	//Get current wavelength.
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// wl - pointer to variable where wavelength will be saved
	extern int sls_GetWl(int instrumentIdx, double* wl);

	//Answer to question: Can we set this wavelength using current active grating?
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// wl - wavelength we want to set.
	// isValid - pointer to boolean variable where result will be saved. 0 - can't set, otherwise - yes we can.
	extern int sls_IsValidWl(int instrumentIdx, double wl, int* isValid);

	//The same as sls_IsValidWlGrating but for any grating
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// wl - wavelength we want to set.
	// gratingIdx - index/number of grating. Value must be from 0 to count-1 (see sls_GetGratingCount)
	// isValid - pointer to boolean variable where result will be saved. 0 - can't set, otherwise - yes we can.
	extern int sls_IsValidWlGrating(int instrumentIdx, int gratingIdx, double wl, int* isValid);
#endif

	//----------------------------------------   Slit(s) Control
#if 1
	//Get slits count for instrument.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of slits will be saved.
	extern int sls_GetSlitCount(int instrumentIdx, int* count);

	//Get slit name.
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// slitIdx - index of slit. Its value must be from 0 to count-1 (see sls_GetSlitCount)
	// nameBuf - buffer where 'human readable' slit name will be saved
	// bufSize - size of nameBuf (amount of characters in buffer)
	extern int sls_GetSlitName(int instrumentIdx, int slitIdx, char* nameBuf, int bufSize);

	//Set slit width
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// slitIdx - index of slit. Its value must be from 0 to count-1 (see sls_GetSlitCount)
	// width - required width of slit (micrometers)
	// resetRequired - if true(1) then we move slit to benchmark point and only then set width.
	extern int sls_SetSlitWidth(int instrumentIdx, int slitIdx, double width, int resetRequired);
	extern int sls_SetSlitWidthAsync(int instrumentIdx, int slitIdx, double width, int resetRequired); //same as sls_SetSlitWidth but runs asynchronously
	
	//Get slit width
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// slitIdx - index of slit. Its value must be from 0 to count-1 (see sls_GetSlitCount)
	// width - pointer to variable where width of slit will be saved.
	extern int sls_GetSlitWidth(int instrumentIdx, int slitIdx, double* width);
#endif

	//----------------------------------------   Mirror(s) Control
#if 1
	//Get mirror count for instrument.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of mirrors will be saved.
	extern int sls_GetMirrorCount(int instrumentIdx, int* count);

	//Get 'human readable' mirror name. Something like "Entrance mirror" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// mirrorIdx - index/number of mirror. Its value must be from 0 to count-1 (see sls_GetMirrorCount)
	// nameBuf - pointer to buffer where mirror name will be saved. Encoding like OS default encoding.
	// bufSize - size of nameBuf buffer
	extern int sls_GetMirrorName(int instrumentIdx, int mirrorIdx, char* nameBuf, int bufSize);

	//Get mirror states count for mirror. Usually states count = 2. E.g. "Exit 1", "Exit 2"
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// mirrorIdx - index/number of mirror. Its value must be from 0 to count-1 (see sls_GetMirrorCount)
	// count - pointer to variable where amount of mirror states will be saved.
	extern int sls_GetMirrorStateCount(int instrumentIdx, int mirrorIdx, int* count);

	//Get 'human readable' mirror state name. Something like "Exit 1", "Exit 2" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// mirrorIdx - index/number of mirror. Its value must be from 0 to count-1 (see sls_GetMirrorCount)
	// stateIdx - index/number of mirror state. Its value must be from 0 to count-1 (see sls_GetMirrorStateCount)
	// nameBuf - pointer to buffer where state name will be saved. Encoding like OS default encoding.
	// bufSize - size of nameBuf buffer
	extern int sls_GetMirrorStateName(int instrumentIdx, int mirrorIdx, int stateIdx, char* nameBuf, int bufSize);
	
	//Get index/number of current mirror state.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// mirrorIdx - index/number of mirror. Its value must be from 0 to count-1 (see sls_GetMirrorCount)
	// stateIdx - pointer to variable where state index will be saved
	extern int sls_GetMirrorStateIdx(int instrumentIdx, int mirrorIdx, int* stateIdx);

	//Set mirror state.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// mirrorIdx - index/number of mirror. Its value must be from 0 to count-1 (see sls_GetMirrorCount)
	// stateIdx - index/number of mirror state. Its value must be from 0 to count-1 (see sls_GetMirrorStateCount)
	// resetRequired - if true(1) then we go to benchmark point and only then set the mirror state. Otherwise just go to mirror state.
	extern int sls_SetMirrorStateIdx(int instrumentIdx, int mirrorIdx, int stateIdx, int resetRequired);
	extern int sls_SetMirrorStateIdxAsync(int instrumentIdx, int mirrorIdx, int stateIdx, int resetRequired); //same as sls_SetMirrorStateIdx but runs asynchronously
#endif

	//----------------------------------------   Filter Wheels(s) Control
#if 1
	//Get filter wheels count for instrument.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of filters will be saved.
	extern int sls_GetFilterCount(int instrumentIdx, int* count);

	//Get 'human readable' filter wheel name. Something like "Filter 1" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter wheel. Its value must be from 0 to count-1 (see sls_GetFilterCount)
	// nameBuf - pointer to buffer where filter name will be saved. Encoding like OS default encoding.
	// bufSize - size of nameBuf buffer
	extern int sls_GetFilterName(int instrumentIdx, int filterIdx, char* nameBuf, int bufSize);

	//Get filter wheel states count for filter. 
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter. Its value must be from 0 to count-1 (see sls_GetFilterCount)
	// count - pointer to variable where amount of mirror states will be saved.
	extern int sls_GetFilterStateCount(int instrumentIdx, int filterIdx, int* count);

	//Get 'human readable' filter wheel state name. Something like "Filter 1", "Filter 2" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter. Its value must be from 0 to count-1 (see sls_GetFilterCount)
	// stateIdx - index/number of filter state. Its value must be from 0 to count-1 (see sls_GetFilterStateCount)
	// nameBuf - pointer to buffer where state name will be saved. Encoding like OS default encoding.
	// bufSize - size of nameBuf buffer
	extern int sls_GetFilterStateName(int instrumentIdx, int filterIdx, int stateIdx, char* nameBuf, int bufSize);

	//Get filter bandwidth for this state. 
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter. Its value must be from 0 to count-1 (see sls_GetFilterCount)
	// stateIdx - index/number of filter state. Its value must be from 0 to count-1 (see sls_GetFilterStateCount)
	// minWl, maxWl - pointer to variable where filter bandwidth will be saved
	extern int sls_GetFilterStatePrm(int instrumentIdx, int filterIdx, int stateIdx, int* minWl, int* maxWl);
	
	//Get index/number of current filter wheel state.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter wheel. Its value must be from 0 to count-1 (see sls_GetFilterCount)
	// stateIdx - pointer to variable where state index will be saved
	extern int sls_GetFilterStateIdx(int instrumentIdx, int filterIdx, int* stateIdx);

	//Set index/number of current filter wheel state.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter wheel. Its value must be from 0 to count-1 (see sls_GetFilterCount)
	// stateIdx - index/number of filter wheel state. Its value must be from 0 to count-1 (see sls_GetFilterStateCount)
	// resetRequired - if true(1) then we go to benchmark point and only then set the filter state. Otherwise just go to filter state.
	extern int sls_SetFilterStateIdx(int instrumentIdx, int filterIdx, int filterStateIdx, int resetRequired);
	extern int sls_SetFilterStateIdxAsync(int instrumentIdx, int filterIdx, int filterStateIdx, int resetRequired); //same as sls_SetFilterStateIdx but runs asynchronously
#endif

	//----------------------------------------   Shutter(s) Control
#if 1
	//Get shutter count for instrument.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of shutters will be saved.
	extern int sls_GetShutterCount(int instrumentIdx, int* count);

	//Get 'human readable' shutter name. Something like "Entrance shutter 1" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// shutterIdx - index/number of shutter. Its value must be from 0 to count-1 (see sls_GetShutterCount)
	// nameBuf - pointer to buffer where shutter name will be saved. Encoding like OS default encoding.
	// bufSize - size of nameBuf buffer
	extern int sls_GetShutterName(int instrumentIdx, int shutterIdx, char* nameBuf, int bufSize);

	//Open shutter
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// shutterIdx - index/number of shutter. Its value must be from 0 to count-1 (see sls_GetShutterCount)
	extern int sls_ShutterOpen(int instrumentIdx, int shutterIdx);
	extern int sls_ShutterOpenAsync(int instrumentIdx, int shutterIdx);

	//Close shutter
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// shutterIdx - index/number of shutter. Its value must be from 0 to count-1 (see sls_GetShutterCount)
	extern int sls_ShutterClose(int instrumentIdx, int shutterIdx);
	extern int sls_ShutterCloseAsync(int instrumentIdx, int shutterIdx);

	//Get shutter state. 
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// shutterIdx - index/number of shutter. Its value must be from 0 to count-1 (see sls_GetShutterCount)
	// state - pointer to ShutterState enum where shutter state will be saved
	extern int sls_GetShutterState(int instrumentIdx, int shutterIdx, ShutterState* state);
#endif

	//----------------------------------------   Grating(s) Control
#if 1	
	//Get grating count for instrument.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of gratings will be saved.
	extern int sls_GetGratingCount(int instrumentIdx, int* count);

	//Get active grating index/number.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// gratingIdx - pointer to variable where gratingIdx will be saved
	extern int sls_GetActiveGrating(int instrumentIdx, int* gartingIdx);

	//Set/select active grating.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// gratingIdx - index/number of grating. Its value must be from 0 to count-1 (see sls_GetGratingCount)
	extern int sls_SetActiveGrating(int instrumentIdx, int gratingIdx);
	extern int sls_SetActiveGratingAsync(int instrumentIdx, int gratingIdx); //same as sls_SetActiveGrating but runs asynchronously
	
	//Get grating parameters.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// gratingIdx - index/number of grating. Its value must be from 0 to count-1 (see sls_GetGratingCount)
	// grooves - grooves per mm
	// minWl - minimal wavelength for grating (e.g. 200 nm)
	// minWl - maximal wavelength for grating (e.g. 600 nm)
	// blazeAngle - blaze angle of grating (e.g. 250 nm)
	extern int sls_GetGratingPrm(int instrumentIdx, int gratingIdx, int* grooves, double* minWl, double* maxWl, double* blazeAngle);

	//Get wavelength of individual pixel on camera sensor using active grating.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// centralWl - wavelength on camera sensor central pixel. Usually it is equal to value returned by sls_GetWl function
	// centralPixel - central pixel of your camera sensor (You may try to find it in camera/sensor manual). 
	// pixelPitch - pixel pitch or pixel size of camera sensor. E.g. 8um, 14um etc. You must pass it like micrometers i.e. if pixel pitch = 8 it must be 8, but not 0.000008
	// pixelNum - index/number of pixel you want to find wavelength
	// wl - pointer to variable where value of wavelength will be saved
	extern int sls_GetPixelClbr(int instrumentIdx, double centralWl, int centralPixel, double pixelPitch, int pixelNum, double* wl);

	//Get wavelength of several pixel on camera sensor using active grating. It is the same as sls_GetPixelClbr but return wavelength values for pixelCount pixels.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// centralWl - wavelength on camera sensor central pixel. Usually it is equal to value returned by sls_GetWl function
	// centralPixel - central pixel of your camera sensor (You may try to find it in camera/sensor manual). 
	// pixelPitch - pixel pitch or pixel size of camera sensor. E.g. 8um, 14um etc. You must pass it like micrometers i.e. if pixel pitch = 8 it must be 8, but not 0.000008
	// pixelCount - amount of pixels you want to find wavelengths
	// clbr - pointer to array of variables where values of wavelength will be saved. Array size must be equal to pixelCount
	extern int sls_GetCalibration(int instrumentIdx, double centralWl, int centralPixel, double pixelPitch, int pixelCount, double* clbr);

	//Get dispersion of active grating for current wavelength.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// dispersion - pointer to variable where value of dispersion will be saved.
	extern int sls_GetDispersion(int instrumentIdx, double* dispersion);

	//Reset active grating i.e. move it to benchmark position.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	extern int sls_ResetGrating(int instrumentIdx);
	extern int sls_ResetGratingAsync(int instrumentIdx); //same as sls_ResetGrating but runs asynchronously
	
	//Reset active grating i.e. move it to benchmark position and then set required wavelength.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// wl - wavelength you want to set
	extern int sls_ResetSetGrating(int instrumentIdx, double wl);
	extern int sls_ResetSetGrating(int instrumentIdx, double wl); //same as sls_ResetSetGrating but runs asynchronously
#endif	

	//----------------------------------------   Beam Expander(s)
#if 1
	//Get beam expander count for instrument.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of beam expanders will be saved.
	extern int sls_GetBeamExpanderCount(int instrumentIdx, int* count);

	//Get 'human readable' beam expander name. Something like "Beam Expander 1" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// expanderIdx - index/number of beam expander. Its value must be from 0 to count-1 (see sls_GetBeamExpanderCount)
	// buf - pointer to buffer where beam expander name will be saved. Encoding like OS default encoding.
	// bufSize - size of buf buffer
	extern int sls_GetBeamExpanderName(int instrumentIdx, int expanderIdx, char* buf, int bufSize);

	//Get count of predefined wavelengths for beam expander. Each wavelength has associated list of predefined ray diameters. All of it defined on configuration file
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// expanderIdx - index/number of beam expander. Its value must be from 0 to count-1 (see sls_GetBeamExpanderCount)
	// count -  pointer to variable where amount of diameters will be saved.
	extern int sls_GetBeamExpanderWavelengthCount(int instrumentIdx, int expanderIdx, int* count);

	//Get beam expander wavelength value and count of associated ray diameters.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// expanderIdx - index/number of beam expander. Its value must be from 0 to count-1 (see sls_GetBeamExpanderCount)
	// wavelengthIdx - index/number of wavelength. Its value must be from 0 to count-1 (see sls_GetBeamExpanderWavelengthCount)
	// wl - pointer to variable where wavelength value will be saved.
	// diameterCount - pointer to variable where amount of associated diameters will be saved.
	extern int sls_GetBeamExpanderWavelength(int instrumentIdx, int expanderIdx, int wavelengthIdx, double* wl, int* diameterCount);

	//Get beam expander ray diameter value for appropriate wavelength.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// expanderIdx - index/number of beam expander. Its value must be from 0 to count-1 (see sls_GetBeamExpanderCount)
	// wavelengthIdx - index/number of wavelength. Its value must be from 0 to count-1 (see sls_GetBeamExpanderWavelengthCount)
	// diameterIdx - index/number of ray diameter. Its value must be from 0 to diameterCount-1 (see sls_GetBeamExpanderWavelength)
	// diameter - pointer to variable where diameter value will be saved.
	extern int sls_GetBeamExpanderDiameter(int instrumentIdx, int expanderIdx, int wavelengthIdx, int diameterIdx, double* diameter);

	//Get beam expander current wavelength and ray diameter.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// expanderIdx - index/number of beam expander. Its value must be from 0 to count-1 (see sls_GetBeamExpanderCount)
	// wavelengthIdx - pointer to variable where index of selected wavelength will be saved.
	// diameterIdx - pointer to variable where index of selected diameter will be saved.
	extern int sls_GetBeamExpanderState(int instrumentIdx, int expanderIdx, int* wavelengthIdx, int* diameterIdx);

	//Set beam expander wavelength and ray diameter.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// expanderIdx - index/number of beam expander. Its value must be from 0 to count-1 (see sls_GetBeamExpanderCount)
	// wavelengthIdx - index of target wavelength. Its value must be from 0 to count-1 (see sls_GetBeamExpanderWavelengthCount)
	// diameterIdx - index of target diameter. Its value must be from 0 to diameterCount-1 (see sls_GetBeamExpanderWavelength)
	// resetRequired
	extern int sls_SetBeamExpanderState(int instrumentIdx, int expanderIdx, int wavelengthIdx, int diameterIdx, int resetRequired);
	extern int sls_SetBeamExpanderStateAsync(int instrumentIdx, int expanderIdx, int wavelengthIdx, int diameterIdx, int resetRequired);  //same as sls_SetBeamExpanderState but runs asynchronously
#endif

	//----------------------------------------   Lenses
#if 1

	//Get lens(objective) count for instrument. Each lens may be positioned in 3 coordinates x, y, focus.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of lens(objectives) will be saved.
	extern int sls_GetLensCount(int instrumentIdx, int* count);

	//Get 'human readable' lens name. Something like "Lens 1" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// lensIdx - index/number of lens. Its value must be from 0 to count-1 (see sls_GetLensCount)
	// buf - pointer to buffer where beam expander name will be saved. Encoding like OS default encoding.
	// bufSize - size of buf buffer
	extern int sls_GetLensName(int instrumentIdx, int lensIdx, char* buf, int bufSize);

	//Set X position of lens.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// lensIdx - index/number of lens. Its value must be from 0 to count-1 (see sls_GetLensCount)
	// pos - position value
	// resetRequired - if true(1) then we go to benchmark point and only then set x position. Otherwise just go to x position.
	extern int sls_SetLensX(int instrumentIdx, int lensIdx, double pos, int resetRequired);
	extern int sls_SetLensXAsync(int instrumentIdx, int lensIdx, double pos, int resetRequired); //same as sls_SetLensX but runs asynchronously

	//Set Y position of lens.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// lensIdx - index/number of lens. Its value must be from 0 to count-1 (see sls_GetLensCount)
	// pos - position value
	// resetRequired - if true(1) then we go to benchmark point and only then set y position. Otherwise just go to y position.
	extern int sls_SetLensY(int instrumentIdx, int lensIdx, double pos, int resetRequired);
	extern int sls_SetLensYAsync(int instrumentIdx, int lensIdx, double pos, int resetRequired);//same as sls_SetLensY but runs asynchronously

	//Set focus position of lens.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// lensIdx - index/number of lens. Its value must be from 0 to count-1 (see sls_GetLensCount)
	// pos - position value
	// resetRequired - if true(1) then we go to benchmark point and only then set focus position. Otherwise just go to focus position.
	extern int sls_SetLensFocus(int instrumentIdx, int lensIdx, double pos, int resetRequired);
	extern int sls_SetLensFocusAsync(int instrumentIdx, int lensIdx, double pos, int resetRequired);//same as sls_SetLensFocus but runs asynchronously

	//Get lens current positions.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// lensIdx - index/number of lens. Its value must be from 0 to count-1 (see sls_GetLensCount)
	// x - pointer to variable where x position will be saved.
	// y - pointer to variable where y position will be saved.
	// focus - pointer to variable where focus position will be saved.
	extern int sls_GetLensPos(int instrumentIdx, int lensIdx, double* x, double* y, double* focus);

	//Get count of predefined states for lens(objective). Each state it is three values: x, y, focus defined in configuration file.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// lensIdx - index/number of lens. Its value may be from 0 to lens count-1 (see sls_GetLensCount function)
	// count - pointer to variable where amount of lens states will be saved.
	extern int sls_GetLensStateCount(int instrumentIdx, int lensIdx, int* count);

	//Get name of predefined lens state. 
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// lensIdx - index/number of lens. Its value may be from 0 to lens count-1 (see sls_GetLensCount function)
	// stateIdx - index/number of lens state. Must be between 0 - stateCount-1. See sls_GetLensStateCount function
	// buf - pointer to buffer where state name will be saved. Encoding like OS default encoding.
	// bufSize - size of buffer
	extern int GetLensStateName(int instrumentIdx, int lensIdx, int stateIdx, char* buf, int bufSize);

	//Set lens coordinates (x,y,focus) to values defined in lens state
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// lensIdx - index/number of lens. Its value may be from 0 to lens count-1 (see sls_GetLensCount function)
	// stateIdx - index/number of lens state. Must be between 0 - stateCount-1. See sls_GetLensStateCount function
	// resetRequired - if true(1) then we go to benchmark point and only then set x,y,focus positions. Otherwise just go to positions.
	extern int SetLensState(int instrumentIdx, int lensIdx, int stateIdx, int resetRequired);
	extern int SetLensStateAsync(int instrumentIdx, int lensIdx, int stateIdx, int resetRequired);//same as sls_SetLensState but runs asynchronously

#endif // 1

	//----------------------------------------  ND Filter(s)
#if 1
	//Get ND Filter count for instrument. 
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of filters will be saved.
	extern int sls_GetNdFilterCount(int instrumentIdx, int* count);

	//Get 'human readable' ND filter name. Something like "ND Filter 1" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter. Its value must be from 0 to count-1 (see sls_GetNdFilterCount)
	// buf - pointer to buffer where filter name will be saved. Encoding like OS default encoding.
	// bufSize - size of buf buffer
	extern int sls_GetNdFilterName(int instrumentIdx, int filterIdx, char* buf, int bufSize);

	//Set position of ND Filter (percents usually).
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter. Its value must be from 0 to count-1 (see sls_GetNdFilterCount)
	// pos - position value
	// resetRequired - if true(1) then we go to benchmark point and only then set the position. Otherwise just go to position.
	extern int sls_SetNdFilter(int instrumentIdx, int filterIdx, double pos, int resetRequired);
	extern int sls_SetNdfilterAsync(int instrumentIdx, int filterIdx, double pos, int resetRequired);//same as sls_SetNdFilter but runs asynchronously

	//Get position of ND Filter (percents usually).
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// filterIdx - index/number of filter. Its value must be from 0 to count-1 (see sls_GetNdFilterCount)
	// pos - pointer to variable where filter position will be saved.
	extern int sls_GetNdfilterState(int instrumentIdx, int filterIdx, double* pos);
#endif

	//----------------------------------------  Polarizers
#if 1	
	//Get Polarizer count for instrument. Each polarizer has several predefined filters and selected filter can be rotated to some angle.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of polarizers will be saved.
	extern int sls_GetPolarizerCount(int instrumentIdx, int* count);

	//Get 'human readable' polarizer name. Something like "Polarizer 1" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetPolarizerCount function)
	// polarizerIdx - index/number of polarizer. Its value must be from 0 to count-1 (see sls_GetPolarizerCount)
	// buf - pointer to buffer where polarizer name will be saved. Encoding like OS default encoding.
	// bufSize - size of buf buffer
	extern int sls_GetPolarizerName(int instrumentIdx, int polarizerIdx, char* buf, int bufSize);

	//Get Polarizer filter count for instrument. 
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// polarizerIdx - index/number of polarizer. Its value must be from 0 to count-1 (see sls_GetPolarizerCount)
	// count - pointer to variable where amount of filters will be saved.
	extern int sls_GetPolarizerFilterCount(int instrumentIdx, int polarizerIdx, int* count);

	//Get 'human readable' polarizer filter name. Something like "423" etc.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetPolarizerCount function)
	// polarizerIdx - index/number of polarizer. Its value must be from 0 to count-1 (see sls_GetPolarizerCount)
	// filterIdx - index/number of polarizer. Its value must be from 0 to count-1 (see sls_GetPolarizerFilterCount)
	// buf - pointer to buffer where polarizer name will be saved. Encoding like OS default encoding.
	// bufSize - size of buf buffer
	extern int sls_GetPolarizerFilterName(int instrumentIdx, int polarizerIdx, int filterIdx, char* buf, int bufSize);

	//Select polarizer filter.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// polarizerIdx - index/number of polarizer. Its value must be from 0 to count-1 (see sls_GetPolarizerCount)
	// filterIdx - index/number of filter. Its value must be from 0 to count-1 (see sls_GetPolarizerCount)
	// resetRequired - if true(1) then we go to benchmark point and only then set the position. Otherwise just go to position.
	extern int sls_SetPolarizerFilter(int instrumentIdx, int polarizerIdx, int filterIdx, int resetRequired);
	extern int sls_SetPolarizerFilterAsync(int instrumentIdx, int polarizerIdx, int filterIdx, int resetRequired);//same as sls_SetPolarizerFilter but runs asynchronously

	//Set polarizer filter angle (degrees).
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// polarizerIdx - index/number of polarizer. Its value must be from 0 to count-1 (see sls_GetPolarizerCount)
	// filterIdx - index/number of filter. Its value must be from 0 to count-1 (see sls_GetPolarizerCount)
	// angle - value of angle
	// resetRequired - if true(1) then we go to benchmark point and only then set the angle. Otherwise just go to angle.
	extern int sls_SetPolarizerAngle(int instrumentIdx, int polarizerIdx, double angle, int resetRequired);
	extern int sls_SetPolarizerAngleAsync(int instrumentIdx, int polarizerIdx, double angle, int resetRequired);//same as sls_SetPolarizerAngle but runs asynchronously

	//Get selected polarizer filter and its angle.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// polarizerIdx - index/number of polarizer. Its value must be from 0 to count-1 (see sls_GetPolarizerCount)
	// filterIdx - pointer to variable where selected filter index will be saved.
	// angle - pointer to variable where selected angle will be saved.
	extern int sls_GetPolarizerPos(int instrumentIdx, int polarizerIdx, int* filterIdx, double* angle);
#endif

	//----------------------------------------   Glan(s) Control
#if 1
	//Get glan count for instrument.
	// instrumentIdx - index/number of instrument. Its value may be from 0 to count-1 (see sls_GetInstrumentCount function)
	// count - pointer to variable where amount of glan items will be saved.
	extern int sls_GetGlanCount(int instrumentIdx, int* count);

	//Get glan item name.
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// glanIdx - index of slit. Its value must be from 0 to count-1 (see sls_GetGlanCount)
	// nameBuf - buffer where 'human readable' slit name will be saved
	// bufSize - size of nameBuf (amount of characters in buffer)
	extern int sls_GetGlanName(int instrumentIdx, int glanIdx, char* nameBuf, int bufSize);

	//Set glan position
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// glanIdx - index of glan item. Its value must be from 0 to count-1 (see sls_GetGlanCount)
	// pos - required position (degrees)
	// resetRequired - if true(1) then we move glan item to benchmark point and only then set position.
	extern int sls_SetGlanPos(int instrumentIdx, int glanIdx, double pos, int resetRequired);
	extern int sls_SetGlanPosAsync(int instrumentIdx, int glanIdx, double pos, int resetRequired); //same as sls_SetGlanPos but runs asynchronously
	
	//Get glan item position
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// glanIdx - index of glan item. Its value must be from 0 to count-1 (see sls_GetGlanCount)
	// pos - pointer to variable where position of glan item will be saved.
	extern int sls_GetGlanPos(int instrumentIdx, int glanIdx, double* pos);
#endif

	//Get instrument status. See definition of InstrumentStatus enum.
	extern int sls_GetInstrumentStatus(int instrumentIdx, InstrumentStatus* status);
	
	//Get last error text. If any of function return 0 you may call it function to find reason of the trouble.
	// errBuff - buffer where text will be saved. Encoding as OS default encoding
	// bufSize - size of errBuf
	extern void sls_GetLastErrorText(char* errBuf, int bufSize);

	//Get error text for instrument in case sls_GetInstrumentStatus returned INSTRUMENT_STATUS_ERROR. 
	// instrumentIdx - index/number of instrument. Its value may be form 0 to count-1 (see sls_GetInstrumentCount function)
	// errBuff - buffer where text will be saved. Encoding as OS default encoding
	// bufSize - size of errBuf
	extern int sls_GetInstrumentErrorText(int instrumentIdx, char* errBuf, int bufSize);

	//Turn on or off logging.
	// sdkLevel - may be Off, Trace, Info, Debug, Warn, Error, Fatal (see SdkLogLevel enumeration)
	// file - file name e.g. "C:\temp\mylog.log". encoding must be default OS encoding
	extern int sls_SetLogging(SdkLogLevel sdkLevel, char* file);
	
#ifdef __cplusplus
}
#endif
