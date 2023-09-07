.class public Ln6/d;
.super Lm6/b;
.source "PassportJsbMethodGetDeviceInfo.java"


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

    const-string v0, "getDeviceInfo"

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
    move-result-object p1

    .line 5
    new-instance p2, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string v0, "deviceId"

    .line 11
    .line 12
    new-instance v1, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    .line 13
    .line 14
    invoke-static {}, Lcom/xiaomi/accountsdk/account/e;->b()Landroid/app/Application;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->c()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    .line 27
    .line 28
    :try_start_1
    const-string v0, "miui.os.Build"

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "IS_TABLET"

    .line 35
    .line 36
    invoke-static {v0, v1}, Lo5/c;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 46
    const-string v1, "normal"

    .line 47
    .line 48
    const-string v2, "large"

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    :try_start_2
    const-string p1, "pad"

    .line 53
    .line 54
    move-object v1, v2

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const-string v0, "android.os.SystemProperties"

    .line 57
    .line 58
    const-string v3, "getInt"

    .line 59
    .line 60
    const/4 v4, 0x2

    .line 61
    new-array v5, v4, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v6, "persist.sys.muiltdisplay_type"

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    aput-object v6, v5, v7

    .line 67
    .line 68
    const/4 v6, 0x1

    .line 69
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    aput-object v7, v5, v6

    .line 74
    .line 75
    invoke-static {v0, v3, v5}, Lo5/c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    check-cast v0, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-ne v0, v4, :cond_2

    .line 88
    .line 89
    const-string v0, "fold-phone"

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 100
    .line 101
    and-int/lit8 p1, p1, 0xf

    .line 102
    .line 103
    const/4 v3, 0x3

    .line 104
    if-ne p1, v3, :cond_1

    .line 105
    .line 106
    move-object v1, v2

    .line 107
    :cond_1
    move-object p1, v0

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const-string p1, "phone"

    .line 110
    .line 111
    :goto_0
    const-string v0, "miuiDeviceType"

    .line 112
    .line 113
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    const-string p1, "miuiScreenType"

    .line 117
    .line 118
    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 119
    .line 120
    .line 121
    :catch_0
    :try_start_3
    new-instance p1, Lm6/d;

    .line 122
    .line 123
    invoke-direct {p1, p2}, Lm6/d;-><init>(Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 124
    .line 125
    .line 126
    return-object p1

    .line 127
    :catch_1
    new-instance p1, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;

    .line 128
    .line 129
    const/16 p2, 0x69

    .line 130
    .line 131
    const-string v0, "should never happen"

    .line 132
    .line 133
    invoke-direct {p1, p2, v0}, Lcom/xiaomi/passport/jsb/PassportJsbMethodException;-><init>(ILjava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p1
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
