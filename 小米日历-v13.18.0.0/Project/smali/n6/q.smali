.class public Ln6/q;
.super Lm6/b;
.source "PassportJsbMethodRequestAndSetLoginCookies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/q$c;
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

    const-string v0, "requestAndSetLoginCookies"

    return-object v0
.end method

.method public invoke(Lcom/xiaomi/passport/webview/a;Lorg/json/JSONObject;)Lm6/d;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/passport/jsb/PassportJsbMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/xiaomi/passport/accountmanager/g;->z(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/g;->l()Landroid/accounts/Account;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    new-instance p1, Lm6/d;

    .line 17
    .line 18
    invoke-direct {p1, v1}, Lm6/d;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const-string v0, "callbackId"

    .line 23
    .line 24
    invoke-virtual {p0, p2, v0}, Lm6/b;->getParamsStringFieldOrThrow(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/16 v2, 0x68

    .line 29
    .line 30
    :try_start_0
    const-string v3, "serviceIdCookieDomains"

    .line 31
    .line 32
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 33
    .line 34
    .line 35
    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ge v1, v4, :cond_1

    .line 46
    .line 47
    :try_start_1
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    new-instance v5, Landroid/util/Pair;

    .line 52
    .line 53
    const-string v6, "serviceId"

    .line 54
    .line 55
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    const-string v7, "cookieDomain"

    .line 60
    .line 61
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    new-instance p2, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;

    .line 76
    .line 77
    const-string v0, "error get service id"

    .line 78
    .line 79
    invoke-direct {p2, v2, v0, p1}, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    .line 81
    .line 82
    throw p2

    .line 83
    :cond_1
    iget-object p2, p0, Ln6/q;->a:Lr6/a;

    .line 84
    .line 85
    if-eqz p2, :cond_2

    .line 86
    .line 87
    invoke-virtual {p2}, Lr6/a;->a()V

    .line 88
    .line 89
    .line 90
    :cond_2
    new-instance p2, Lr6/a;

    .line 91
    .line 92
    new-instance v1, Ln6/q$c;

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-direct {v1, v2, v3}, Ln6/q$c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 99
    .line 100
    .line 101
    new-instance v2, Ln6/q$a;

    .line 102
    .line 103
    invoke-direct {v2, p0, p1, v0}, Ln6/q$a;-><init>(Ln6/q;Lcom/xiaomi/passport/webview/a;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance v3, Ln6/q$b;

    .line 107
    .line 108
    invoke-direct {v3, p0, p1, v0}, Ln6/q$b;-><init>(Ln6/q;Lcom/xiaomi/passport/webview/a;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, v1, v2, v3}, Lr6/a;-><init>(Lr6/a$a;Lr6/a$d;Lr6/a$b;)V

    .line 112
    .line 113
    .line 114
    iput-object p2, p0, Ln6/q;->a:Lr6/a;

    .line 115
    .line 116
    invoke-virtual {p2}, Lr6/a;->c()V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lm6/d;

    .line 120
    .line 121
    const/4 p2, 0x1

    .line 122
    invoke-direct {p1, p2}, Lm6/d;-><init>(Z)V

    .line 123
    .line 124
    .line 125
    return-object p1

    .line 126
    :catch_1
    move-exception p1

    .line 127
    new-instance p2, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;

    .line 128
    .line 129
    const-string v0, "no serviceIdCookieDomains array"

    .line 130
    .line 131
    invoke-direct {p2, v2, v0, p1}, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    throw p2
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
.end method

.method public release(Lcom/xiaomi/passport/webview/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm6/b;->release(Lcom/xiaomi/passport/webview/a;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ln6/q;->a:Lr6/a;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lr6/a;->a()V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Ln6/q;->a:Lr6/a;

    .line 13
    .line 14
    :cond_0
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
