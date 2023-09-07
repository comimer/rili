.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;
.super Ljava/lang/Enum;
.source "XiaomiUserCoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum BASE_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum BIND_ADDRESS:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum EXTRA_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum FAMILY_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum SECURITY_STATUS:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

.field public static final enum SETTING_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 2
    .line 3
    const-string v1, "BASE_INFO"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->BASE_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 11
    .line 12
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 13
    .line 14
    const-string v4, "BIND_ADDRESS"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->BIND_ADDRESS:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 21
    .line 22
    new-instance v4, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 23
    .line 24
    const-string v6, "EXTRA_INFO"

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    invoke-direct {v4, v6, v5, v7}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v4, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->EXTRA_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 31
    .line 32
    new-instance v6, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 33
    .line 34
    const-string v8, "SETTING_INFO"

    .line 35
    .line 36
    const/4 v9, 0x3

    .line 37
    const/16 v10, 0x8

    .line 38
    .line 39
    invoke-direct {v6, v8, v9, v10}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    .line 40
    .line 41
    .line 42
    sput-object v6, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->SETTING_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 43
    .line 44
    new-instance v8, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 45
    .line 46
    const-string v10, "SECURITY_STATUS"

    .line 47
    .line 48
    const/16 v11, 0x10

    .line 49
    .line 50
    invoke-direct {v8, v10, v7, v11}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    .line 51
    .line 52
    .line 53
    sput-object v8, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->SECURITY_STATUS:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 54
    .line 55
    new-instance v10, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 56
    .line 57
    const-string v11, "FAMILY_INFO"

    .line 58
    .line 59
    const/4 v12, 0x5

    .line 60
    const/16 v13, 0x20

    .line 61
    .line 62
    invoke-direct {v10, v11, v12, v13}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;-><init>(Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    sput-object v10, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->FAMILY_INFO:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 66
    .line 67
    const/4 v11, 0x6

    .line 68
    new-array v11, v11, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 69
    .line 70
    aput-object v0, v11, v2

    .line 71
    .line 72
    aput-object v1, v11, v3

    .line 73
    .line 74
    aput-object v4, v11, v5

    .line 75
    .line 76
    aput-object v6, v11, v9

    .line 77
    .line 78
    aput-object v8, v11, v7

    .line 79
    .line 80
    aput-object v10, v11, v12

    .line 81
    .line 82
    sput-object v11, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 83
    .line 84
    return-void
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
    iput p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->value:I

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

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

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;

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
