.class public Ln6/h;
.super Lm6/b;
.source "PassportJsbMethodGetTZSign.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln6/h$c;
    }
.end annotation


# instance fields
.field private a:Lr6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr6/a<",
            "Ljava/lang/String;",
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

    const-string v0, "getTZSign"

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
    const-string v2, "timeoutMs"

    .line 15
    .line 16
    const-wide/16 v3, 0x3a98

    .line 17
    .line 18
    invoke-virtual {p2, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    const-string v4, "tzSignParts"

    .line 23
    .line 24
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    new-array v4, v4, [Ljava/lang/String;

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-ge v5, v6, :cond_0

    .line 40
    .line 41
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    aput-object v6, v4, v5

    .line 46
    .line 47
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p2, p0, Ln6/h;->a:Lr6/a;

    .line 51
    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Lr6/a;->a()V

    .line 55
    .line 56
    .line 57
    :cond_1
    new-instance p2, Lr6/a;

    .line 58
    .line 59
    new-instance v5, Ln6/h$c;

    .line 60
    .line 61
    invoke-direct {v5, v0, v4, v2, v3}, Ln6/h$c;-><init>(Landroid/content/Context;[Ljava/lang/String;J)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Ln6/h$a;

    .line 65
    .line 66
    invoke-direct {v0, p0, p1, v1}, Ln6/h$a;-><init>(Ln6/h;Lcom/xiaomi/passport/webview/a;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Ln6/h$b;

    .line 70
    .line 71
    invoke-direct {v2, p0, p1, v1}, Ln6/h$b;-><init>(Ln6/h;Lcom/xiaomi/passport/webview/a;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p2, v5, v0, v2}, Lr6/a;-><init>(Lr6/a$a;Lr6/a$d;Lr6/a$b;)V

    .line 75
    .line 76
    .line 77
    iput-object p2, p0, Ln6/h;->a:Lr6/a;

    .line 78
    .line 79
    invoke-virtual {p2}, Lr6/a;->c()V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lm6/d;

    .line 83
    .line 84
    const/4 p2, 0x1

    .line 85
    invoke-direct {p1, p2}, Lm6/d;-><init>(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    new-instance p2, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;

    .line 91
    .line 92
    const/16 v0, 0x68

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-direct {p2, v0, v1, p1}, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    throw p2
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
.end method

.method public release(Lcom/xiaomi/passport/webview/a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm6/b;->release(Lcom/xiaomi/passport/webview/a;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ln6/h;->a:Lr6/a;

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
