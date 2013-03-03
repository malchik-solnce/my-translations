.class public abstract Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;
.super Landroid/os/Binder;
.source "ITotalRecallService.java"

# interfaces
.implements Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

.field static final TRANSACTION_getAudioFormat:I = 0xa

.field static final TRANSACTION_getAutoMailUploadPassword:I = 0x52

.field static final TRANSACTION_getAutoMailUploadRecipient:I = 0x4e

.field static final TRANSACTION_getAutoMailUploadUsername:I = 0x50

.field static final TRANSACTION_getCalls:I = 0x4

.field static final TRANSACTION_getCurrentState:I = 0x2b

.field static final TRANSACTION_getDestination:I = 0x1a

.field static final TRANSACTION_getExpiration:I = 0x28

.field static final TRANSACTION_getFont:I = 0x6a

.field static final TRANSACTION_getMaxDuration:I = 0xc

.field static final TRANSACTION_getMaxSize:I = 0x14

.field static final TRANSACTION_getMinDuration:I = 0xe

.field static final TRANSACTION_getNextTestNumber:I = 0x6c

.field static final TRANSACTION_getRecorderAudioSource:I = 0x3a

.field static final TRANSACTION_getRecordingNumbersApplyFor:I = 0x63

.field static final TRANSACTION_getRecordingNumbersJson:I = 0x5f

.field static final TRANSACTION_getRecordsListSortOrder:I = 0x72

.field static final TRANSACTION_getRecoveryMail:I = 0x22

.field static final TRANSACTION_getSmsPassword:I = 0x1c

.field static final TRANSACTION_getTestNumber:I = 0x6e

.field static final TRANSACTION_getTestResults:I = 0x70

.field static final TRANSACTION_getTheme:I = 0x65

.field static final TRANSACTION_getVibrationDuration:I = 0x67

.field static final TRANSACTION_hideNotification:I = 0x2f

.field static final TRANSACTION_isAcceptedEula:I = 0x44

.field static final TRANSACTION_isAllowRecordViaSms:I = 0x24

.field static final TRANSACTION_isAutoEvernoteUploadEnabled:I = 0x56

.field static final TRANSACTION_isAutoMailUploadEnabled:I = 0x54

.field static final TRANSACTION_isAutoResetService:I = 0x5e

.field static final TRANSACTION_isAutoStart:I = 0x8

.field static final TRANSACTION_isDeleteFileAfterGmailEvernoteUpload:I = 0x58

.field static final TRANSACTION_isDictAutoStartRecording:I = 0x33

.field static final TRANSACTION_isDictAutoStopRecording:I = 0x35

.field static final TRANSACTION_isDictNotificationOn:I = 0x31

.field static final TRANSACTION_isDontRecordWithBTHeadset:I = 0x5c

.field static final TRANSACTION_isHideRecordingStrategyDlg:I = 0x38

.field static final TRANSACTION_isManualRecordingNotif:I = 0x4c

.field static final TRANSACTION_isMaxDurationEnabled:I = 0x10

.field static final TRANSACTION_isMaxSizeEnabled:I = 0x16

.field static final TRANSACTION_isMinDurationEnabled:I = 0x12

.field static final TRANSACTION_isPrompt:I = 0x6

.field static final TRANSACTION_isRecordAfterCallStart:I = 0x3e

.field static final TRANSACTION_isRecording:I = 0x2c

.field static final TRANSACTION_isRecordingNumbersRecordSelected:I = 0x61

.field static final TRANSACTION_isRecordingWakeLock:I = 0x3c

.field static final TRANSACTION_isRootNiceValue:I = 0x74

.field static final TRANSACTION_isSmsNotificationEnabled:I = 0x20

.field static final TRANSACTION_isSmsPasswordEnabled:I = 0x1e

.field static final TRANSACTION_isSpeakerPhone:I = 0x40

.field static final TRANSACTION_isStatusBarHided:I = 0x25

.field static final TRANSACTION_isStreamSolo:I = 0x42

.field static final TRANSACTION_isToastsAllowed:I = 0x5a

.field static final TRANSACTION_isUseContactNameForRecord:I = 0x4a

.field static final TRANSACTION_isUseDateForRecord:I = 0x46

.field static final TRANSACTION_isUseTimeForRecord:I = 0x48

.field static final TRANSACTION_notifyEnabled:I = 0x30

.field static final TRANSACTION_prepareWAVRecord:I = 0x3

.field static final TRANSACTION_saveFile:I = 0x2a

.field static final TRANSACTION_setAcceptedEula:I = 0x43

.field static final TRANSACTION_setAllowRecordViaSms:I = 0x29

.field static final TRANSACTION_setAudioFormat:I = 0xb

.field static final TRANSACTION_setAutoEvernoteUploadEnabled:I = 0x55

.field static final TRANSACTION_setAutoMailUploadEnabled:I = 0x53

.field static final TRANSACTION_setAutoMailUploadPassword:I = 0x51

.field static final TRANSACTION_setAutoMailUploadRecipient:I = 0x4d

.field static final TRANSACTION_setAutoMailUploadUsername:I = 0x4f

.field static final TRANSACTION_setAutoResetService:I = 0x5d

.field static final TRANSACTION_setAutoStart:I = 0x9

.field static final TRANSACTION_setCalls:I = 0x5

.field static final TRANSACTION_setDeleteFileAfterGmailEvernoteUpload:I = 0x57

.field static final TRANSACTION_setDestination:I = 0x1b

.field static final TRANSACTION_setDictAutoStartRecording:I = 0x34

.field static final TRANSACTION_setDictAutoStopRecording:I = 0x36

.field static final TRANSACTION_setDictNotificationOn:I = 0x32

.field static final TRANSACTION_setDontRecordWithBTHeadset:I = 0x5b

.field static final TRANSACTION_setExpiration:I = 0x27

.field static final TRANSACTION_setFont:I = 0x69

.field static final TRANSACTION_setHideRecordingStrategyDlg:I = 0x37

.field static final TRANSACTION_setManualRecordingNotif:I = 0x4b

.field static final TRANSACTION_setMaxDuration:I = 0xd

.field static final TRANSACTION_setMaxDurationEnabled:I = 0x11

.field static final TRANSACTION_setMaxSize:I = 0x15

.field static final TRANSACTION_setMaxSizeEnabled:I = 0x17

.field static final TRANSACTION_setMinDuration:I = 0xf

.field static final TRANSACTION_setMinDurationEnabled:I = 0x13

.field static final TRANSACTION_setNextTestNumber:I = 0x6b

.field static final TRANSACTION_setPrompt:I = 0x7

.field static final TRANSACTION_setRecordAfterCallStart:I = 0x3d

.field static final TRANSACTION_setRecorderAudioSource:I = 0x39

.field static final TRANSACTION_setRecordingNumbersApplyFor:I = 0x64

.field static final TRANSACTION_setRecordingNumbersJson:I = 0x60

.field static final TRANSACTION_setRecordingNumbersRecordSelected:I = 0x62

.field static final TRANSACTION_setRecordingWakeLock:I = 0x3b

.field static final TRANSACTION_setRecordsListSortOrder:I = 0x71

.field static final TRANSACTION_setRecoveryMail:I = 0x23

.field static final TRANSACTION_setRootNiceValue:I = 0x73

.field static final TRANSACTION_setSmsNotificationEnabled:I = 0x21

.field static final TRANSACTION_setSmsPassword:I = 0x1d

.field static final TRANSACTION_setSmsPasswordEnabled:I = 0x1f

.field static final TRANSACTION_setSpeakerPhone:I = 0x3f

.field static final TRANSACTION_setStatusBarHided:I = 0x26

.field static final TRANSACTION_setStorageAvailable:I = 0x1

.field static final TRANSACTION_setStorageUnavailable:I = 0x2

.field static final TRANSACTION_setStreamSolo:I = 0x41

.field static final TRANSACTION_setTestNumber:I = 0x6d

.field static final TRANSACTION_setTestResults:I = 0x6f

.field static final TRANSACTION_setTheme:I = 0x66

.field static final TRANSACTION_setToastsAllowed:I = 0x59

.field static final TRANSACTION_setUseContactNameForRecord:I = 0x49

.field static final TRANSACTION_setUseDateForRecord:I = 0x45

.field static final TRANSACTION_setUseTimeForRecord:I = 0x47

.field static final TRANSACTION_setVibrationDuration:I = 0x68

.field static final TRANSACTION_showNotification:I = 0x2e

.field static final TRANSACTION_startNewRecord:I = 0x18

.field static final TRANSACTION_stopRecording:I = 0x19

.field static final TRANSACTION_toggleCallsType:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p0, p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 1036
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 42
    :sswitch_0
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setStorageAvailable()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 54
    :sswitch_2
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setStorageUnavailable(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 63
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 67
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->prepareWAVRecord(ILjava/lang/String;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getCalls()I

    move-result v3

    .line 76
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v3           #_result:I
    :sswitch_5
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setCalls(I)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 91
    .end local v0           #_arg0:I
    :sswitch_6
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isPrompt()Z

    move-result v3

    .line 93
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v3, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 99
    .end local v3           #_result:Z
    :sswitch_7
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    move v0, v6

    .line 102
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setPrompt(Z)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v5

    .line 101
    goto :goto_1

    .line 108
    :sswitch_8
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isAutoStart()Z

    move-result v3

    .line 110
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    if-eqz v3, :cond_2

    move v5, v6

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v3           #_result:Z
    :sswitch_9
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    move v0, v6

    .line 119
    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAutoStart(Z)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v5

    .line 118
    goto :goto_2

    .line 125
    :sswitch_a
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getAudioFormat()I

    move-result v3

    .line 127
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v3           #_result:I
    :sswitch_b
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAudioFormat(I)V

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 142
    .end local v0           #_arg0:I
    :sswitch_c
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getMaxDuration()J

    move-result-wide v3

    .line 144
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 150
    .end local v3           #_result:J
    :sswitch_d
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 153
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setMaxDuration(J)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 159
    .end local v0           #_arg0:J
    :sswitch_e
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getMinDuration()J

    move-result-wide v3

    .line 161
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 167
    .end local v3           #_result:J
    :sswitch_f
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 170
    .restart local v0       #_arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setMinDuration(J)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 176
    .end local v0           #_arg0:J
    :sswitch_10
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isMaxDurationEnabled()Z

    move-result v3

    .line 178
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v3, :cond_4

    move v5, v6

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v3           #_result:Z
    :sswitch_11
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    move v0, v6

    .line 187
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setMaxDurationEnabled(Z)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_5
    move v0, v5

    .line 186
    goto :goto_3

    .line 193
    :sswitch_12
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isMinDurationEnabled()Z

    move-result v3

    .line 195
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v3, :cond_6

    move v5, v6

    :cond_6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 201
    .end local v3           #_result:Z
    :sswitch_13
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_7

    move v0, v6

    .line 204
    .restart local v0       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setMinDurationEnabled(Z)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_7
    move v0, v5

    .line 203
    goto :goto_4

    .line 210
    :sswitch_14
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getMaxSize()J

    move-result-wide v3

    .line 212
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 218
    .end local v3           #_result:J
    :sswitch_15
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 221
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setMaxSize(J)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 227
    .end local v0           #_arg0:J
    :sswitch_16
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isMaxSizeEnabled()Z

    move-result v3

    .line 229
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    if-eqz v3, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 235
    .end local v3           #_result:Z
    :sswitch_17
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_9

    move v0, v6

    .line 238
    .local v0, _arg0:Z
    :goto_5
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setMaxSizeEnabled(Z)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_9
    move v0, v5

    .line 237
    goto :goto_5

    .line 244
    :sswitch_18
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->startNewRecord(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 255
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_19
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a

    move v0, v6

    .line 258
    .local v0, _arg0:Z
    :goto_6
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->stopRecording(Z)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_a
    move v0, v5

    .line 257
    goto :goto_6

    .line 264
    :sswitch_1a
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getDestination()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setDestination(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 281
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1c
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getSmsPassword()Ljava/lang/String;

    move-result-object v3

    .line 283
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 289
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_1d
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setSmsPassword(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 298
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1e
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isSmsPasswordEnabled()Z

    move-result v3

    .line 300
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    if-eqz v3, :cond_b

    move v5, v6

    :cond_b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 306
    .end local v3           #_result:Z
    :sswitch_1f
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    move v0, v6

    .line 309
    .local v0, _arg0:Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setSmsPasswordEnabled(Z)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_c
    move v0, v5

    .line 308
    goto :goto_7

    .line 315
    :sswitch_20
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isSmsNotificationEnabled()Z

    move-result v3

    .line 317
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    if-eqz v3, :cond_d

    move v5, v6

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 323
    .end local v3           #_result:Z
    :sswitch_21
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    move v0, v6

    .line 326
    .restart local v0       #_arg0:Z
    :goto_8
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setSmsNotificationEnabled(Z)V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_e
    move v0, v5

    .line 325
    goto :goto_8

    .line 332
    :sswitch_22
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getRecoveryMail()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 340
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_23
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRecoveryMail(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 349
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isAllowRecordViaSms()Z

    move-result v3

    .line 351
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    if-eqz v3, :cond_f

    move v5, v6

    :cond_f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 357
    .end local v3           #_result:Z
    :sswitch_25
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isStatusBarHided()Z

    move-result v3

    .line 359
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    if-eqz v3, :cond_10

    move v5, v6

    :cond_10
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 365
    .end local v3           #_result:Z
    :sswitch_26
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_11

    move v0, v6

    .line 368
    .local v0, _arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setStatusBarHided(Z)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_11
    move v0, v5

    .line 367
    goto :goto_9

    .line 374
    :sswitch_27
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setExpiration(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 383
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_28
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getExpiration()Ljava/lang/String;

    move-result-object v3

    .line 385
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 391
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_29
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    move v0, v6

    .line 394
    .local v0, _arg0:Z
    :goto_a
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAllowRecordViaSms(Z)V

    .line 395
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_12
    move v0, v5

    .line 393
    goto :goto_a

    .line 400
    :sswitch_2a
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 405
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->saveFile(Ljava/lang/String;I)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 411
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_2b
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getCurrentState()I

    move-result v3

    .line 413
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 419
    .end local v3           #_result:I
    :sswitch_2c
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isRecording()Z

    move-result v3

    .line 421
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v3, :cond_13

    move v5, v6

    :cond_13
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 427
    .end local v3           #_result:Z
    :sswitch_2d
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->toggleCallsType()V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 434
    :sswitch_2e
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 437
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 443
    .end local v0           #_arg0:I
    :sswitch_2f
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 452
    .end local v0           #_arg0:I
    :sswitch_30
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->notifyEnabled()V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 459
    :sswitch_31
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isDictNotificationOn()Z

    move-result v3

    .line 461
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    if-eqz v3, :cond_14

    move v5, v6

    :cond_14
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 467
    .end local v3           #_result:Z
    :sswitch_32
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    move v0, v6

    .line 470
    .local v0, _arg0:Z
    :goto_b
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setDictNotificationOn(Z)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_15
    move v0, v5

    .line 469
    goto :goto_b

    .line 476
    :sswitch_33
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isDictAutoStartRecording()Z

    move-result v3

    .line 478
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    if-eqz v3, :cond_16

    move v5, v6

    :cond_16
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 484
    .end local v3           #_result:Z
    :sswitch_34
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    move v0, v6

    .line 487
    .restart local v0       #_arg0:Z
    :goto_c
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setDictAutoStartRecording(Z)V

    .line 488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_17
    move v0, v5

    .line 486
    goto :goto_c

    .line 493
    :sswitch_35
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isDictAutoStopRecording()Z

    move-result v3

    .line 495
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v3, :cond_18

    move v5, v6

    :cond_18
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 501
    .end local v3           #_result:Z
    :sswitch_36
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    move v0, v6

    .line 504
    .restart local v0       #_arg0:Z
    :goto_d
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setDictAutoStopRecording(Z)V

    .line 505
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_19
    move v0, v5

    .line 503
    goto :goto_d

    .line 510
    :sswitch_37
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1a

    move v0, v6

    .line 513
    .restart local v0       #_arg0:Z
    :goto_e
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setHideRecordingStrategyDlg(Z)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_1a
    move v0, v5

    .line 512
    goto :goto_e

    .line 519
    :sswitch_38
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isHideRecordingStrategyDlg()Z

    move-result v3

    .line 521
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    if-eqz v3, :cond_1b

    move v5, v6

    :cond_1b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 527
    .end local v3           #_result:Z
    :sswitch_39
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 530
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRecorderAudioSource(I)V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 536
    .end local v0           #_arg0:I
    :sswitch_3a
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getRecorderAudioSource()I

    move-result v3

    .line 538
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 544
    .end local v3           #_result:I
    :sswitch_3b
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1c

    move v0, v6

    .line 547
    .local v0, _arg0:Z
    :goto_f
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRecordingWakeLock(Z)V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_1c
    move v0, v5

    .line 546
    goto :goto_f

    .line 553
    :sswitch_3c
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isRecordingWakeLock()Z

    move-result v3

    .line 555
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    if-eqz v3, :cond_1d

    move v5, v6

    :cond_1d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 561
    .end local v3           #_result:Z
    :sswitch_3d
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1e

    move v0, v6

    .line 564
    .restart local v0       #_arg0:Z
    :goto_10
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRecordAfterCallStart(Z)V

    .line 565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_1e
    move v0, v5

    .line 563
    goto :goto_10

    .line 570
    :sswitch_3e
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isRecordAfterCallStart()Z

    move-result v3

    .line 572
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    if-eqz v3, :cond_1f

    move v5, v6

    :cond_1f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 578
    .end local v3           #_result:Z
    :sswitch_3f
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_20

    move v0, v6

    .line 581
    .restart local v0       #_arg0:Z
    :goto_11
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setSpeakerPhone(Z)V

    .line 582
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_20
    move v0, v5

    .line 580
    goto :goto_11

    .line 587
    :sswitch_40
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isSpeakerPhone()Z

    move-result v3

    .line 589
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    if-eqz v3, :cond_21

    move v5, v6

    :cond_21
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 595
    .end local v3           #_result:Z
    :sswitch_41
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_22

    move v0, v6

    .line 598
    .restart local v0       #_arg0:Z
    :goto_12
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setStreamSolo(Z)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_22
    move v0, v5

    .line 597
    goto :goto_12

    .line 604
    :sswitch_42
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isStreamSolo()Z

    move-result v3

    .line 606
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    if-eqz v3, :cond_23

    move v5, v6

    :cond_23
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 612
    .end local v3           #_result:Z
    :sswitch_43
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_24

    move v0, v6

    .line 615
    .restart local v0       #_arg0:Z
    :goto_13
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAcceptedEula(Z)V

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_24
    move v0, v5

    .line 614
    goto :goto_13

    .line 621
    :sswitch_44
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isAcceptedEula()Z

    move-result v3

    .line 623
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 624
    if-eqz v3, :cond_25

    move v5, v6

    :cond_25
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 629
    .end local v3           #_result:Z
    :sswitch_45
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_26

    move v0, v6

    .line 632
    .restart local v0       #_arg0:Z
    :goto_14
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setUseDateForRecord(Z)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_26
    move v0, v5

    .line 631
    goto :goto_14

    .line 638
    :sswitch_46
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isUseDateForRecord()Z

    move-result v3

    .line 640
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 641
    if-eqz v3, :cond_27

    move v5, v6

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 646
    .end local v3           #_result:Z
    :sswitch_47
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_28

    move v0, v6

    .line 649
    .restart local v0       #_arg0:Z
    :goto_15
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setUseTimeForRecord(Z)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_28
    move v0, v5

    .line 648
    goto :goto_15

    .line 655
    :sswitch_48
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isUseTimeForRecord()Z

    move-result v3

    .line 657
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    if-eqz v3, :cond_29

    move v5, v6

    :cond_29
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 663
    .end local v3           #_result:Z
    :sswitch_49
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2a

    move v0, v6

    .line 666
    .restart local v0       #_arg0:Z
    :goto_16
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setUseContactNameForRecord(Z)V

    .line 667
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_2a
    move v0, v5

    .line 665
    goto :goto_16

    .line 672
    :sswitch_4a
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isUseContactNameForRecord()Z

    move-result v3

    .line 674
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v3, :cond_2b

    move v5, v6

    :cond_2b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 680
    .end local v3           #_result:Z
    :sswitch_4b
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2c

    move v0, v6

    .line 683
    .restart local v0       #_arg0:Z
    :goto_17
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setManualRecordingNotif(Z)V

    .line 684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_2c
    move v0, v5

    .line 682
    goto :goto_17

    .line 689
    :sswitch_4c
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isManualRecordingNotif()Z

    move-result v3

    .line 691
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    if-eqz v3, :cond_2d

    move v5, v6

    :cond_2d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 697
    .end local v3           #_result:Z
    :sswitch_4d
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAutoMailUploadRecipient(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 706
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_4e
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getAutoMailUploadRecipient()Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 714
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_4f
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 717
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAutoMailUploadUsername(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 723
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_50
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getAutoMailUploadUsername()Ljava/lang/String;

    move-result-object v3

    .line 725
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 731
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_51
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 734
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAutoMailUploadPassword(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 740
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_52
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getAutoMailUploadPassword()Ljava/lang/String;

    move-result-object v3

    .line 742
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 748
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_53
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2e

    move v0, v6

    .line 751
    .local v0, _arg0:Z
    :goto_18
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAutoMailUploadEnabled(Z)V

    .line 752
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_2e
    move v0, v5

    .line 750
    goto :goto_18

    .line 757
    :sswitch_54
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isAutoMailUploadEnabled()Z

    move-result v3

    .line 759
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    if-eqz v3, :cond_2f

    move v5, v6

    :cond_2f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 765
    .end local v3           #_result:Z
    :sswitch_55
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 767
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_30

    move v0, v6

    .line 768
    .restart local v0       #_arg0:Z
    :goto_19
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAutoEvernoteUploadEnabled(Z)V

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_30
    move v0, v5

    .line 767
    goto :goto_19

    .line 774
    :sswitch_56
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isAutoEvernoteUploadEnabled()Z

    move-result v3

    .line 776
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    if-eqz v3, :cond_31

    move v5, v6

    :cond_31
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 782
    .end local v3           #_result:Z
    :sswitch_57
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_32

    move v0, v6

    .line 785
    .restart local v0       #_arg0:Z
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setDeleteFileAfterGmailEvernoteUpload(Z)V

    .line 786
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_32
    move v0, v5

    .line 784
    goto :goto_1a

    .line 791
    :sswitch_58
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isDeleteFileAfterGmailEvernoteUpload()Z

    move-result v3

    .line 793
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 794
    if-eqz v3, :cond_33

    move v5, v6

    :cond_33
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 799
    .end local v3           #_result:Z
    :sswitch_59
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_34

    move v0, v6

    .line 802
    .restart local v0       #_arg0:Z
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setToastsAllowed(Z)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_34
    move v0, v5

    .line 801
    goto :goto_1b

    .line 808
    :sswitch_5a
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isToastsAllowed()Z

    move-result v3

    .line 810
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    if-eqz v3, :cond_35

    move v5, v6

    :cond_35
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 816
    .end local v3           #_result:Z
    :sswitch_5b
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_36

    move v0, v6

    .line 819
    .restart local v0       #_arg0:Z
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setDontRecordWithBTHeadset(Z)V

    .line 820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_36
    move v0, v5

    .line 818
    goto :goto_1c

    .line 825
    :sswitch_5c
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isDontRecordWithBTHeadset()Z

    move-result v3

    .line 827
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    if-eqz v3, :cond_37

    move v5, v6

    :cond_37
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 833
    .end local v3           #_result:Z
    :sswitch_5d
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_38

    move v0, v6

    .line 836
    .restart local v0       #_arg0:Z
    :goto_1d
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setAutoResetService(Z)V

    .line 837
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_38
    move v0, v5

    .line 835
    goto :goto_1d

    .line 842
    :sswitch_5e
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isAutoResetService()Z

    move-result v3

    .line 844
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    if-eqz v3, :cond_39

    move v5, v6

    :cond_39
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 850
    .end local v3           #_result:Z
    :sswitch_5f
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getRecordingNumbersJson()Ljava/lang/String;

    move-result-object v3

    .line 852
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 853
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 858
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_60
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 861
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRecordingNumbersJson(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 867
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_61
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isRecordingNumbersRecordSelected()Z

    move-result v3

    .line 869
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v3, :cond_3a

    move v5, v6

    :cond_3a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 875
    .end local v3           #_result:Z
    :sswitch_62
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3b

    move v0, v6

    .line 878
    .local v0, _arg0:Z
    :goto_1e
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRecordingNumbersRecordSelected(Z)V

    .line 879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3b
    move v0, v5

    .line 877
    goto :goto_1e

    .line 884
    :sswitch_63
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getRecordingNumbersApplyFor()I

    move-result v3

    .line 886
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 887
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 892
    .end local v3           #_result:I
    :sswitch_64
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 895
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRecordingNumbersApplyFor(I)V

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 901
    .end local v0           #_arg0:I
    :sswitch_65
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getTheme()I

    move-result v3

    .line 903
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 909
    .end local v3           #_result:I
    :sswitch_66
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 912
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setTheme(I)V

    .line 913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 918
    .end local v0           #_arg0:I
    :sswitch_67
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getVibrationDuration()I

    move-result v3

    .line 920
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 926
    .end local v3           #_result:I
    :sswitch_68
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 929
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setVibrationDuration(I)V

    .line 930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 935
    .end local v0           #_arg0:I
    :sswitch_69
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setFont(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 944
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6a
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getFont()Ljava/lang/String;

    move-result-object v3

    .line 946
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 952
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_6b
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 955
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setNextTestNumber(I)V

    .line 956
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 961
    .end local v0           #_arg0:I
    :sswitch_6c
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getNextTestNumber()I

    move-result v3

    .line 963
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 969
    .end local v3           #_result:I
    :sswitch_6d
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setTestNumber(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 978
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_6e
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getTestNumber()Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 986
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_6f
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 989
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setTestResults(Ljava/lang/String;)V

    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 995
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_70
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getTestResults()Ljava/lang/String;

    move-result-object v3

    .line 997
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 998
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1003
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_71
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1006
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRecordsListSortOrder(I)V

    .line 1007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 1012
    .end local v0           #_arg0:I
    :sswitch_72
    const-string v5, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->getRecordsListSortOrder()I

    move-result v3

    .line 1014
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 1020
    .end local v3           #_result:I
    :sswitch_73
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3c

    move v0, v6

    .line 1023
    .local v0, _arg0:Z
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->setRootNiceValue(Z)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3c
    move v0, v5

    .line 1022
    goto :goto_1f

    .line 1029
    :sswitch_74
    const-string v7, "com.killermobile.totalrecall.s2.trial.ITotalRecallService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->isRootNiceValue()Z

    move-result v3

    .line 1031
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1032
    if-eqz v3, :cond_3d

    move v5, v6

    :cond_3d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
