.class public final enum Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
.super Ljava/lang/Enum;
.source "XmAccountVisibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_EXECUTION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_NONE:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_NOT_SUPPORT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_NO_PERMISSION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_PRE_ANDROID_O:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

.field public static final enum ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;


# instance fields
.field errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 2
    .line 3
    const-string v1, "ERROR_NONE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "successful"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 12
    .line 13
    new-instance v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 14
    .line 15
    const-string v3, "ERROR_NOT_SUPPORT"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "no support account service"

    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NOT_SUPPORT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 24
    .line 25
    new-instance v3, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 26
    .line 27
    const-string v5, "ERROR_PRE_ANDROID_O"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "no support account service, and pre o version"

    .line 31
    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_PRE_ANDROID_O:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 36
    .line 37
    new-instance v5, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 38
    .line 39
    const-string v7, "ERROR_NO_ACCOUNT"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "no account"

    .line 43
    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 48
    .line 49
    new-instance v7, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 50
    .line 51
    const-string v9, "ERROR_NO_PERMISSION"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "no access account service permission"

    .line 55
    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NO_PERMISSION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 60
    .line 61
    new-instance v9, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 62
    .line 63
    const-string v11, "ERROR_CANCELLED"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "task cancelled"

    .line 67
    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 72
    .line 73
    new-instance v11, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 74
    .line 75
    const-string v13, "ERROR_EXECUTION"

    .line 76
    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "execution error"

    .line 79
    .line 80
    invoke-direct {v11, v13, v14, v15}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v11, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_EXECUTION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 84
    .line 85
    new-instance v13, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 86
    .line 87
    const-string v15, "ERROR_UNKNOWN"

    .line 88
    .line 89
    const/4 v14, 0x7

    .line 90
    const-string v12, "unknown"

    .line 91
    .line 92
    invoke-direct {v13, v15, v14, v12}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v13, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_UNKNOWN:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 96
    .line 97
    const/16 v12, 0x8

    .line 98
    .line 99
    new-array v12, v12, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 100
    .line 101
    aput-object v0, v12, v2

    .line 102
    .line 103
    aput-object v1, v12, v4

    .line 104
    .line 105
    aput-object v3, v12, v6

    .line 106
    .line 107
    aput-object v5, v12, v8

    .line 108
    .line 109
    aput-object v7, v12, v10

    .line 110
    .line 111
    const/4 v0, 0x5

    .line 112
    aput-object v9, v12, v0

    .line 113
    .line 114
    const/4 v0, 0x6

    .line 115
    aput-object v11, v12, v0

    .line 116
    .line 117
    aput-object v13, v12, v14

    .line 118
    .line 119
    sput-object v12, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->$VALUES:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 120
    .line 121
    return-void
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

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->errorMsg:Ljava/lang/String;

    .line 5
    .line 6
    return-void
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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

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

.method public static values()[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->$VALUES:[Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

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
