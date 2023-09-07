.class public Ln6/f;
.super Lm6/b;
.source "PassportJsbMethodGetSIMInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/f$c;
    }
.end annotation


# instance fields
.field private a:Lr6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr6/a<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lm6/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
    .line 6
    .line 7
    .line 8
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


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getSIMInfo"

    return-object v0
.end method

.method public invoke(Lcom/xiaomi/passport/webview/a;Lorg/json/JSONObject;)Lm6/d;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/jsb/PassportJsbMethodException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lm6/b;->checkUrlDomainPermission(Lcom/xiaomi/passport/webview/a;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "callbackId"

    .line 9
    .line 10
    invoke-virtual {p0, p2, v1}, Lm6/b;->getParamsStringFieldOrThrow(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    const-string v2, "simInfoTypes"

    .line 15
    .line 16
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    new-array v2, v2, [Ljava/lang/String;

    .line 25
    .line 26
    new-instance v3, Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "slotIndex"

    .line 32
    .line 33
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v4, "subId"

    .line 37
    .line 38
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const-string v4, "mccmnc"

    .line 42
    .line 43
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const-string v4, "networkMCCMNC"

    .line 47
    .line 48
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const-string v4, "inService"

    .line 52
    .line 53
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const-string v4, "mobileDataEnable"

    .line 57
    .line 58
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const-string v4, "activationAccountCert"

    .line 62
    .line 63
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    const-string v4, "operatorAccountCert"

    .line 67
    .line 68
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    const-string v4, "activationOrOperatorAccountCert"

    .line 72
    .line 73
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    const/4 v4, 0x0

    .line 77
    move v5, v4

    .line 78
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-ge v5, v6, :cond_1

    .line 83
    .line 84
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    aput-object v6, v2, v5

    .line 89
    .line 90
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-nez v6, :cond_0

    .line 95
    .line 96
    new-instance p1, Lm6/d;

    .line 97
    .line 98
    invoke-direct {p1, v4}, Lm6/d;-><init>(Z)V

    .line 99
    .line 100
    .line 101
    return-object p1

    .line 102
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    iget-object p2, p0, Ln6/f;->a:Lr6/a;

    .line 106
    .line 107
    if-eqz p2, :cond_2

    .line 108
    .line 109
    invoke-virtual {p2}, Lr6/a;->a()V

    .line 110
    .line 111
    .line 112
    :cond_2
    new-instance p2, Lr6/a;

    .line 113
    .line 114
    new-instance v3, Ln6/f$c;

    .line 115
    .line 116
    invoke-direct {v3, v0, v2}, Ln6/f$c;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v0, Ln6/f$a;

    .line 120
    .line 121
    invoke-direct {v0, p0, p1, v1}, Ln6/f$a;-><init>(Ln6/f;Lcom/xiaomi/passport/webview/a;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Ln6/f$b;

    .line 125
    .line 126
    invoke-direct {v2, p0, p1, v1}, Ln6/f$b;-><init>(Ln6/f;Lcom/xiaomi/passport/webview/a;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p2, v3, v0, v2}, Lr6/a;-><init>(Lr6/a$a;Lr6/a$d;Lr6/a$b;)V

    .line 130
    .line 131
    .line 132
    iput-object p2, p0, Ln6/f;->a:Lr6/a;

    .line 133
    .line 134
    invoke-virtual {p2}, Lr6/a;->c()V

    .line 135
    .line 136
    .line 137
    new-instance p1, Lm6/d;

    .line 138
    .line 139
    const/4 p2, 0x1

    .line 140
    invoke-direct {p1, p2}, Lm6/d;-><init>(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    return-object p1

    .line 144
    :catch_0
    move-exception p1

    .line 145
    new-instance p2, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;

    .line 146
    .line 147
    const/16 v0, 0x68

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-direct {p2, v0, v1, p1}, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .line 155
    .line 156
    throw p2
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
.end method

.method public release(Lcom/xiaomi/passport/webview/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm6/b;->release(Lcom/xiaomi/passport/webview/a;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ln6/f;->a:Lr6/a;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lr6/a;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
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
