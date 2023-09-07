.class public abstract enum Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;
.super Ljava/lang/Enum;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_ACCESS_DENIED:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_AUTH_FAIL:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_CAPTCHA:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_DEVICE_ID:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_GET_PHONE_VERIFY_CODE_OVER_LIMIT:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_NETWORK:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_PASSWORD:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_SAME_NEW_AND_OLD_PASS:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_SERVER:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_UNKNOWN:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_USER_ACTION_RESTRICTED:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum ERROR_VERIFY_CODE:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

.field public static final enum SUCCESS:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$1;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$1;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->SUCCESS:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 10
    .line 11
    new-instance v1, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$2;

    .line 12
    .line 13
    const-string v3, "ERROR_PASSWORD"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$2;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_PASSWORD:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 20
    .line 21
    new-instance v3, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$3;

    .line 22
    .line 23
    const-string v5, "ERROR_AUTH_FAIL"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$3;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_AUTH_FAIL:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 30
    .line 31
    new-instance v5, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$4;

    .line 32
    .line 33
    const-string v7, "ERROR_NETWORK"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$4;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_NETWORK:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 40
    .line 41
    new-instance v7, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$5;

    .line 42
    .line 43
    const-string v9, "ERROR_SERVER"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$5;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_SERVER:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 50
    .line 51
    new-instance v9, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$6;

    .line 52
    .line 53
    const-string v11, "ERROR_ACCESS_DENIED"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$6;-><init>(Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_ACCESS_DENIED:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 60
    .line 61
    new-instance v11, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$7;

    .line 62
    .line 63
    const-string v13, "ERROR_CAPTCHA"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$7;-><init>(Ljava/lang/String;I)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_CAPTCHA:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 70
    .line 71
    new-instance v13, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$8;

    .line 72
    .line 73
    const-string v15, "ERROR_DEVICE_ID"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$8;-><init>(Ljava/lang/String;I)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_DEVICE_ID:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 80
    .line 81
    new-instance v15, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$9;

    .line 82
    .line 83
    const-string v14, "ERROR_VERIFY_CODE"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$9;-><init>(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_VERIFY_CODE:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 91
    .line 92
    new-instance v14, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$10;

    .line 93
    .line 94
    const-string v12, "ERROR_USER_ACTION_RESTRICTED"

    .line 95
    .line 96
    const/16 v10, 0x9

    .line 97
    .line 98
    invoke-direct {v14, v12, v10}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$10;-><init>(Ljava/lang/String;I)V

    .line 99
    .line 100
    .line 101
    sput-object v14, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_USER_ACTION_RESTRICTED:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 102
    .line 103
    new-instance v12, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$11;

    .line 104
    .line 105
    const-string v10, "ERROR_GET_PHONE_VERIFY_CODE_OVER_LIMIT"

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v12, v10, v8}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$11;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_GET_PHONE_VERIFY_CODE_OVER_LIMIT:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 113
    .line 114
    new-instance v10, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$12;

    .line 115
    .line 116
    const-string v8, "ERROR_SAME_NEW_AND_OLD_PASS"

    .line 117
    .line 118
    const/16 v6, 0xb

    .line 119
    .line 120
    invoke-direct {v10, v8, v6}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$12;-><init>(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    sput-object v10, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_SAME_NEW_AND_OLD_PASS:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 124
    .line 125
    new-instance v8, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$13;

    .line 126
    .line 127
    const-string v6, "ERROR_UNKNOWN"

    .line 128
    .line 129
    const/16 v4, 0xc

    .line 130
    .line 131
    invoke-direct {v8, v6, v4}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType$13;-><init>(Ljava/lang/String;I)V

    .line 132
    .line 133
    .line 134
    sput-object v8, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->ERROR_UNKNOWN:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 135
    .line 136
    const/16 v6, 0xd

    .line 137
    .line 138
    new-array v6, v6, [Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 139
    .line 140
    aput-object v0, v6, v2

    .line 141
    .line 142
    const/4 v0, 0x1

    .line 143
    aput-object v1, v6, v0

    .line 144
    .line 145
    const/4 v0, 0x2

    .line 146
    aput-object v3, v6, v0

    .line 147
    .line 148
    const/4 v0, 0x3

    .line 149
    aput-object v5, v6, v0

    .line 150
    .line 151
    const/4 v0, 0x4

    .line 152
    aput-object v7, v6, v0

    .line 153
    .line 154
    const/4 v0, 0x5

    .line 155
    aput-object v9, v6, v0

    .line 156
    .line 157
    const/4 v0, 0x6

    .line 158
    aput-object v11, v6, v0

    .line 159
    .line 160
    const/4 v0, 0x7

    .line 161
    aput-object v13, v6, v0

    .line 162
    .line 163
    const/16 v0, 0x8

    .line 164
    .line 165
    aput-object v15, v6, v0

    .line 166
    .line 167
    const/16 v0, 0x9

    .line 168
    .line 169
    aput-object v14, v6, v0

    .line 170
    .line 171
    const/16 v0, 0xa

    .line 172
    .line 173
    aput-object v12, v6, v0

    .line 174
    .line 175
    const/16 v0, 0xb

    .line 176
    .line 177
    aput-object v10, v6, v0

    .line 178
    .line 179
    aput-object v8, v6, v4

    .line 180
    .line 181
    sput-object v6, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->$VALUES:[Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 182
    .line 183
    return-void
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

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/xiaomi/passport/ui/settings/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 8
    .line 9
    return-object p0
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

.method public static values()[Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->$VALUES:[Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 8
    .line 9
    return-object v0
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
.method public abstract getErrorMessageResId()I
.end method

.method public success()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;->SUCCESS:Lcom/xiaomi/passport/ui/settings/SimpleAsyncTask$ResultType;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
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
