.class public final enum Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;
.super Ljava/lang/Enum;
.source "ErrorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/verificationsdk/internal/ErrorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_ACCESSDENIED_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_AUTHENTICATIONFAILURE_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_CONNECT_TIMEOUT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_CONNECT_UNREACHABLE_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_ENCRYPT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_EVENTID_EXPIRED:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_HUMANCOMPUTER_VERIFICATION_FAILED:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_INTERRUPTED_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_IO_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_JSON_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_NETWORK_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_REGISTRATION_SESSION_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_SERVER:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_SOCKET_TIMEOUT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

.field public static final enum ERROR_VERIFY_SERVER:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    new-instance v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 2
    .line 3
    const-string v1, "ERROR_SERVER"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_SERVER:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 11
    .line 12
    new-instance v1, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 13
    .line 14
    const-string v3, "ERROR_JSON_EXCEPTION"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v3, v4, v4}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_JSON_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 21
    .line 22
    new-instance v3, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 23
    .line 24
    const-string v5, "ERROR_ACCESSDENIED_EXCEPTION"

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v3, v5, v6, v6}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v3, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_ACCESSDENIED_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 31
    .line 32
    new-instance v5, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 33
    .line 34
    const-string v7, "ERROR_AUTHENTICATIONFAILURE_EXCEPTION"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    invoke-direct {v5, v7, v8, v8}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v5, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_AUTHENTICATIONFAILURE_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 41
    .line 42
    new-instance v7, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 43
    .line 44
    const-string v9, "ERROR_NETWORK_EXCEPTION"

    .line 45
    .line 46
    const/4 v10, 0x4

    .line 47
    invoke-direct {v7, v9, v10, v10}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v7, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_NETWORK_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 51
    .line 52
    new-instance v9, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 53
    .line 54
    const-string v11, "ERROR_ENCRYPT_EXCEPTION"

    .line 55
    .line 56
    const/4 v12, 0x5

    .line 57
    invoke-direct {v9, v11, v12, v12}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v9, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_ENCRYPT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 61
    .line 62
    new-instance v11, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 63
    .line 64
    const-string v13, "ERROR_INTERRUPTED_EXCEPTION"

    .line 65
    .line 66
    const/4 v14, 0x6

    .line 67
    invoke-direct {v11, v13, v14, v14}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v11, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_INTERRUPTED_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 71
    .line 72
    new-instance v13, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 73
    .line 74
    const-string v15, "ERROR_HUMANCOMPUTER_VERIFICATION_FAILED"

    .line 75
    .line 76
    const/4 v14, 0x7

    .line 77
    invoke-direct {v13, v15, v14, v14}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    sput-object v13, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_HUMANCOMPUTER_VERIFICATION_FAILED:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 81
    .line 82
    new-instance v15, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 83
    .line 84
    const-string v14, "ERROR_EVENTID_EXPIRED"

    .line 85
    .line 86
    const/16 v12, 0x8

    .line 87
    .line 88
    invoke-direct {v15, v14, v12, v12}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 89
    .line 90
    .line 91
    sput-object v15, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_EVENTID_EXPIRED:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 92
    .line 93
    new-instance v14, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 94
    .line 95
    const-string v12, "ERROR_CONNECT_UNREACHABLE_EXCEPTION"

    .line 96
    .line 97
    const/16 v10, 0x9

    .line 98
    .line 99
    invoke-direct {v14, v12, v10, v10}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 100
    .line 101
    .line 102
    sput-object v14, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_CONNECT_UNREACHABLE_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 103
    .line 104
    new-instance v12, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 105
    .line 106
    const-string v10, "ERROR_SOCKET_TIMEOUT_EXCEPTION"

    .line 107
    .line 108
    const/16 v8, 0xa

    .line 109
    .line 110
    invoke-direct {v12, v10, v8, v8}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    sput-object v12, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_SOCKET_TIMEOUT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 114
    .line 115
    new-instance v10, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 116
    .line 117
    const-string v8, "ERROR_CONNECT_TIMEOUT_EXCEPTION"

    .line 118
    .line 119
    const/16 v6, 0xb

    .line 120
    .line 121
    invoke-direct {v10, v8, v6, v6}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 122
    .line 123
    .line 124
    sput-object v10, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_CONNECT_TIMEOUT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 125
    .line 126
    new-instance v8, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 127
    .line 128
    const-string v6, "ERROR_IO_EXCEPTION"

    .line 129
    .line 130
    const/16 v4, 0xc

    .line 131
    .line 132
    invoke-direct {v8, v6, v4, v4}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 133
    .line 134
    .line 135
    sput-object v8, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_IO_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 136
    .line 137
    new-instance v6, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 138
    .line 139
    const-string v4, "ERROR_REGISTRATION_SESSION_EXCEPTION"

    .line 140
    .line 141
    const/16 v2, 0xd

    .line 142
    .line 143
    invoke-direct {v6, v4, v2, v2}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 144
    .line 145
    .line 146
    sput-object v6, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_REGISTRATION_SESSION_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 147
    .line 148
    new-instance v4, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 149
    .line 150
    const-string v2, "ERROR_VERIFY_SERVER"

    .line 151
    .line 152
    move-object/from16 v17, v6

    .line 153
    .line 154
    const/16 v6, 0xe

    .line 155
    .line 156
    invoke-direct {v4, v2, v6, v6}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;-><init>(Ljava/lang/String;II)V

    .line 157
    .line 158
    .line 159
    sput-object v4, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_VERIFY_SERVER:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 160
    .line 161
    const/16 v2, 0xf

    .line 162
    .line 163
    new-array v2, v2, [Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 164
    .line 165
    const/16 v16, 0x0

    .line 166
    .line 167
    aput-object v0, v2, v16

    .line 168
    .line 169
    const/4 v0, 0x1

    .line 170
    aput-object v1, v2, v0

    .line 171
    .line 172
    const/4 v0, 0x2

    .line 173
    aput-object v3, v2, v0

    .line 174
    .line 175
    const/4 v0, 0x3

    .line 176
    aput-object v5, v2, v0

    .line 177
    .line 178
    const/4 v0, 0x4

    .line 179
    aput-object v7, v2, v0

    .line 180
    .line 181
    const/4 v0, 0x5

    .line 182
    aput-object v9, v2, v0

    .line 183
    .line 184
    const/4 v0, 0x6

    .line 185
    aput-object v11, v2, v0

    .line 186
    .line 187
    const/4 v0, 0x7

    .line 188
    aput-object v13, v2, v0

    .line 189
    .line 190
    const/16 v0, 0x8

    .line 191
    .line 192
    aput-object v15, v2, v0

    .line 193
    .line 194
    const/16 v0, 0x9

    .line 195
    .line 196
    aput-object v14, v2, v0

    .line 197
    .line 198
    const/16 v0, 0xa

    .line 199
    .line 200
    aput-object v12, v2, v0

    .line 201
    .line 202
    const/16 v0, 0xb

    .line 203
    .line 204
    aput-object v10, v2, v0

    .line 205
    .line 206
    const/16 v0, 0xc

    .line 207
    .line 208
    aput-object v8, v2, v0

    .line 209
    .line 210
    const/16 v0, 0xd

    .line 211
    .line 212
    aput-object v17, v2, v0

    .line 213
    .line 214
    aput-object v4, v2, v6

    .line 215
    .line 216
    sput-object v2, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->$VALUES:[Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 217
    .line 218
    return-void
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

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->errorCode:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

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

.method public static values()[Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->$VALUES:[Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

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
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->errorCode:I

    .line 2
    .line 3
    return v0
    .line 4
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
