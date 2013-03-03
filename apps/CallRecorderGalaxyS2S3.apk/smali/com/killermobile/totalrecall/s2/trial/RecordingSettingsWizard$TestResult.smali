.class Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;
.super Ljava/lang/Object;
.source "RecordingSettingsWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestResult"
.end annotation


# instance fields
.field private maybe:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private no:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private yes:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 665
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->yes:Ljava/util/SortedSet;

    .line 666
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->no:Ljava/util/SortedSet;

    .line 667
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->maybe:Ljava/util/SortedSet;

    .line 669
    return-void
.end method

.method static synthetic access$0(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 665
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->yes:Ljava/util/SortedSet;

    return-object v0
.end method

.method static synthetic access$1(Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;)Ljava/util/SortedSet;
    .locals 1
    .parameter

    .prologue
    .line 667
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->maybe:Ljava/util/SortedSet;

    return-object v0
.end method

.method public static fromJSON(Ljava/lang/String;)Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;
    .locals 9
    .parameter "json"

    .prologue
    .line 693
    new-instance v5, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;

    invoke-direct {v5}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;-><init>()V

    .line 695
    .local v5, result:Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_1

    .line 726
    :cond_0
    :goto_0
    return-object v5

    .line 698
    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 701
    .local v4, obj:Lorg/json/JSONObject;
    const-string v7, "yes"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 702
    .local v6, yesJSON:Lorg/json/JSONArray;
    if-eqz v6, :cond_2

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_4

    .line 707
    .end local v1           #i:I
    :cond_2
    const-string v7, "no"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 708
    .local v3, noJSON:Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v1, v7, :cond_5

    .line 714
    .end local v1           #i:I
    :cond_3
    const-string v7, "maybe"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 715
    .local v2, maybeJSON:Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 716
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->setMaybe(I)V

    .line 715
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 703
    .end local v2           #maybeJSON:Lorg/json/JSONArray;
    .end local v3           #noJSON:Lorg/json/JSONArray;
    :cond_4
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->setYes(I)V

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 709
    .restart local v3       #noJSON:Lorg/json/JSONArray;
    :cond_5
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->setNo(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 721
    .end local v1           #i:I
    .end local v3           #noJSON:Lorg/json/JSONArray;
    .end local v4           #obj:Lorg/json/JSONObject;
    .end local v6           #yesJSON:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 723
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setMaybe(I)V
    .locals 2
    .parameter "test"

    .prologue
    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting maybe for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->maybe:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 688
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->no:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 689
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->yes:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 690
    return-void
.end method

.method public setNo(I)V
    .locals 2
    .parameter "test"

    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting no for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->no:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->yes:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 682
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->maybe:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method public setYes(I)V
    .locals 2
    .parameter "test"

    .prologue
    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting yes for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->yes:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->no:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 675
    iget-object v0, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->maybe:Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 730
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 731
    .local v4, obj:Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 732
    .local v3, jsonYes:Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 733
    .local v2, jsonNo:Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 735
    .local v1, jsonMaybe:Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->yes:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 738
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->no:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 741
    iget-object v5, p0, Lcom/killermobile/totalrecall/s2/trial/RecordingSettingsWizard$TestResult;->maybe:Ljava/util/SortedSet;

    invoke-interface {v5}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 744
    const-string v5, "yes"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string v5, "no"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v5, "maybe"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 747
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "saving : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/killermobile/totalrecall/s2/trial/L;->p(Ljava/lang/String;)V

    .line 748
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 735
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 736
    .local v0, i:I
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_0

    .line 738
    .end local v0           #i:I
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 739
    .restart local v0       #i:I
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    .line 741
    .end local v0           #i:I
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 742
    .restart local v0       #i:I
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_2
.end method
