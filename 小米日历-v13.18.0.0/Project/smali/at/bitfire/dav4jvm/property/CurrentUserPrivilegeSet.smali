.class public final Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;
.super Ljava/lang/Object;
.source "CurrentUserPrivilegeSet.kt"

# interfaces
.implements Lat/bitfire/dav4jvm/Property;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Factory;,
        Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \"2\u00020\u0001:\u0002\"#B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J;\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00032\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\n\"\u0004\u0008\u0010\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\n\"\u0004\u0008\u0012\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\n\"\u0004\u0008\u0014\u0010\u000c\u00a8\u0006$"
    }
    d2 = {
        "Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;",
        "Lat/bitfire/dav4jvm/Property;",
        "mayRead",
        "",
        "mayWriteProperties",
        "mayWriteContent",
        "mayBind",
        "mayUnbind",
        "(ZZZZZ)V",
        "getMayBind",
        "()Z",
        "setMayBind",
        "(Z)V",
        "getMayRead",
        "setMayRead",
        "getMayUnbind",
        "setMayUnbind",
        "getMayWriteContent",
        "setMayWriteContent",
        "getMayWriteProperties",
        "setMayWriteProperties",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
        "Factory",
        "build"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ALL:Lat/bitfire/dav4jvm/Property$Name;

.field private static final BIND:Lat/bitfire/dav4jvm/Property$Name;

.field public static final Companion:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;

.field public static final NAME:Lat/bitfire/dav4jvm/Property$Name;

.field private static final PRIVILEGE:Lat/bitfire/dav4jvm/Property$Name;

.field private static final READ:Lat/bitfire/dav4jvm/Property$Name;

.field private static final UNBIND:Lat/bitfire/dav4jvm/Property$Name;

.field private static final WRITE:Lat/bitfire/dav4jvm/Property$Name;

.field private static final WRITE_CONTENT:Lat/bitfire/dav4jvm/Property$Name;

.field private static final WRITE_PROPERTIES:Lat/bitfire/dav4jvm/Property$Name;


# instance fields
.field private mayBind:Z

.field private mayRead:Z

.field private mayUnbind:Z

.field private mayWriteContent:Z

.field private mayWriteProperties:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;-><init>(Lkotlin/jvm/internal/o;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->Companion:Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet$Companion;

    .line 8
    .line 9
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 10
    .line 11
    const-string v1, "DAV:"

    .line 12
    .line 13
    const-string v2, "current-user-privilege-set"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->NAME:Lat/bitfire/dav4jvm/Property$Name;

    .line 19
    .line 20
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 21
    .line 22
    const-string v2, "privilege"

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->PRIVILEGE:Lat/bitfire/dav4jvm/Property$Name;

    .line 28
    .line 29
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 30
    .line 31
    const-string v2, "read"

    .line 32
    .line 33
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->READ:Lat/bitfire/dav4jvm/Property$Name;

    .line 37
    .line 38
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 39
    .line 40
    const-string v2, "write"

    .line 41
    .line 42
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->WRITE:Lat/bitfire/dav4jvm/Property$Name;

    .line 46
    .line 47
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 48
    .line 49
    const-string v2, "write-properties"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->WRITE_PROPERTIES:Lat/bitfire/dav4jvm/Property$Name;

    .line 55
    .line 56
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 57
    .line 58
    const-string v2, "write-content"

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->WRITE_CONTENT:Lat/bitfire/dav4jvm/Property$Name;

    .line 64
    .line 65
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 66
    .line 67
    const-string v2, "bind"

    .line 68
    .line 69
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->BIND:Lat/bitfire/dav4jvm/Property$Name;

    .line 73
    .line 74
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 75
    .line 76
    const-string v2, "unbind"

    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->UNBIND:Lat/bitfire/dav4jvm/Property$Name;

    .line 82
    .line 83
    new-instance v0, Lat/bitfire/dav4jvm/Property$Name;

    .line 84
    .line 85
    const-string v2, "all"

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lat/bitfire/dav4jvm/Property$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->ALL:Lat/bitfire/dav4jvm/Property$Name;

    .line 91
    .line 92
    return-void
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

.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;-><init>(ZZZZZILkotlin/jvm/internal/o;)V

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

    iput-boolean p2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

    iput-boolean p3, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

    iput-boolean p4, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

    iput-boolean p5, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZILkotlin/jvm/internal/o;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p7, v0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move p6, v0

    goto :goto_4

    :cond_4
    move p6, p5

    :goto_4
    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v2

    move p5, v3

    .line 2
    invoke-direct/range {p1 .. p6}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;-><init>(ZZZZZ)V

    return-void
.end method

.method public static final synthetic access$getALL$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->ALL:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getBIND$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->BIND:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getPRIVILEGE$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->PRIVILEGE:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getREAD$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->READ:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getUNBIND$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->UNBIND:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getWRITE$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->WRITE:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getWRITE_CONTENT$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->WRITE_CONTENT:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static final synthetic access$getWRITE_PROPERTIES$cp()Lat/bitfire/dav4jvm/Property$Name;
    .locals 1

    .line 1
    sget-object v0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->WRITE_PROPERTIES:Lat/bitfire/dav4jvm/Property$Name;

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

.method public static synthetic copy$default(Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;ZZZZZILjava/lang/Object;)Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->copy(ZZZZZ)Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

    return v0
.end method

.method public final copy(ZZZZZ)Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;
    .locals 7

    new-instance v6, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;-><init>(ZZZZZ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    if-eqz v0, :cond_0

    check-cast p1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

    iget-boolean v1, p1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

    iget-boolean v1, p1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

    iget-boolean v1, p1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

    iget-boolean v1, p1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

    iget-boolean p1, p1, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getMayBind()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

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

.method public final getMayRead()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

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

.method public final getMayUnbind()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

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

.method public final getMayWriteContent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

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

.method public final getMayWriteProperties()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

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

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

    if-eqz v2, :cond_3

    move v2, v1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setMayBind(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

    .line 2
    .line 3
    return-void
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

.method public final setMayRead(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

    .line 2
    .line 3
    return-void
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

.method public final setMayUnbind(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

    .line 2
    .line 3
    return-void
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

.method public final setMayWriteContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

    .line 2
    .line 3
    return-void
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

.method public final setMayWriteProperties(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

    .line 2
    .line 3
    return-void
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

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CurrentUserPrivilegeSet(mayRead="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayRead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayWriteProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteProperties:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayWriteContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayWriteContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayBind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayBind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mayUnbind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lat/bitfire/dav4jvm/property/CurrentUserPrivilegeSet;->mayUnbind:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
