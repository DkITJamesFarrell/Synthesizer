<CsoundSynthesizer>
<CsOptions>
-n -d -m0d
</CsOptions>

<CsInstruments>
sr = 44100 
ksmps = 32
nchnls = 2
0dbfs = 0

// Sine Generator
giSine   ftgen 1, 0, 16384, 10, 1

instr SYNTH

    kTempo      chnget "temp"
    kOsc        chnget "osc"

    kSin1       chnget "sin1"
    kSin2       chnget "sin2"
    kSin3       chnget "sin3"
    kSin4       chnget "sin4"

    kSin1Ampl   chnget "sin1Ampl"
    kSin2Ampl   chnget "sin2Ampl"
    kSin3Ampl   chnget "sin3Ampl"
    kSin4Ampl   chnget "sin4Ampl"

    kSin1Freq   chnget "sin1Freq"
    kSin2Freq   chnget "sin2Freq"
    kSin3Freq   chnget "sin3Freq"
    kSin4Freq   chnget "sin4Freq"

    kAtt        chnget "att"
    kDec        chnget "dec"
    kSus        chnget "sus"
    kRel        chnget "rel"

    ; Every Update
    if (metro(kTempo) == 1) then                                                            ; updates kTempo times per second

        ; For each oscillator, check to see if a value has 
        ; changed. If a value was changed, stop the previous oscillator
        ; and create a new instance using the updated values.

        ; Sin 1 Oscillator

        ; On/Off Switch
        if (changed(kSin1) == 1 && kOsc == 1) then                                          ; if active switch toggled, and oscillators active
            if (kSin1 == 1) then                                                            ; if oscillator active
                event "i",  1, 0, -10, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel         ; turn on instrument
            else                                                                            ; else
                event "i", -1, 0,   0, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel         ; turn off instrument
            endif                   
        endif

        ; Frequency Slider
        if (changed(kSin1Freq) == 1 && kSin1 == 1 && kOsc == 1) then                        ; if frequency changed, and this oscillator active, and all oscillators active
            event "i", -1, 0,   0, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel             ; stop previous instrument instance
            event "i",  1, 0, -10, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel             ; create new instrument instance with updated values
        endif

        ; Amplitude Slider
        if (changed(kSin1Ampl) == 1 && kSin1 == 1 && kOsc == 1) then                        ; if amplitude changed, and this oscillator active, and all oscillators active
            event "i", -1, 0,   0, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel             ; stop previous instrument instance
            event "i",  1, 0, -10, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel             ; create new instrument instance with updated values
        endif



        ; Sin 2 Oscillator

        ; On/Off Switch
        if (changed(kSin2) == 1 && kOsc == 1) then                                          ; if active switch toggled, and oscillators active
            if (kSin2 == 1) then                                                            ; if oscillator active
                event "i",  2, 0, -10, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel         ; turn on instrument
            else                                                                            ; else
                event "i", -2, 0,   0, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel         ; turn off instrument
            endif
        endif

        ; Frequency Slider
        if (changed(kSin2Freq) == 1 && kSin2 == 1 && kOsc == 1) then                        ; if frequency changed, and this oscillator active, and all oscillators active
            event "i", -2, 0,   0, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel             ; stop previous instrument instance
            event "i",  2, 0, -10, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel             ; create new instrument instance with updated values
        endif

        ; Amplitude Slider
        if (changed(kSin2Ampl) == 1 && kSin2 == 1 && kOsc == 1) then                        ; if amplitude changed, and this oscillator active, and all oscillators active
            event "i", -2, 0,   0, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel             ; stop previous instrument instance
            event "i",  2, 0, -10, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel             ; create new instrument instance with updated values
        endif



        ; Sin 3 Oscillator

        ; On/Off Switch
        if (changed(kSin3) == 1 && kOsc == 1) then                                          ; if active switch toggled, and oscillators active
            if (kSin3 == 1) then                                                            ; if oscillator active
                event "i",  3, 0, -10, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel         ; turn on instrument
            else                                                                            ; else
                event "i", -3, 0,   0, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel         ; turn off instrument
            endif
        endif

        ; Frequency Slider
        if (changed(kSin3Freq) == 1 && kSin3 == 1 && kOsc == 1) then                        ; if frequency changed, and this oscillator active, and all oscillators active
            event "i", -3, 0,   0, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel             ; stop previous instrument instance
            event "i",  3, 0, -10, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel             ; create new instrument instance with updated values
        endif

        ; Amplitude Slider
        if (changed(kSin3Ampl) == 1 && kSin3 == 1 && kOsc == 1) then                        ; if amplitude changed, and this oscillator active, and all oscillators active
            event "i", -3, 0,   0, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel             ; stop previous instrument instance
            event "i",  3, 0, -10, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel             ; create new instrument instance with updated values
        endif



        ; Sin 4 Oscillator

        ; On/Off Switch
        if (changed(kSin4) == 1 && kOsc == 1) then                                          ; if active switch toggled, and oscillators active
            if (kSin4 == 1) then                                                            ; if oscillator active
                event "i",  4, 0, -10, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel         ; turn on instrument
            else                                                                            ; else
                event "i", -4, 0,   0, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel         ; turn off instrument
            endif
        endif

        ; Frequency Slider
        if (changed(kSin4Freq) == 1 && kSin4 == 1 && kOsc == 1) then                        ; if frequency changed, and this oscillator active, and all oscillators active
            event "i", -4, 0,   0, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel             ; stop previous instrument instance
            event "i",  4, 0, -10, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel             ; create new instrument instance with updated values
        endif

        ; Amplitude Slider
        if (changed(kSin4Ampl) == 1 && kSin4 == 1 && kOsc == 1) then                        ; if amplitude changed, and this oscillator active, and all oscillators active
            event "i", -4, 0,   0, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel             ; stop previous instrument instance
            event "i",  4, 0, -10, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel             ; create new instrument instance with updated values
        endif



        ; Oscillators Switch
        
        ; If active switch toggled
        if (changed(kOsc) == 1) then                                                        ; if oscialltor switch toggled
            if (kOsc == 1) then                                                             ; if oscillators active
                if (kSin1 == 1) then                                                        ; turn on all active instruments
                    event "i",  1, 0, -10, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel
                endif

                if (kSin2 == 1) then
                    event "i",  2, 0, -10, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
                endif

                if (kSin3 == 1) then
                    event "i",  3, 0, -10, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
                endif
                
                if (kSin4 == 1) then
                    event "i",  4, 0, -10, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
                endif
            else                                                                            ; else
                event "i", -1, 0, 0, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel           ; turn off all instruments
                event "i", -2, 0, 0, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
                event "i", -3, 0, 0, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
                event "i", -4, 0, 0, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
            endif
        endif
    endif
endin

; Instruments

; Each instrument creates a simple sine wave using user-defined frequency
; and amplitude values. Additionally, ADSR values are applied to the instrument
; to simulate an envelope 

instr 1
    kFreq = p4
    kAmpl = p5

    iAtt = p6
    iDec = p7
    iSus = p8
    iRel = p9
    
    aOut   poscil kAmpl, kFreq, giSine
    aEnv   madsr iAtt, iDec, iSus, iRel

    outs   aOut * aEnv, aOut * aEnv
endin

instr 2
    kFreq = p4
    kAmpl = p5

    iAtt = p6
    iDec = p7
    iSus = p8
    iRel = p9
    
    aOut   poscil kAmpl, kFreq, giSine
    aEnv   madsr iAtt, iDec, iSus, iRel

    outs   aOut * aEnv, aOut * aEnv
endin

instr 3
    kFreq = p4
    kAmpl = p5

    iAtt = p6
    iDec = p7
    iSus = p8
    iRel = p9
    
    aOut   poscil kAmpl, kFreq, giSine
    aEnv   madsr iAtt, iDec, iSus, iRel

    outs   aOut * aEnv, aOut * aEnv
endin

instr 4
    kFreq = p4
    kAmpl = p5

    iAtt = p6
    iDec = p7
    iSus = p8
    iRel = p9
    
    aOut   poscil kAmpl, kFreq, giSine
    aEnv   madsr iAtt, iDec, iSus, iRel

    outs   aOut * aEnv, aOut * aEnv
endin
</CsInstruments>

<CsScore>
i"SYNTH"   0  [3600 * 120]
</CsScore>
</CsoundSynthesizer>