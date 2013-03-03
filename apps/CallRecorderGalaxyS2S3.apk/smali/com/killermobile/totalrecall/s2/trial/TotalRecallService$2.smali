.class Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;
.super Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;
.source "TotalRecallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    .line 213
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    return-object v0
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    return v0
.end method

.method public getAutoMailUploadPassword()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadPassword:Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$20(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoMailUploadRecipient()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadRecipient:Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$18(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoMailUploadUsername()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadUsername:Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$19(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalls()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getCurrentState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordingType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->expiration:Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$6(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFont()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$37(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lorg/appforce/ui/Font;

    move-result-object v1

    invoke-static {v1}, Lorg/appforce/ui/Font;->getJsonFromFont(Lorg/appforce/ui/Font;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 430
    :goto_0
    return-object v1

    .line 426
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 430
    const-string v1, ""

    goto :goto_0
.end method

.method public getMaxDuration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDuration:J

    return-wide v0
.end method

.method public getMaxSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSize:J

    return-wide v0
.end method

.method public getMinDuration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDuration:J

    return-wide v0
.end method

.method public getNextTestNumber()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->nextTestNumber:I
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$32(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I

    move-result v0

    return v0
.end method

.method public getRecorderAudioSource()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$13(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I

    move-result v0

    return v0
.end method

.method public getRecordingNumbersApplyFor()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersApplyFor:I
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$29(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I

    move-result v0

    return v0
.end method

.method public getRecordingNumbersJson()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbers:Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$27(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordsListSortOrder()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordsListSortOrder:I
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$35(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I

    move-result v0

    return v0
.end method

.method public getRecoveryMail()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->encryption:Lcom/killermobile/totalrecall/s2/trial/Encryption;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$7(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/Encryption;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recoveryMail:Ljava/lang/String;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$9(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsPassword()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->encryption:Lcom/killermobile/totalrecall/s2/trial/Encryption;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$7(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/Encryption;

    move-result-object v0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPassword:Ljava/lang/String;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$8(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestNumber()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$33(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTestResults()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testResults:Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$34(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->theme:I
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$30(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I

    move-result v0

    return v0
.end method

.method public getVibrationDuration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->vibrationDuration:I
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$31(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)I

    move-result v0

    return v0
.end method

.method public hideNotification(I)V
    .locals 3
    .parameter "what"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 997
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 998
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 999
    return-void
.end method

.method public isAcceptedEula()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->eulaAccepted:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$14(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isAllowRecordViaSms()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->allowRecordViaSms:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$2(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isAutoEvernoteUploadEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoEvernoteUploadEnabled:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$22(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isAutoMailUploadEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadEnabled:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$21(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isAutoResetService()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoResetService:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$26(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isAutoStart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoStart:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$1(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isDeleteFileAfterGmailEvernoteUpload()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->deleteFileAfterGmailEvernoteUpload:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$23(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isDictAutoStartRecording()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStartRecording:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$10(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isDictAutoStopRecording()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStopRecording:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$11(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isDictNotificationOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictNotificationOn:Z

    return v0
.end method

.method public isDontRecordWithBTHeadset()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dontRecordWithBTHeadset:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$25(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isHideRecordingStrategyDlg()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->hideRecordingStrategyDlg:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$12(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isManualRecordingNotif()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->manualRecordingNotif:Z

    return v0
.end method

.method public isMaxDurationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDurationEnabled:Z

    return v0
.end method

.method public isMaxSizeEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSizeEnabled:Z

    return v0
.end method

.method public isMinDurationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDurationEnabled:Z

    return v0
.end method

.method public isPrompt()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->prompt:Z

    return v0
.end method

.method public isRecordAfterCallStart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordAfterCallStart:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->isRecording:Z

    return v0
.end method

.method public isRecordingNumbersRecordSelected()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersRecordSelected:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$28(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isRecordingWakeLock()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingWakeLock:Z

    return v0
.end method

.method public isRootNiceValue()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->rootNiceValue:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$36(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isSmsNotificationEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsNotificationEnabled:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$4(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isSmsPasswordEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPasswordEnabled:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$3(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isSpeakerPhone()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->speakerPhone:Z

    return v0
.end method

.method public isStatusBarHided()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->statusBarHided:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$5(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isStreamSolo()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->streamSolo:Z

    return v0
.end method

.method public isToastsAllowed()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->toastsAllowed:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$24(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isUseContactNameForRecord()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useContactNameForRecord:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$17(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isUseDateForRecord()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useDateForRecord:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$15(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public isUseTimeForRecord()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useTimeForRecord:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$16(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    return v0
.end method

.method public notifyEnabled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #calls: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyEnabled()V
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$88(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    .line 1005
    return-void
.end method

.method public prepareWAVRecord(ILjava/lang/String;)V
    .locals 7
    .parameter "audioSource"
    .parameter "outputFile"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 759
    const/4 v0, 0x0

    .line 762
    .local v0, i:I
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    if-eqz v1, :cond_1

    .line 763
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->release()V

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    new-instance v4, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    .line 766
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$82()[I

    move-result-object v5

    aget v5, v5, v0

    .line 768
    invoke-direct {v4, p1, v5, v6, v6}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;-><init>(IIII)V

    .line 765
    iput-object v4, v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    .line 770
    add-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$82()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v4}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->getState()Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    move-result-object v4

    sget-object v5, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;->INITIALIZING:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder$State;

    if-ne v4, v5, :cond_3

    move v4, v3

    :goto_1
    and-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v1, v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->mWavRecorder:Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;

    invoke-virtual {v1, p2}, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 774
    return-void

    :cond_2
    move v1, v3

    .line 770
    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1
.end method

.method public saveFile(Ljava/lang/String;I)V
    .locals 19
    .parameter "fileName"
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    const/16 v5, 0xfa4

    if-ne v4, v5, :cond_0

    const/4 v15, 0x1

    .line 814
    .local v15, isWav:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    if-nez v4, :cond_1

    .line 884
    :goto_1
    return-void

    .line 812
    .end local v15           #isWav:Z
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 816
    .restart local v15       #isWav:Z
    :cond_1
    if-nez p1, :cond_3

    .line 817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 818
    if-eqz v15, :cond_2

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->WAV_FILE_PATH:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 819
    new-instance v18, Ljava/io/File;

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->WAV_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 820
    .local v18, wavFile:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 883
    .end local v18           #wavFile:Ljava/io/File;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    goto :goto_1

    .line 823
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDurationEnabled:Z

    if-eqz v4, :cond_4

    .line 824
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStop:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStart:J

    sub-long v13, v4, v6

    .line 825
    .local v13, dur:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDuration:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    cmp-long v4, v13, v4

    if-gez v4, :cond_4

    .line 826
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    goto :goto_1

    .line 832
    .end local v13           #dur:J
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v5, v5, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 834
    .local v17, path:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 835
    new-instance v16, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v5, v5, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    .local v16, newFile:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v0, v16

    iput-object v0, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    .line 843
    .end local v16           #newFile:Ljava/io/File;
    :cond_5
    :goto_3
    if-eqz v15, :cond_6

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->WAV_FILE_PATH:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 844
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 845
    new-instance v18, Ljava/io/File;

    sget-object v4, Lcom/killermobile/totalrecall/s2/trial/WAVRecorder;->WAV_FILE_PATH:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 846
    .restart local v18       #wavFile:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 849
    .end local v18           #wavFile:Ljava/io/File;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v4, v4, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStop:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v6, v6, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStart:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 851
    .local v9, recordDuration:I
    new-instance v3, Lcom/killermobile/totalrecall/s2/trial/Record;

    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->getCID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v5, v5, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentlyRecordedFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 852
    invoke-static/range {p2 .. p2}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-wide v7, v7, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentRecordStart:J

    .line 854
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget v10, v10, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentFormat:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v11, v11, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->currentPhone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v12}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$87(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 851
    invoke-direct/range {v3 .. v12}, Lcom/killermobile/totalrecall/s2/trial/Record;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/killermobile/totalrecall/s2/trial/CallType;JIILjava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 856
    .local v3, record:Lcom/killermobile/totalrecall/s2/trial/Record;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadEnabled:Z
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$21(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 857
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-direct {v5, v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$2;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 876
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 879
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoEvernoteUploadEnabled:Z
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$22(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 880
    invoke-virtual {v3}, Lcom/killermobile/totalrecall/s2/trial/Record;->getFormat()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->deleteFileAfterGmailEvernoteUpload:Z
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$23(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v5

    move-object/from16 v0, v17

    invoke-static {v0, v4, v5}, Lcom/killermobile/totalrecall/s2/trial/service/PostToEvernote;->post(Ljava/lang/String;IZ)V

    goto/16 :goto_2

    .line 839
    .end local v3           #record:Lcom/killermobile/totalrecall/s2/trial/Record;
    .end local v9           #recordDuration:I
    .restart local v16       #newFile:Ljava/io/File;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto/16 :goto_3
.end method

.method public setAcceptedEula(Z)V
    .locals 3
    .parameter "accepted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "eula_accepted"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->eulaAccepted:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$56(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 612
    return-void
.end method

.method public setAllowRecordViaSms(Z)V
    .locals 3
    .parameter "allowed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "bool_record_via_sms"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->allowRecordViaSms:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$51(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 553
    return-void
.end method

.method public setAudioFormat(I)V
    .locals 3
    .parameter "audioFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "audio_format"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->audioFormat:I

    .line 436
    return-void
.end method

.method public setAutoEvernoteUploadEnabled(Z)V
    .locals 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "auto_evernote_upload_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 664
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoEvernoteUploadEnabled:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$64(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 665
    return-void
.end method

.method public setAutoMailUploadEnabled(Z)V
    .locals 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "auto_mail_upload_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadEnabled:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$63(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 660
    return-void
.end method

.method public setAutoMailUploadPassword(Ljava/lang/String;)V
    .locals 2
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "auto_mail_upload_password"

    invoke-virtual {v0, v1, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadPassword:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$62(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 655
    return-void
.end method

.method public setAutoMailUploadRecipient(Ljava/lang/String;)V
    .locals 2
    .parameter "recipient"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 643
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "auto_mail_upload_recipient"

    invoke-virtual {v0, v1, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadRecipient:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$60(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method public setAutoMailUploadUsername(Ljava/lang/String;)V
    .locals 2
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "auto_mail_upload_username"

    invoke-virtual {v0, v1, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoMailUploadUsername:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$61(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public setAutoResetService(Z)V
    .locals 3
    .parameter "autoReset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "auto_reset_service"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoResetService:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$68(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 685
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    if-eqz p1, :cond_0

    const-wide/32 v0, 0x112a880

    :goto_0
    #calls: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->scheduleAutoReset(J)V
    invoke-static {v2, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$69(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;J)V

    .line 686
    return-void

    .line 685
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setAutoStart(Z)V
    .locals 3
    .parameter "autoStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "auto_start"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->autoStart:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$38(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 441
    return-void
.end method

.method public setCalls(I)V
    .locals 4
    .parameter "calls"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v2, "calls"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    invoke-static {p1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    .line 449
    .local v0, ct:Lcom/killermobile/totalrecall/s2/trial/CallType;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$39(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lcom/killermobile/totalrecall/s2/trial/CallType;)V

    .line 451
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$40(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->notifyEnabled()V

    .line 459
    :cond_0
    :goto_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$42(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v2, "last_meaningful_calls"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 461
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$43(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lcom/killermobile/totalrecall/s2/trial/CallType;)V

    .line 463
    :cond_1
    return-void

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #calls: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyDisabled()V
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$41(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    goto :goto_0
.end method

.method public setDeleteFileAfterGmailEvernoteUpload(Z)V
    .locals 3
    .parameter "delete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 668
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "delete_file_after_gmail_evernote_upload"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->deleteFileAfterGmailEvernoteUpload:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$65(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 670
    return-void
.end method

.method public setDestination(Ljava/lang/String;)V
    .locals 2
    .parameter "destination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #calls: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getDefaultDestination()Ljava/lang/String;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$47(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Ljava/lang/String;

    move-result-object p1

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "destination"

    invoke-virtual {v0, v1, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 530
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-object p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->destination:Ljava/lang/String;

    .line 531
    return-void
.end method

.method public setDictAutoStartRecording(Z)V
    .locals 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "dict_auto_start_bool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStartRecording:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$52(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 572
    return-void
.end method

.method public setDictAutoStopRecording(Z)V
    .locals 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "dict_auto_stop_bool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictAutoStopRecording:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$53(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 577
    return-void
.end method

.method public setDictNotificationOn(Z)V
    .locals 5
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 556
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "dict_notification_bool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictNotificationOn:Z

    .line 559
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dictNotificationOn:Z

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v0, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 561
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v0, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V

    .line 567
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v0, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 564
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v0, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    goto :goto_0
.end method

.method public setDontRecordWithBTHeadset(Z)V
    .locals 3
    .parameter "dontRecord"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "dont_record_with_bt_headset"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 679
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->dontRecordWithBTHeadset:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$67(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 680
    return-void
.end method

.method public setExpiration(Ljava/lang/String;)V
    .locals 2
    .parameter "expiration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "expiration_time"

    invoke-virtual {v0, v1, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->expiration:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$49(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public setFont(Ljava/lang/String;)V
    .locals 5
    .parameter "json"

    .prologue
    .line 739
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    invoke-static {p1}, Lorg/appforce/ui/Font;->getFontFromJson(Ljava/lang/String;)Lorg/appforce/ui/Font;

    move-result-object v3

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;
    invoke-static {v2, v3}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$80(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Lorg/appforce/ui/Font;)V

    .line 740
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;
    invoke-static {v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$37(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lorg/appforce/ui/Font;

    move-result-object v2

    invoke-static {v2}, Lorg/appforce/ui/ThemedViews;->setCurrentFont(Lorg/appforce/ui/Font;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v3, "font"

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->font:Lorg/appforce/ui/Font;
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$37(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lorg/appforce/ui/Font;

    move-result-object v4

    invoke-static {v4}, Lorg/appforce/ui/Font;->getJsonFromFont(Lorg/appforce/ui/Font;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 750
    :goto_1
    return-void

    .line 741
    :catch_0
    move-exception v1

    .line 743
    .local v1, e1:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 747
    .end local v1           #e1:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 748
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public setHideRecordingStrategyDlg(Z)V
    .locals 3
    .parameter "hide"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 580
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "hide_recording_strategy_dlg_bool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->hideRecordingStrategyDlg:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$54(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 582
    return-void
.end method

.method public setManualRecordingNotif(Z)V
    .locals 5
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 630
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "manual_recording_notif"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->manualRecordingNotif:Z

    .line 633
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-boolean v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->manualRecordingNotif:Z

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v0, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 635
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v0, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->showNotification(I)V

    .line 640
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v0, v3}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    .line 638
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->binder:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;

    invoke-virtual {v0, v4}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService$Stub;->hideNotification(I)V

    goto :goto_0
.end method

.method public setMaxDuration(J)V
    .locals 3
    .parameter "maxDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "max_duration"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-wide p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDuration:J

    .line 480
    return-void
.end method

.method public setMaxDurationEnabled(Z)V
    .locals 3
    .parameter "maxDurationEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "max_duration_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxDurationEnabled:Z

    .line 490
    return-void
.end method

.method public setMaxSize(J)V
    .locals 3
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "max_size"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-wide p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSize:J

    .line 515
    return-void
.end method

.method public setMaxSizeEnabled(Z)V
    .locals 3
    .parameter "maxSizeEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "max_size_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 519
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->maxSizeEnabled:Z

    .line 520
    return-void
.end method

.method public setMinDuration(J)V
    .locals 3
    .parameter "minDuration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "min_duration"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-wide p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDuration:J

    .line 485
    return-void
.end method

.method public setMinDurationEnabled(Z)V
    .locals 3
    .parameter "minDurationEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "min_duration_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->minDurationEnabled:Z

    .line 495
    return-void
.end method

.method public setNextTestNumber(I)V
    .locals 3
    .parameter "nextTestNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 710
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "next_test_number"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->nextTestNumber:I
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$74(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V

    .line 712
    return-void
.end method

.method public setPrompt(Z)V
    .locals 3
    .parameter "prompt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "prompt"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->prompt:Z

    .line 525
    return-void
.end method

.method public setRecordAfterCallStart(Z)V
    .locals 3
    .parameter "afterStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "recording_after_start_call_bool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordAfterCallStart:Z

    .line 597
    return-void
.end method

.method public setRecorderAudioSource(I)V
    .locals 3
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "recorder_audio_source"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recorderAudioSource:I
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$55(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V

    .line 587
    return-void
.end method

.method public setRecordingNumbersApplyFor(I)V
    .locals 3
    .parameter "callType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "recording_numbers_apply_for"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersApplyFor:I
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$72(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V

    .line 701
    return-void
.end method

.method public setRecordingNumbersJson(Ljava/lang/String;)V
    .locals 2
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "recording_numbers_json"

    invoke-virtual {v0, v1, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbers:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$70(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 691
    return-void
.end method

.method public setRecordingNumbersRecordSelected(Z)V
    .locals 3
    .parameter "recordSelected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 694
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "recording_numbers_record_selected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 695
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingNumbersRecordSelected:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$71(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 696
    return-void
.end method

.method public setRecordingWakeLock(Z)V
    .locals 3
    .parameter "acquired"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "recording_wake_lock_bool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 591
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordingWakeLock:Z

    .line 592
    return-void
.end method

.method public setRecordsListSortOrder(I)V
    .locals 3
    .parameter "order"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "records_list_sort_order"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recordsListSortOrder:I
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$76(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V

    .line 722
    return-void
.end method

.method public setRecoveryMail(Ljava/lang/String;)V
    .locals 3
    .parameter "recoveryMail"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->encryption:Lcom/killermobile/totalrecall/s2/trial/Encryption;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$7(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/Encryption;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, newRecMail:Ljava/lang/String;
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v2, "pass_recovery_mail"

    invoke-virtual {v1, v2, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 547
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->recoveryMail:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$50(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public setRootNiceValue(Z)V
    .locals 3
    .parameter "niceValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "root_nice_value"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->rootNiceValue:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$77(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 728
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #calls: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->startOomAdj()V
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$78(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)V

    .line 730
    return-void
.end method

.method public setSmsNotificationEnabled(Z)V
    .locals 3
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "sms_notification_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsNotificationEnabled:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$45(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 505
    return-void
.end method

.method public setSmsPassword(Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    .line 535
    .local v0, newPass:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v2, "sms_password"

    invoke-virtual {v1, v2, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPassword:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$48(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 537
    return-void

    .line 534
    .end local v0           #newPass:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->encryption:Lcom/killermobile/totalrecall/s2/trial/Encryption;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$7(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/Encryption;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/killermobile/totalrecall/s2/trial/Encryption;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setSmsPasswordEnabled(Z)V
    .locals 3
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "sms_password_enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 499
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->smsPasswordEnabled:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$44(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 500
    return-void
.end method

.method public setSpeakerPhone(Z)V
    .locals 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "speaker_phone_bool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->speakerPhone:Z

    .line 602
    return-void
.end method

.method public setStatusBarHided(Z)V
    .locals 3
    .parameter "hided"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "status_bar_hided"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 509
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->statusBarHided:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$46(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 510
    return-void
.end method

.method public setStorageAvailable()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$40(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const/4 v1, 0x1

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$85(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 801
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->notifyEnabled()V

    goto :goto_0
.end method

.method public setStorageUnavailable(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 805
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const/4 v1, 0x0

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->storageAvailable:Z
    invoke-static {v0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$85(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 807
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v0

    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #calls: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->notifyDisabled(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$86(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 808
    :cond_0
    return-void
.end method

.method public setStreamSolo(Z)V
    .locals 3
    .parameter "streamSolo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "recording_stream_solo_bool"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 606
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    iput-boolean p1, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->streamSolo:Z

    .line 607
    return-void
.end method

.method public setTestNumber(Ljava/lang/String;)V
    .locals 2
    .parameter "testNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "test_number"

    invoke-virtual {v0, v1, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testNumber:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$75(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method public setTestResults(Ljava/lang/String;)V
    .locals 2
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "test_results"

    invoke-virtual {v0, v1, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->testResults:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$79(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Ljava/lang/String;)V

    .line 735
    return-void
.end method

.method public setTheme(I)V
    .locals 3
    .parameter "theme"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "theme"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 705
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->theme:I
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$73(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V

    .line 706
    invoke-static {}, Lorg/appforce/ui/ThemedViews$Theme;->values()[Lorg/appforce/ui/ThemedViews$Theme;

    move-result-object v0

    aget-object v0, v0, p1

    sput-object v0, Lorg/appforce/ui/ThemedViews;->currentTheme:Lorg/appforce/ui/ThemedViews$Theme;

    .line 707
    return-void
.end method

.method public setToastsAllowed(Z)V
    .locals 3
    .parameter "allowed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "toasts_allowed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->toastsAllowed:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$66(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 675
    return-void
.end method

.method public setUseContactNameForRecord(Z)V
    .locals 3
    .parameter "use"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "use_contact_name_for_record"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useContactNameForRecord:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$59(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 627
    return-void
.end method

.method public setUseDateForRecord(Z)V
    .locals 3
    .parameter "use"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "use_date_for_record"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useDateForRecord:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$57(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 617
    return-void
.end method

.method public setUseTimeForRecord(Z)V
    .locals 3
    .parameter "use"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "use_time_for_record"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->useTimeForRecord:Z
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$58(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;Z)V

    .line 622
    return-void
.end method

.method public setVibrationDuration(I)V
    .locals 3
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    const-string v1, "vibration_duration"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->updateSetting(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #setter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->vibrationDuration:I
    invoke-static {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$81(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;I)V

    .line 755
    sput p1, Lorg/appforce/ui/UiUtils;->VIBRATION:I

    .line 756
    return-void
.end method

.method public showNotification(I)V
    .locals 35
    .parameter "what"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    const-string v32, "notification"

    invoke-virtual/range {v31 .. v32}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/NotificationManager;

    .line 894
    .local v22, notificationManager:Landroid/app/NotificationManager;
    packed-switch p1, :pswitch_data_0

    .line 994
    :goto_0
    return-void

    .line 896
    :pswitch_0
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const-class v32, Lcom/killermobile/totalrecall/s2/trial/StopRecording;

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 898
    .local v21, notificationIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v21

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 899
    .local v5, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const v32, 0x7f060021

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 900
    .local v7, contentTitle:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    const v32, 0x7f06003d

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 902
    .local v6, contentText:Ljava/lang/CharSequence;
    new-instance v20, Landroid/app/Notification;

    const v31, 0x7f02002f

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x7f060021

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 902
    move-object/from16 v0, v20

    move/from16 v1, v31

    move-object/from16 v2, v32

    move-wide/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 905
    .local v20, notification:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v7, v6, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 908
    const/16 v31, 0x1

    .line 907
    move-object/from16 v0, v22

    move/from16 v1, v31

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 914
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #contentText:Ljava/lang/CharSequence;
    .end local v7           #contentTitle:Ljava/lang/CharSequence;
    .end local v20           #notification:Landroid/app/Notification;
    .end local v21           #notificationIntent:Landroid/content/Intent;
    :pswitch_1
    new-instance v29, Landroid/content/Intent;

    const-string v31, "action_stop_rec"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 915
    .local v29, stopRecIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, 0x4000

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v29

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v30

    .line 917
    .local v30, stopRecPendingIntent:Landroid/app/PendingIntent;
    const-string v11, "Диктофон Total Recall записывает"

    .line 918
    .local v11, dictIsRecordingTitle:Ljava/lang/CharSequence;
    const-string v10, "Нажмите, чтобы остановить запись"

    .line 920
    .local v10, dictIsRecordingMessage:Ljava/lang/CharSequence;
    new-instance v14, Landroid/app/Notification;

    const v31, 0x7f02002f

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x7f060021

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    .line 922
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 920
    move/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v33

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 923
    .local v14, dictRecordingOnNotif:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v14, v0, v11, v10, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 925
    const/16 v31, 0x22

    move/from16 v0, v31

    iput v0, v14, Landroid/app/Notification;->flags:I

    .line 928
    const/16 v31, 0x2

    .line 927
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 934
    .end local v10           #dictIsRecordingMessage:Ljava/lang/CharSequence;
    .end local v11           #dictIsRecordingTitle:Ljava/lang/CharSequence;
    .end local v14           #dictRecordingOnNotif:Landroid/app/Notification;
    .end local v29           #stopRecIntent:Landroid/content/Intent;
    .end local v30           #stopRecPendingIntent:Landroid/app/PendingIntent;
    :pswitch_2
    new-instance v25, Landroid/content/Intent;

    const-string v31, "action_start_user_rec"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 935
    .local v25, startRecIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, 0x4000

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v25

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v26

    .line 937
    .local v26, startRecPendingIntent:Landroid/app/PendingIntent;
    const-string v9, "Диктофон Total Recall готов"

    .line 938
    .local v9, dictIsNotRecordingTitle:Ljava/lang/CharSequence;
    const-string v8, "Нажмите, чтобы начать запись"

    .line 940
    .local v8, dictIsNotRecordingMessage:Ljava/lang/CharSequence;
    new-instance v13, Landroid/app/Notification;

    const v31, 0x7f020022

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x7f060021

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    .line 942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 940
    move/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v33

    invoke-direct {v13, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 943
    .local v13, dictRecordingOffNotif:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v9, v8, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 945
    const/16 v31, 0x22

    move/from16 v0, v31

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 948
    const/16 v31, 0x3

    .line 947
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 954
    .end local v8           #dictIsNotRecordingMessage:Ljava/lang/CharSequence;
    .end local v9           #dictIsNotRecordingTitle:Ljava/lang/CharSequence;
    .end local v13           #dictRecordingOffNotif:Landroid/app/Notification;
    .end local v25           #startRecIntent:Landroid/content/Intent;
    .end local v26           #startRecPendingIntent:Landroid/app/PendingIntent;
    :pswitch_3
    new-instance v27, Landroid/content/Intent;

    const-string v31, "action_stop_rec"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 955
    .local v27, stopManRecIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, 0x4000

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v27

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    .line 957
    .local v28, stopManRecPendingIntent:Landroid/app/PendingIntent;
    const-string v18, "Total Recall записывает вызов вручную"

    .line 958
    .local v18, manRecIsRecordingTitle:Ljava/lang/CharSequence;
    const-string v17, "Нажмите, чтобы остановить запись"

    .line 960
    .local v17, manRecIsRecordingMessage:Ljava/lang/CharSequence;
    new-instance v12, Landroid/app/Notification;

    const v31, 0x7f02002f

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x7f060021

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    .line 962
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 960
    move/from16 v0, v31

    move-object/from16 v1, v32

    move-wide/from16 v2, v33

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 963
    .local v12, dictManRecOnNotif:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v28

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 965
    const/16 v31, 0x22

    move/from16 v0, v31

    iput v0, v12, Landroid/app/Notification;->flags:I

    .line 968
    const/16 v31, 0x4

    .line 967
    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 974
    .end local v12           #dictManRecOnNotif:Landroid/app/Notification;
    .end local v17           #manRecIsRecordingMessage:Ljava/lang/CharSequence;
    .end local v18           #manRecIsRecordingTitle:Ljava/lang/CharSequence;
    .end local v27           #stopManRecIntent:Landroid/content/Intent;
    .end local v28           #stopManRecPendingIntent:Landroid/app/PendingIntent;
    :pswitch_4
    new-instance v23, Landroid/content/Intent;

    const-string v31, "action_start_manual_call_rec"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 976
    .local v23, startManRecIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, 0x4000

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v23

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    .line 978
    .local v24, startManRecPendingIntent:Landroid/app/PendingIntent;
    const-string v16, "Total Recall ручная запись вызовов ожидает"

    .line 979
    .local v16, manRecIsNotRecordingTitle:Ljava/lang/CharSequence;
    const-string v15, "Нажмите, чтобы начать запись"

    .line 981
    .local v15, manRecIsNotRecordingMessage:Ljava/lang/CharSequence;
    new-instance v19, Landroid/app/Notification;

    const v31, 0x7f020022

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const v33, 0x7f060021

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v32

    .line 983
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    .line 981
    move-object/from16 v0, v19

    move/from16 v1, v31

    move-object/from16 v2, v32

    move-wide/from16 v3, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 984
    .local v19, manRecRecordingOffNotif:Landroid/app/Notification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v31

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v16

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v15, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 986
    const/16 v31, 0x22

    move/from16 v0, v31

    move-object/from16 v1, v19

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 989
    const/16 v31, 0x5

    .line 988
    move-object/from16 v0, v22

    move/from16 v1, v31

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 894
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public startNewRecord(Ljava/lang/String;I)V
    .locals 2
    .parameter "phone"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 778
    invoke-static {}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->checkForS3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 786
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 790
    :goto_0
    return-void

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->m_startRecordingHandler:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$83(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$StartRecordingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public stopRecording(Z)V
    .locals 1
    .parameter "forceQuickStop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->wizardState:Lcom/killermobile/totalrecall/s2/trial/WizardState;
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$84(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/WizardState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/killermobile/totalrecall/s2/trial/WizardState;->stopRecording(Z)V

    .line 795
    return-void
.end method

.method public toggleCallsType()V
    .locals 3

    .prologue
    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->calls:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$0(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    sget-object v2, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    if-ne v1, v2, :cond_0

    .line 469
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->this$0:Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->lastMeaningfulCallSetting:Lcom/killermobile/totalrecall/s2/trial/CallType;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;->access$42(Lcom/killermobile/totalrecall/s2/trial/TotalRecallService;)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    .line 468
    :goto_0
    invoke-virtual {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallService$2;->setCalls(I)V

    .line 475
    :goto_1
    return-void

    .line 470
    :cond_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
