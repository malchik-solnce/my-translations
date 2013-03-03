.class Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SequenceStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateListener"
.end annotation


# instance fields
.field private lastState:I

.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;


# direct methods
.method private constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;-><init>(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v1, 0x2

    .line 324
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->lastState:I

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    .line 325
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

    #calls: Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onCallStarted()V
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->access$0(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;)V

    .line 329
    :cond_0
    :goto_0
    iput p1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->lastState:I

    .line 330
    return-void

    .line 326
    :cond_1
    iget v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->lastState:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

    #calls: Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onCallEnded()V
    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->access$1(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;)V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 3
    .parameter "listening"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 334
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz p1, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->lastState:I

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->this$0:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->phoneStateListener:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;
    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->access$2(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;)Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;

    move-result-object v2

    if-eqz p1, :cond_1

    const/16 v1, 0x20

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 338
    return-void

    .line 337
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
