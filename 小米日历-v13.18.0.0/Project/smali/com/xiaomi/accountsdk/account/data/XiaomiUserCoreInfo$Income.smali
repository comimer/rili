.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
.super Ljava/lang/Enum;
.source "XiaomiUserCoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Income"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum BETWEEN_2K_4K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum BETWEEN_4K_6K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum BETWEEN_6K_8K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum BETWEEN_8K_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum LESS_2K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public static final enum OVER_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;


# instance fields
.field public final level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 2
    .line 3
    const-string v1, "LESS_2K"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "less2000"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->LESS_2K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 12
    .line 13
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 14
    .line 15
    const-string v3, "BETWEEN_2K_4K"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "less4000"

    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_2K_4K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 24
    .line 25
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 26
    .line 27
    const-string v5, "BETWEEN_4K_6K"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "less6000"

    .line 31
    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_4K_6K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 36
    .line 37
    new-instance v5, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 38
    .line 39
    const-string v7, "BETWEEN_6K_8K"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "less8000"

    .line 43
    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_6K_8K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 48
    .line 49
    new-instance v7, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 50
    .line 51
    const-string v9, "BETWEEN_8K_12K"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "less12000"

    .line 55
    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->BETWEEN_8K_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 60
    .line 61
    new-instance v9, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 62
    .line 63
    const-string v11, "OVER_12K"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "over12000"

    .line 67
    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->OVER_12K:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 72
    .line 73
    const/4 v11, 0x6

    .line 74
    new-array v11, v11, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 75
    .line 76
    aput-object v0, v11, v2

    .line 77
    .line 78
    aput-object v1, v11, v4

    .line 79
    .line 80
    aput-object v3, v11, v6

    .line 81
    .line 82
    aput-object v5, v11, v8

    .line 83
    .line 84
    aput-object v7, v11, v10

    .line 85
    .line 86
    aput-object v9, v11, v12

    .line 87
    .line 88
    sput-object v11, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 89
    .line 90
    return-void
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
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->level:Ljava/lang/String;

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

.method public static getIncomeTypeByName(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    array-length v2, v0

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_2

    .line 16
    .line 17
    aget-object v4, v0, v3

    .line 18
    .line 19
    iget-object v5, v4, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->level:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-eqz v5, :cond_1

    .line 26
    .line 27
    return-object v4

    .line 28
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return-object v1
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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

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

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

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
