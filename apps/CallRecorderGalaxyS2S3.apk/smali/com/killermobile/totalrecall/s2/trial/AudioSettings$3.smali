.class Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;
.super Ljava/lang/Object;
.source "AudioSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;


# direct methods
.method constructor <init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;)Lcom/killermobile/totalrecall/s2/trial/AudioSettings;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 175
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 132
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    const-class v5, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, durationPicker:Landroid/content/Intent;
    const-string v4, "com.killermobile.totalrecall.DURATION"

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->duration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$1(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getDuration()J

    move-result-wide v5

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 134
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    invoke-virtual {v4, v0, v7}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 140
    .end local v0           #durationPicker:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    const-class v5, Lcom/killermobile/totalrecall/s2/trial/DurationPickerDialog;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v1, minDurationPicker:Landroid/content/Intent;
    const-string v4, "com.killermobile.totalrecall.DURATION"

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->minimumDuration:Lcom/killermobile/totalrecall/s2/trial/MaxDuration;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$2(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Lcom/killermobile/totalrecall/s2/trial/MaxDuration;

    move-result-object v5

    invoke-virtual {v5}, Lcom/killermobile/totalrecall/s2/trial/MaxDuration;->getDuration()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 142
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    const/4 v5, 0x4

    invoke-virtual {v4, v1, v5}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 148
    .end local v1           #minDurationPicker:Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    const-class v5, Lcom/killermobile/totalrecall/s2/trial/SizePickerDialog;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v3, sizePicker:Landroid/content/Intent;
    const-string v4, "com.killermobile.totalrecall.SIZE"

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #getter for: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->size:Lcom/killermobile/totalrecall/s2/trial/MaxSize;
    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$3(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Lcom/killermobile/totalrecall/s2/trial/MaxSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/killermobile/totalrecall/s2/trial/MaxSize;->getSize()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 150
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    const/4 v5, 0x2

    invoke-virtual {v4, v3, v5}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 156
    .end local v3           #sizePicker:Landroid/content/Intent;
    :pswitch_4
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    #calls: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->parseMounts()Ljava/util/Set;
    invoke-static {v4}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$4(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;)Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 157
    .local v2, mounts:[Ljava/lang/CharSequence;
    array-length v4, v2

    if-lez v4, :cond_0

    .line 158
    array-length v4, v2

    if-ne v4, v7, :cond_1

    .line 159
    iget-object v4, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->showDestinationPicker(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings;->access$5(Lcom/killermobile/totalrecall/s2/trial/AudioSettings;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;->this$0:Lcom/killermobile/totalrecall/s2/trial/AudioSettings;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Выберите хранилище"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 162
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3$1;

    invoke-direct {v5, p0, v2}, Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/AudioSettings$3;[Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 167
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0005
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
