<CsoundSynthesizer>
<CsOptions>
-n -d -m0d
</CsOptions>

<CsInstruments>
sr = 44100 
ksmps = 32
nchnls = 2
0dbfs = -1

// Sine
giSine  ftgen   0, 0, 2^10, 10, 1

instr SYNTH
    kTempo          chnget "tempo"

    kSine           chnget "sine"
    kSquare         chnget "square"
    kSaw            chnget "saw"
    kTriangle       chnget "triangle"

    kSineFreq       chnget "sineFreq"
    kSquareFreq     chnget "squareFreq"
    kSawFreq        chnget "sawFreq"
    kTriangleFreq   chnget "triangleFreq"

    kSineAmpl       chnget "sineAmpl"
    kSquareAmpl     chnget "squareAmpl"
    kSawAmpl        chnget "sawAmpl"
    kTriangleAmpl   chnget "triangleAmpl"

    ; while kSine == 1 do
    ;     event "i", "SINE", 0, 1, kSineFreq, kSineAmpl
    ; od

    if (changed(kSine) == 1) then
        event "i", "SINE", 0, 1, kSineFreq, kSineAmpl
    endif

    if (changed(kSquare) == 1) then
        event "i", "SQUARE", 0, 1, kSquareFreq, kSquareAmpl
    endif

    if (changed(kSaw) == 1) then
        event "i", "SAW", 0, 1, kSawFreq, kSawAmpl
    endif
    
    if (changed(kTriangle) == 1) then
        event "i", "TRIANGLE", 0, 1, kTriangleFreq, kTriangleAmpl
    endif
endin

instr SINE
    // Parameters
    kFreq = p4
    kAmpl = p5
    
    // Create initial wave
    aSinO   poscil kAmpl, kFreq, giSine              ;aSin Output
    
    outs    aSinO, aSinO
endin

instr SQUARE
    // Parameters
    kFreq = p4
    kAmpl = p5
    
    // Create initial wave
    aSinO   poscil kAmpl, kFreq, giSine              ;aSin Output
    
    outs    aSinO, aSinO
endin

instr SAW
    // Parameters
    kFreq = p4
    kAmpl = p5
    
    // Create initial wave
    aSinO   poscil kAmpl, kFreq, giSine              ;aSin Output
    
    outs    aSinO, aSinO
endin

instr TRIANGLE
    // Parameters
    kFreq = p4
    kAmpl = p5
    
    // Create initial wave
    aSinO   poscil kAmpl, kFreq, giSine              ;aSin Output
    
    outs    aSinO, aSinO
endin

; instr ADD
;     // Create initial wave
;     aSinO   poscil kAmp, kFreq, giSine              ;aSin Output

;     kIndx = 1

;     loop:
;     aSinL   poscil kAmp / kIndx, kFreq * kIndx, giSine          ;aSin Loop
;     aSinO = aSinO + aSinL
;     loop_lt kIndx, kInc, kInc * kItr, loop

;     // Stereo output
;     outs    aSinO, aSinO
; endin
</CsInstruments>

<CsScore>
i"SYNTH"   0  [3600 * 12]
</CsScore>
</CsoundSynthesizer>