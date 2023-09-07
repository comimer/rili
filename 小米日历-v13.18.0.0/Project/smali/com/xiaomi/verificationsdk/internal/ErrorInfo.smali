.class public final enum Lcom/xiaomi/verificationsdk/internal/ErrorInfo;
.super Ljava/lang/Enum;
.source "ErrorInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/verificationsdk/internal/ErrorInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

.field public static final enum ACCESS_DENIED_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

.field public static final enum NETWORK_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

.field public static final enum NETWORK_TIMEOUT_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

.field public static final enum SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

.field public static final enum UNKNOWN_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;


# instance fields
.field public errorMessageId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 2
    .line 3
    sget v1, Ln5/g;->l0:I

    .line 4
    .line 5
    const-string v2, "NETWORK_ERROR_INFO"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->NETWORK_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 12
    .line 13
    new-instance v1, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 14
    .line 15
    sget v2, Ln5/g;->m0:I

    .line 16
    .line 17
    const-string v4, "NETWORK_TIMEOUT_INFO"

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v2}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->NETWORK_TIMEOUT_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 24
    .line 25
    new-instance v2, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 26
    .line 27
    sget v4, Ln5/g;->I0:I

    .line 28
    .line 29
    const-string v6, "SYSTEM_ERROR_INFO"

    .line 30
    .line 31
    const/4 v7, 0x2

    .line 32
    invoke-direct {v2, v6, v7, v4}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;-><init>(Ljava/lang/String;II)V

    .line 33
    .line 34
    .line 35
    sput-object v2, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 36
    .line 37
    new-instance v4, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 38
    .line 39
    sget v6, Ln5/g;->c:I

    .line 40
    .line 41
    const-string v8, "ACCESS_DENIED_INFO"

    .line 42
    .line 43
    const/4 v9, 0x3

    .line 44
    invoke-direct {v4, v8, v9, v6}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;-><init>(Ljava/lang/String;II)V

    .line 45
    .line 46
    .line 47
    sput-object v4, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->ACCESS_DENIED_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 48
    .line 49
    new-instance v6, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 50
    .line 51
    sget v8, Ln5/g;->M0:I

    .line 52
    .line 53
    const-string v10, "UNKNOWN_ERROR_INFO"

    .line 54
    .line 55
    const/4 v11, 0x4

    .line 56
    invoke-direct {v6, v10, v11, v8}, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;-><init>(Ljava/lang/String;II)V

    .line 57
    .line 58
    .line 59
    sput-object v6, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->UNKNOWN_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 60
    .line 61
    const/4 v8, 0x5

    .line 62
    new-array v8, v8, [Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 63
    .line 64
    aput-object v0, v8, v3

    .line 65
    .line 66
    aput-object v1, v8, v5

    .line 67
    .line 68
    aput-object v2, v8, v7

    .line 69
    .line 70
    aput-object v4, v8, v9

    .line 71
    .line 72
    aput-object v6, v8, v11

    .line 73
    .line 74
    sput-object v8, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->$VALUES:[Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 75
    .line 76
    return-void
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
    iput p3, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

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

.method public static getMsgIdGivenErrorCode(Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_JSON_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 6
    .line 7
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_ACCESSDENIED_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 12
    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->ACCESS_DENIED_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 16
    .line 17
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 18
    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :cond_1
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_AUTHENTICATIONFAILURE_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 22
    .line 23
    if-ne p0, v0, :cond_2

    .line 24
    .line 25
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 26
    .line 27
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_NETWORK_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 31
    .line 32
    if-ne p0, v0, :cond_3

    .line 33
    .line 34
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 35
    .line 36
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_ENCRYPT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 40
    .line 41
    if-ne p0, v0, :cond_4

    .line 42
    .line 43
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 44
    .line 45
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_HUMANCOMPUTER_VERIFICATION_FAILED:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 49
    .line 50
    if-ne p0, v0, :cond_5

    .line 51
    .line 52
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 53
    .line 54
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_CONNECT_UNREACHABLE_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 58
    .line 59
    if-ne p0, v0, :cond_6

    .line 60
    .line 61
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->NETWORK_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 62
    .line 63
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_6
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_SOCKET_TIMEOUT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 67
    .line 68
    if-ne p0, v0, :cond_7

    .line 69
    .line 70
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->NETWORK_TIMEOUT_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 71
    .line 72
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_7
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_CONNECT_TIMEOUT_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 76
    .line 77
    if-ne p0, v0, :cond_8

    .line 78
    .line 79
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->NETWORK_TIMEOUT_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 80
    .line 81
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_8
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_SERVER:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 85
    .line 86
    if-ne p0, v0, :cond_9

    .line 87
    .line 88
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 89
    .line 90
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_9
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_INTERRUPTED_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 94
    .line 95
    if-ne p0, v0, :cond_a

    .line 96
    .line 97
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 98
    .line 99
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_a
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_EVENTID_EXPIRED:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 103
    .line 104
    if-ne p0, v0, :cond_b

    .line 105
    .line 106
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->SYSTEM_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 107
    .line 108
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_b
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;->ERROR_IO_EXCEPTION:Lcom/xiaomi/verificationsdk/internal/ErrorInfo$ErrorCode;

    .line 112
    .line 113
    if-ne p0, v0, :cond_c

    .line 114
    .line 115
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->NETWORK_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 116
    .line 117
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_c
    sget-object p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->UNKNOWN_ERROR_INFO:Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 121
    .line 122
    iget p0, p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->errorMessageId:I

    .line 123
    .line 124
    :goto_0
    return p0
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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/verificationsdk/internal/ErrorInfo;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

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

.method public static values()[Lcom/xiaomi/verificationsdk/internal/ErrorInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->$VALUES:[Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/verificationsdk/internal/ErrorInfo;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/verificationsdk/internal/ErrorInfo;

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
