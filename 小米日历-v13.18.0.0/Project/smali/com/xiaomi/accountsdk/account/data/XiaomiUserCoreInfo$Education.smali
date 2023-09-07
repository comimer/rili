.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
.super Ljava/lang/Enum;
.source "XiaomiUserCoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum COLLEGE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum DOCTOR_AND_ABOVE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum HIGH_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum MASTER_DEGREE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum MIDDLE_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum PREP_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum VOCATIONAL_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;


# instance fields
.field public final level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 2
    .line 3
    const-string v1, "MIDDLE_SCHOOL"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "junior"

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MIDDLE_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 12
    .line 13
    new-instance v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 14
    .line 15
    const-string v3, "PREP_SCHOOL"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "technical"

    .line 19
    .line 20
    invoke-direct {v1, v3, v4, v5}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->PREP_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 24
    .line 25
    new-instance v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 26
    .line 27
    const-string v5, "HIGH_SCHOOL"

    .line 28
    .line 29
    const/4 v6, 0x2

    .line 30
    const-string v7, "senior"

    .line 31
    .line 32
    invoke-direct {v3, v5, v6, v7}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v3, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->HIGH_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 36
    .line 37
    new-instance v5, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 38
    .line 39
    const-string v7, "VOCATIONAL_SCHOOL"

    .line 40
    .line 41
    const/4 v8, 0x3

    .line 42
    const-string v9, "college"

    .line 43
    .line 44
    invoke-direct {v5, v7, v8, v9}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v5, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->VOCATIONAL_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 48
    .line 49
    new-instance v7, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 50
    .line 51
    const-string v9, "COLLEGE"

    .line 52
    .line 53
    const/4 v10, 0x4

    .line 54
    const-string v11, "bachelor"

    .line 55
    .line 56
    invoke-direct {v7, v9, v10, v11}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v7, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->COLLEGE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 60
    .line 61
    new-instance v9, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 62
    .line 63
    const-string v11, "MASTER_DEGREE"

    .line 64
    .line 65
    const/4 v12, 0x5

    .line 66
    const-string v13, "master"

    .line 67
    .line 68
    invoke-direct {v9, v11, v12, v13}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v9, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MASTER_DEGREE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 72
    .line 73
    new-instance v11, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 74
    .line 75
    const-string v13, "DOCTOR_AND_ABOVE"

    .line 76
    .line 77
    const/4 v14, 0x6

    .line 78
    const-string v15, "doctor"

    .line 79
    .line 80
    invoke-direct {v11, v13, v14, v15}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v11, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->DOCTOR_AND_ABOVE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 84
    .line 85
    const/4 v13, 0x7

    .line 86
    new-array v13, v13, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 87
    .line 88
    aput-object v0, v13, v2

    .line 89
    .line 90
    aput-object v1, v13, v4

    .line 91
    .line 92
    aput-object v3, v13, v6

    .line 93
    .line 94
    aput-object v5, v13, v8

    .line 95
    .line 96
    aput-object v7, v13, v10

    .line 97
    .line 98
    aput-object v9, v13, v12

    .line 99
    .line 100
    aput-object v11, v13, v14

    .line 101
    .line 102
    sput-object v13, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 103
    .line 104
    return-void
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
    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->level:Ljava/lang/String;

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

.method public static getEducationTypeByName(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
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
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

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
    iget-object v5, v4, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->level:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

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

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

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
