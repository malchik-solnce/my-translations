.class public Lcom/killermobile/totalrecall/s2/trial/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contactItemsToJson(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 23
    .local p0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 25
    .local v2, res:Lorg/json/JSONArray;
    if-nez p0, :cond_1

    .line 38
    :cond_0
    return-object v2

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 28
    .local v0, ci:Lcom/killermobile/totalrecall/contacts/ContactItem;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v1, o:Lorg/json/JSONObject;
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 30
    const-string v4, "type"

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 32
    const-string v4, "number"

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_3
    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 34
    const-string v4, "title"

    invoke-virtual {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    :cond_4
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public static getIncrementedFileName(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .parameter "fileName"
    .parameter "path"

    .prologue
    const/4 v10, 0x0

    .line 62
    const-string v11, "."

    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, first:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, recordNames:[Ljava/lang/String;
    const/4 v9, -0x1

    .line 68
    .local v9, res:I
    if-eqz v8, :cond_8

    .line 70
    const-string v11, "(.*?)\\((\\d+)\\)\\.(.*?)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 74
    .local v6, numberPattern:Ljava/util/regex/Pattern;
    array-length v11, v8

    new-array v7, v11, [I

    .line 76
    .local v7, positions:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v11, v8

    if-lt v3, v11, :cond_1

    .line 92
    invoke-static {v7}, Ljava/util/Arrays;->sort([I)V

    .line 94
    array-length v11, v7

    :goto_1
    if-lt v10, v11, :cond_4

    .line 103
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v9, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    .end local v3           #i:I
    .end local v6           #numberPattern:Ljava/util/regex/Pattern;
    .end local v7           #positions:[I
    :goto_3
    return-object v5

    .line 78
    .restart local v3       #i:I
    .restart local v6       #numberPattern:Ljava/util/regex/Pattern;
    .restart local v7       #positions:[I
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v8, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v9, 0x1

    .line 79
    :cond_2
    aget-object v11, v8, v3

    invoke-virtual {v6, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 80
    .local v4, m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 83
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, filt:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 85
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v7, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v1           #filt:Ljava/lang/String;
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_4
    aget v3, v7, v10

    .line 95
    if-nez v3, :cond_5

    .line 94
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 96
    :cond_5
    if-ge v9, v3, :cond_6

    if-gtz v9, :cond_0

    .line 99
    :cond_6
    add-int/lit8 v9, v3, 0x1

    goto :goto_5

    .line 103
    :cond_7
    const-string v10, ""

    goto/16 :goto_2

    .end local v3           #i:I
    .end local v6           #numberPattern:Ljava/util/regex/Pattern;
    .end local v7           #positions:[I
    :cond_8
    move-object v5, p0

    .line 108
    goto :goto_3
.end method

.method public static jsonToContactItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/killermobile/totalrecall/contacts/ContactItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v3, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .line 57
    .end local v3           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    :cond_0
    return-object v3

    .line 47
    .restart local v3       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/killermobile/totalrecall/contacts/ContactItem;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 48
    new-instance v0, Lcom/killermobile/totalrecall/contacts/ContactItem;

    invoke-direct {v0}, Lcom/killermobile/totalrecall/contacts/ContactItem;-><init>()V

    .line 49
    .local v0, ci:Lcom/killermobile/totalrecall/contacts/ContactItem;
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 50
    .local v2, o:Lorg/json/JSONObject;
    if-nez v2, :cond_2

    .line 47
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_2
    const-string v4, "number"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "number"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setNumber(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 52
    :cond_3
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setType(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 53
    :cond_4
    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "title"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/killermobile/totalrecall/contacts/ContactItem;->setTitle(Ljava/lang/String;)Lcom/killermobile/totalrecall/contacts/ContactItem;

    .line 54
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
