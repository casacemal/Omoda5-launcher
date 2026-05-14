package com.chery.caradapter.carapi.interfaces.managers;

import com.chery.caradapter.carapi.interfaces.IDriveListener;

/* loaded from: classes.dex */
public interface IDriveManager {
    int getAEBOnOffSts();

    int getBSDLCARCTAOnOffSts();

    int getDAIOnOffSts();

    int getDOWOnOffSts();

    int getELKOnOffSts();

    int getEPSAssistanceStyleSts();

    int getEPSAssociWithDriverModeSts();

    int getESPSwitchStatus();

    int getFCWOnOffSts();

    int getFCWSnvtySts();

    int getHDCCtrlSts();

    int getIESOnOffSts();

    int getLDPOnOffSts();

    int getLDWLDPSnvtySts();

    int getLDWOnOffSts();

    int getOverSpeed();

    int getRCTBOnOffSts();

    int getRCWOnOffSts();

    int getSCFSwtSts();

    int getSla();

    int getTJAICAExitTextInfoSts();

    int getTLIOnOffSts();

    int getTSIOnOffSts();

    int getWarnModSts();

    void setAEBSwt(int r1);

    void setBSDSwitchSts(int r1);

    void setDAISwt(int r1);

    void setDOW(int r1);

    void setDriveMode(int r1);

    void setELKSwt(int r1);

    void setEPSAssistanceStyle(int r1);

    void setEPSAssociWithDriverMode(int r1);

    void setESPFunctionSts(int r1);

    void setFCWSnvty(int r1);

    void setFCWSwt(int r1);

    void setHDCOnOff(int r1);

    void setIESSwtSet(int r1);

    void setLDPSwt(int r1);

    void setLDWLDPSnvty(int r1);

    void setLDWSwt(int r1);

    void setListener(IDriveListener iDriveListener);

    void setOverSpeed(int r1);

    void setRCTBSwt(int r1);

    void setRCW(int r1);

    void setSCFSwt(int r1);

    void setSla(int r1);

    void setTJAICAExitTextInfoSwt(int r1);

    void setTLISwt(int r1);

    void setTSISwt(int r1);

    void setWarnModSwt(int r1);
}
