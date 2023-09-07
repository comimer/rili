.class Lcom/miui/maml/ActionCommand$IntentCommand;
.super Lcom/miui/maml/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;
    }
.end annotation


# static fields
.field private static final TAG_FALLBACK:Ljava/lang/String; = "Fallback"

.field public static final TAG_NAME:Ljava/lang/String; = "IntentCommand"


# instance fields
.field private mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

.field private mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

.field private mFlags:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentInfo:Lcom/miui/maml/util/IntentInfo;

.field private mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field private mIntentVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 7
    .line 8
    new-instance v1, Lcom/miui/maml/util/IntentInfo;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, p2, v2}, Lcom/miui/maml/util/IntentInfo;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 18
    .line 19
    const-string v1, "broadcast"

    .line 20
    .line 21
    invoke-interface {p2, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const-string v3, "type"

    .line 30
    .line 31
    invoke-interface {p2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-nez v2, :cond_3

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v1, "service"

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string v1, "activity"

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const-string v0, "var"

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 77
    .line 78
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 79
    .line 80
    const-string v0, "intentVar"

    .line 81
    .line 82
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    const/4 v3, 0x0

    .line 99
    invoke-direct {v1, v0, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    :goto_0
    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 106
    .line 107
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 108
    .line 109
    :cond_4
    :goto_1
    const/4 v0, -0x1

    .line 110
    const-string v1, "flags"

    .line 111
    .line 112
    invoke-static {p2, v1, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 117
    .line 118
    const-string v0, "activityOption"

    .line 119
    .line 120
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_5

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    goto :goto_2

    .line 132
    :cond_5
    new-instance v1, Lcom/miui/maml/ActionCommand$ObjVar;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-direct {v1, v0, v2}, Lcom/miui/maml/ActionCommand$ObjVar;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;)V

    .line 139
    .line 140
    .line 141
    move-object v0, v1

    .line 142
    :goto_2
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    .line 143
    .line 144
    const-string v0, "Fallback"

    .line 145
    .line 146
    invoke-static {p2, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-eqz p2, :cond_6

    .line 151
    .line 152
    new-instance v0, Lcom/miui/maml/CommandTrigger;

    .line 153
    .line 154
    invoke-direct {v0, p2, p1}, Lcom/miui/maml/CommandTrigger;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 158
    .line 159
    :cond_6
    return-void
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method


# virtual methods
.method protected doPerform()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$IntentCommand$IntentType:[I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    aget v0, v0, v1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    if-eq v0, v1, :cond_3

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x4

    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentVar:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    .line 36
    if-eqz v0, :cond_a

    .line 37
    .line 38
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 50
    .line 51
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->startService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 52
    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mActivityOptionsBundle:Lcom/miui/maml/ActionCommand$ObjVar;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand$ObjVar;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/os/Bundle;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 88
    .line 89
    const/high16 v3, 0x10000

    .line 90
    .line 91
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-lez v1, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getScreenElement()Lcom/miui/maml/elements/ScreenElement;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getContextAndRect()Landroid/util/Pair;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_5

    .line 116
    .line 117
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 118
    .line 119
    const-string v3, "maml_view_location_on_screen"

    .line 120
    .line 121
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v4, Landroid/os/Parcelable;

    .line 124
    .line 125
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v1, Landroid/content/Context;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 133
    .line 134
    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 143
    .line 144
    invoke-static {v1, v2, v0}, Lcom/miui/maml/util/Utils;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_7

    .line 159
    .line 160
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    goto :goto_1

    .line 167
    :cond_7
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 168
    .line 169
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_8

    .line 182
    .line 183
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    :goto_1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 198
    .line 199
    invoke-static {v2, v1, v3, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->PreloadedAppPolicy_installPreloadedDataApp(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_8
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 206
    .line 207
    const-string v2, "ActionCommand"

    .line 208
    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    const-string v0, "fail to send Intent, fallback..."

    .line 212
    .line 213
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 219
    .line 220
    .line 221
    goto :goto_2

    .line 222
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    :cond_a
    :goto_2
    return-void
    .line 230
    .line 231
    .line 232
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo;->getId()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findTask(Ljava/lang/String;)Lcom/miui/maml/util/Task;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->set(Lcom/miui/maml/util/Task;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/util/IntentInfo;->getAction()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isProtectedIntent(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 44
    .line 45
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentInfo:Lcom/miui/maml/util/IntentInfo;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Lcom/miui/maml/util/IntentInfo;->update(Landroid/content/Intent;)V

    .line 53
    .line 54
    .line 55
    iget v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFlags:I

    .line 56
    .line 57
    const/4 v1, -0x1

    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    .line 60
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntentType:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 67
    .line 68
    sget-object v1, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    .line 69
    .line 70
    if-ne v0, v1, :cond_3

    .line 71
    .line 72
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mIntent:Landroid/content/Intent;

    .line 73
    .line 74
    const/high16 v1, 0x34000000

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 84
    .line 85
    .line 86
    :cond_4
    return-void
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$IntentCommand;->mFallbackTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
