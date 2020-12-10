<CsoundSynthesizer>
<CsOptions>
-n -d -m0d
</CsOptions>

<CsInstruments>
sr = 44100 
ksmps = 32
nchnls = 2
0dbfs = 0

// Sine
giSine  ftgen   0, 0, 2^10, 10, 1

instr SYNTH
    kTempo      chnget "temp"

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

    kEnv        chnget "env"
    kMst        chnget "mst"

    kAtt        chnget "att"
    kDec        chnget "dec"
    kSus        chnget "sus"
    kRel        chnget "rel"

    if (metro(kTempo) == 1) then

        ; Sin 1
        if (changed(kSin1) == 1) then
            if (kSin1 == 1 && kMst == 1) then
                event "i",  1, 0, -10, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel
            else
                event "i", -1, 0,   0, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel
            endif
        endif

        if (changed(kSin1Freq) == 1 && kSin1 == 1 && kMst == 1) then
            event "i", -1, 0,   0, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel
            event "i",  1, 0, -10, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel
        endif

        if (changed(kSin1Ampl) == 1 && kSin1 == 1 && kMst == 1) then
            event "i", -1, 0,   0, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel
            event "i",  1, 0, -10, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel
        endif

        ; Sin 2
        if (changed(kSin2) == 1) then
            if (kSin2 == 1 && kMst == 1) then
                event "i",  2, 0, -10, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
            else
                event "i", -2, 0,   0, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
            endif
        endif

        if (changed(kSin2Freq) == 1 && kSin2 == 1 && kMst == 1) then
            event "i", -2, 0,   0, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
            event "i",  2, 0, -10, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
        endif

        if (changed(kSin2Ampl) == 1 && kSin2 == 1 && kMst == 1) then
            event "i", -2, 0,   0, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
            event "i",  2, 0, -10, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
        endif

        ; Sin 3
        if (changed(kSin3) == 1) then
            if (kSin3 == 1 && kMst == 1) then
                event "i",  3, 0, -10, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
            else
                event "i", -3, 0,   0, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
            endif
        endif

        if (changed(kSin3Freq) == 1 && kSin3 == 1 && kMst == 1) then
            event "i", -3, 0,   0, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
            event "i",  3, 0, -10, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
        endif

        if (changed(kSin3Ampl) == 1 && kSin3 == 1 && kMst == 1) then
            event "i", -3, 0,   0, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
            event "i",  3, 0, -10, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
        endif

        ; Sin 4
        if (changed(kSin4) == 1 && kMst == 1) then
            if (kSin4 == 1 && kMst == 1) then
                event "i",  4, 0, -10, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
            else
                event "i", -4, 0,   0, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
            endif
        endif

        if (changed(kSin4Freq) == 1 && kSin4 == 1 && kMst == 1) then
            event "i", -4, 0,   0, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
            event "i",  4, 0, -10, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
        endif

        if (changed(kSin4Ampl) == 1 && kSin4 == 1 && kMst == 1) then
            event "i", -4, 0,   0, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
            event "i",  4, 0, -10, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
        endif
            
        ; Active
        if (changed(kMst) == 1) then
            if (kMst == 1) then
                if (kSin1 == 1) then
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
            else
                event "i", -1, 0, 0, kSin1Freq, kSin1Ampl, kAtt, kDec, kSus, kRel
                event "i", -2, 0, 0, kSin2Freq, kSin2Ampl, kAtt, kDec, kSus, kRel
                event "i", -3, 0, 0, kSin3Freq, kSin3Ampl, kAtt, kDec, kSus, kRel
                event "i", -4, 0, 0, kSin4Freq, kSin4Ampl, kAtt, kDec, kSus, kRel
            endif
        endif
    endif
endin

instr 1
    kFreq = p4
    kAmpl = p5

    iAtt = p6
    iDec = p7
    iSus = p8
    iRel = p9
    
    kEnv   madsr iAtt, iDec, iSus, iRel

    aOut   poscil kAmpl, kFreq, giSine
    outs   aOut * kEnv, aOut * kEnv
endin

instr 2
    kFreq = p4
    kAmpl = p5

    iAtt = p6
    iDec = p7
    iSus = p8
    iRel = p9
    
    kEnv   madsr iAtt, iDec, iSus, iRel

    aOut   poscil kAmpl, kFreq, giSine
    outs   aOut * kEnv, aOut * kEnv
endin

instr 3
    kFreq = p4
    kAmpl = p5

    iAtt = p6
    iDec = p7
    iSus = p8
    iRel = p9
    
    kEnv   madsr iAtt, iDec, iSus, iRel

    aOut   poscil kAmpl, kFreq, giSine
    outs   aOut * kEnv, aOut * kEnv
endin

instr 4
    kFreq = p4
    kAmpl = p5

    iAtt = p6
    iDec = p7
    iSus = p8
    iRel = p9
    
    kEnv   madsr iAtt, iDec, iSus, iRel

    aOut   poscil kAmpl, kFreq, giSine
    outs   aOut * kEnv, aOut * kEnv
endin
</CsInstruments>

<CsScore>
i"SYNTH"   0  [3600 * 120]
</CsScore>
</CsoundSynthesizer>