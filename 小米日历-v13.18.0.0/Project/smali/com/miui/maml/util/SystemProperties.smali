.class public Lcom/miui/maml/util/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static classSystemProperties:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static isSupportGet:Z = false

.field private static isSupportGetBoolean:Z = false

.field private static isSupportGetInt:Z = false

.field private static isSupportGetLong:Z = false

.field private static isSupportSet:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const/4 v1, 0x0

    .line 13
    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 14
    .line 15
    :goto_0
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 16
    .line 17
    if-eqz v1, :cond_5

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_1
    const-string v5, "get"

    .line 23
    .line 24
    new-array v6, v2, [Ljava/lang/Class;

    .line 25
    .line 26
    aput-object v0, v6, v4

    .line 27
    .line 28
    aput-object v0, v6, v3

    .line 29
    .line 30
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    move v1, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v1, v4

    .line 39
    :goto_1
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catch_1
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    .line 43
    .line 44
    :goto_2
    :try_start_2
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 45
    .line 46
    const-string v5, "getInt"

    .line 47
    .line 48
    new-array v6, v2, [Ljava/lang/Class;

    .line 49
    .line 50
    aput-object v0, v6, v4

    .line 51
    .line 52
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 53
    .line 54
    aput-object v7, v6, v3

    .line 55
    .line 56
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    move v1, v3

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    move v1, v4

    .line 65
    :goto_3
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    .line 67
    goto :goto_4

    .line 68
    :catch_2
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    .line 69
    .line 70
    :goto_4
    :try_start_3
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 71
    .line 72
    const-string v5, "getLong"

    .line 73
    .line 74
    new-array v6, v2, [Ljava/lang/Class;

    .line 75
    .line 76
    aput-object v0, v6, v4

    .line 77
    .line 78
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    aput-object v7, v6, v3

    .line 81
    .line 82
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    .line 88
    move v1, v3

    .line 89
    goto :goto_5

    .line 90
    :cond_2
    move v1, v4

    .line 91
    :goto_5
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :catch_3
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    .line 95
    .line 96
    :goto_6
    :try_start_4
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 97
    .line 98
    const-string v5, "getBoolean"

    .line 99
    .line 100
    new-array v6, v2, [Ljava/lang/Class;

    .line 101
    .line 102
    aput-object v0, v6, v4

    .line 103
    .line 104
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 105
    .line 106
    aput-object v7, v6, v3

    .line 107
    .line 108
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    move v1, v3

    .line 115
    goto :goto_7

    .line 116
    :cond_3
    move v1, v4

    .line 117
    :goto_7
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 118
    .line 119
    goto :goto_8

    .line 120
    :catch_4
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    .line 121
    .line 122
    :goto_8
    :try_start_5
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 123
    .line 124
    const-string v5, "set"

    .line 125
    .line 126
    new-array v2, v2, [Ljava/lang/Class;

    .line 127
    .line 128
    aput-object v0, v2, v4

    .line 129
    .line 130
    aput-object v0, v2, v3

    .line 131
    .line 132
    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    goto :goto_9

    .line 139
    :cond_4
    move v3, v4

    .line 140
    :goto_9
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 141
    .line 142
    goto :goto_a

    .line 143
    :catch_5
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z

    .line 144
    .line 145
    :cond_5
    :goto_a
    return-void
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

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    return p1
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
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    :cond_0
    return p1
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
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    :cond_0
    return-wide p1
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
.end method
