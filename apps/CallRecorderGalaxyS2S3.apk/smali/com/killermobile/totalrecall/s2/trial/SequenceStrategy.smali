.class public Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;
.super Landroid/app/Activity;
.source "SequenceStrategy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;
    }
.end annotation


# static fields
.field public static final FIRST_STRATEGY:Ljava/lang/String; = "com.killermobile.totalrecall.FIRST_STRATEGY"

.field private static final PREF_SEQUENCE_STRATEGY_DUMMY_NUMBER:Ljava/lang/String; = "sequence_strategy_dummy_number"

.field private static final REQUEST_CONTACT:I = 0x3e8

.field private static final REQUEST_DIAL:I = 0x3e9

.field public static final SECOND_STRATEGY:Ljava/lang/String; = "com.killermobile.totalrecall.SECOND_STRATEGY"


# instance fields
.field private buttonCancel:Landroid/widget/Button;

.field private buttonDial:Landroid/widget/Button;

.field private callType:Lcom/killermobile/totalrecall/s2/trial/CallType;

.field private dummyFilePath:Ljava/lang/String;

.field private editPhone:Landroid/widget/EditText;

.field private firstStrategy:I

.field private final phoneStateListener:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;

.field private recorder:Landroid/media/MediaRecorder;

.field private secondStrategy:I

.field private service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 341
    new-instance v0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;-><init>(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;)V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->phoneStateListener:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onCallStarted()V

    return-void
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onCallEnded()V

    return-void
.end method

.method static synthetic access$2(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;)Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;
    .locals 1
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->phoneStateListener:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onNumberSelected(Ljava/lang/String;)V

    return-void
.end method

.method private deleteDummyFile()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->dummyFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, dummy:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 175
    :cond_0
    return-void
.end method

.method private dialNumber()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v3, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 186
    .local v2, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "sequence_strategy_dummy_number"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    invoke-direct {p0, v4}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->setServiceRecording(Z)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    const/16 v3, 0x3e9

    invoke-virtual {p0, v0, v3}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 199
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #prefs:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 197
    :cond_0
    const-string v3, "Сначала введите или выберите номер"

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private endRecording()V
    .locals 2

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->deleteDummyFile()V

    .line 316
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static launch(Landroid/content/Context;IIJ)V
    .locals 6
    .parameter "context"
    .parameter "firstStrategy"
    .parameter "secondStrategy"
    .parameter "delayMs"

    .prologue
    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.killermobile.totalrecall.FIRST_STRATEGY"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    const-string v3, "com.killermobile.totalrecall.SECOND_STRATEGY"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 51
    const/4 v3, 0x0

    const/high16 v4, 0x4000

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 52
    .local v2, pending:Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    .local v0, alarm:Landroid/app/AlarmManager;
    const/4 v3, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 54
    return-void
.end method

.method private onCallEnded()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 286
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->endRecording()V

    .line 287
    invoke-direct {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->setServiceRecording(Z)V

    .line 288
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->phoneStateListener:Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$CallStateListener;->setListening(Z)V

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->secondStrategy:I

    invoke-interface {v1, v2}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setRecorderAudioSource(I)V

    .line 292
    const-string v1, "Процедура настройки записи звонков завершена"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->finish()V

    .line 298
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onCallStarted()V
    .locals 2

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->startRecording()V

    .line 280
    const-string v0, "Пожалуйста, завершите этот вызов через пару секунд"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 281
    return-void
.end method

.method private onContactSelected(Landroid/content/Intent;)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 204
    .local v6, contactsCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const-string v0, "has_phone_number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, hasPhone:Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "contact_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 211
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 213
    .local v12, numbersCursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, name:Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v11, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v0, "data1"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, number:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 216
    if-nez v0, :cond_0

    .line 220
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v9, v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->selectNumber(Ljava/lang/String;[Ljava/lang/String;)V

    .line 226
    .end local v7           #hasPhone:Ljava/lang/String;
    .end local v8           #id:Ljava/lang/String;
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    .end local v11           #numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #numbersCursor:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    return-void
.end method

.method private onNumberSelected(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 247
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 248
    .local v0, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "sequence_strategy_dummy_number"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method

.method private selectContact()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method

.method private selectNumber(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "numbers"

    .prologue
    .line 231
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-direct {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onNumberSelected(Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 237
    const/4 v1, -0x1

    new-instance v2, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$1;

    invoke-direct {v2, p0, p2}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy$1;-><init>(Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;[Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private setServiceRecording(Z)V
    .locals 3
    .parameter "record"

    .prologue
    .line 272
    :try_start_0
    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->callType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I

    move-result v1

    :goto_0
    invoke-interface {v2, v1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->setCalls(I)V

    .line 276
    :goto_1
    return-void

    .line 272
    :cond_0
    sget-object v1, Lcom/killermobile/totalrecall/s2/trial/CallType;->NONE:Lcom/killermobile/totalrecall/s2/trial/CallType;

    invoke-virtual {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->ordinal()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private startRecording()V
    .locals 3

    .prologue
    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 303
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->dummyFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 259
    invoke-direct {p0, p3}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onContactSelected(Landroid/content/Intent;)V

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->onCallEnded()V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 152
    :pswitch_0
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->dialNumber()V

    goto :goto_0

    .line 155
    :pswitch_1
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->finish()V

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x7f0a0112
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.killermobile.totalrecall.FIRST_STRATEGY"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->firstStrategy:I

    .line 74
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.killermobile.totalrecall.SECOND_STRATEGY"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->secondStrategy:I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Начало последовательности правил: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->firstStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " затем "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->secondStrategy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->i(Ljava/lang/String;)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dummy_record_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->dummyFilePath:Ljava/lang/String;

    .line 81
    const-string v0, "Total Recall"

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->setContentView(I)V

    .line 85
    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->editPhone:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f0a0112

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->buttonDial:Landroid/widget/Button;

    .line 87
    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->buttonCancel:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->buttonDial:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->buttonCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->editPhone:Landroid/widget/EditText;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "sequence_strategy_dummy_number"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->editPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 96
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->buttonDial:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 98
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    invoke-virtual {v0, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->addServiceConnectedListener(Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;)V

    .line 99
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    if-eqz v1, :cond_0

    .line 131
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->setServiceRecording(Z)V

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->deleteDummyFile()V

    .line 136
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;

    invoke-virtual {v1, p0}, Lcom/killermobile/totalrecall/s2/trial/TotalRecallApplication;->removeServiceConnectedListener(Lcom/killermobile/totalrecall/s2/trial/ServiceConnectedListener;)V

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 146
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 167
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 164
    :pswitch_0
    invoke-direct {p0}, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->selectContact()V

    .line 165
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x7f0a0111
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceConnected(Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->service:Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;

    .line 105
    :try_start_0
    invoke-interface {p1}, Lcom/killermobile/totalrecall/s2/trial/ITotalRecallService;->getCalls()I

    move-result v1

    invoke-static {v1}, Lcom/killermobile/totalrecall/s2/trial/CallType;->fromOrdinal(I)Lcom/killermobile/totalrecall/s2/trial/CallType;

    move-result-object v1

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->callType:Lcom/killermobile/totalrecall/s2/trial/CallType;

    .line 107
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    .line 108
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    iget v2, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->firstStrategy:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 109
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 110
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 111
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->dummyFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 114
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->buttonDial:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 126
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 120
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 121
    iget-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/killermobile/totalrecall/s2/trial/SequenceStrategy;->recorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
