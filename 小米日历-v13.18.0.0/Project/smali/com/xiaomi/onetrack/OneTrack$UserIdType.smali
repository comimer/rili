.class public final enum Lcom/xiaomi/onetrack/OneTrack$UserIdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/onetrack/OneTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserIdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/onetrack/OneTrack$UserIdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OTHER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum PHONE_NUMBER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum QQ:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum WEIBO:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum WEIXIN:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field public static final enum XIAOMI:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

.field private static final synthetic b:[Lcom/xiaomi/onetrack/OneTrack$UserIdType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 2
    .line 3
    const-string v1, "XIAOMI"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "xiaomi"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->XIAOMI:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 12
    .line 13
    new-instance v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 14
    .line 15
    const-string v3, "PHONE_NUMBER"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "phone_number"

    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->PHONE_NUMBER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 24
    .line 25
    new-instance v3, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 26
    .line 27
    const-string v5, "WEIXIN"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "weixin"

    .line 31
    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIXIN:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 36
    .line 37
    new-instance v5, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 38
    .line 39
    const-string v7, "WEIBO"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "weibo"

    .line 43
    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->WEIBO:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 48
    .line 49
    new-instance v7, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 50
    .line 51
    const-string v9, "QQ"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "qq"

    .line 55
    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->QQ:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 60
    .line 61
    new-instance v9, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 62
    .line 63
    const-string v11, "OTHER"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "other"

    .line 67
    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/onetrack/OneTrack$UserIdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->OTHER:Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 72
    .line 73
    const/4 v11, 0x6

    .line 74
    new-array v11, v11, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;

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
    sput-object v11, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->b:[Lcom/xiaomi/onetrack/OneTrack$UserIdType;

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
    iput-object p3, p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->a:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/onetrack/OneTrack$UserIdType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;

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

.method public static values()[Lcom/xiaomi/onetrack/OneTrack$UserIdType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->b:[Lcom/xiaomi/onetrack/OneTrack$UserIdType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/onetrack/OneTrack$UserIdType;

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
.method public getUserIdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/onetrack/OneTrack$UserIdType;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
