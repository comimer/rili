.class public final enum Lcom/miui/calendar/sms/SmartMessage$OntologyType;
.super Ljava/lang/Enum;
.source "SmartMessage.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/sms/SmartMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OntologyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/calendar/sms/SmartMessage$OntologyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum CREDIT:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum ELECTRICITY_BILL:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum FLIGHT:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum GAS_BILL:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum HOTEL:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum LOAN:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum MOVIE:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum TRAIN:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

.field public static final enum UNKNOWN:Lcom/miui/calendar/sms/SmartMessage$OntologyType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, -0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->UNKNOWN:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 11
    .line 12
    new-instance v1, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 13
    .line 14
    const-string v3, "TRAIN"

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-direct {v1, v3, v4, v4}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->TRAIN:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 21
    .line 22
    new-instance v3, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 23
    .line 24
    const-string v5, "FLIGHT"

    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-direct {v3, v5, v6, v6}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v3, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->FLIGHT:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 31
    .line 32
    new-instance v5, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 33
    .line 34
    const-string v7, "CREDIT"

    .line 35
    .line 36
    const/4 v8, 0x3

    .line 37
    const/4 v9, 0x4

    .line 38
    invoke-direct {v5, v7, v8, v9}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 39
    .line 40
    .line 41
    sput-object v5, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->CREDIT:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 42
    .line 43
    new-instance v7, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 44
    .line 45
    const-string v10, "MOVIE"

    .line 46
    .line 47
    const/16 v11, 0xa

    .line 48
    .line 49
    invoke-direct {v7, v10, v9, v11}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 50
    .line 51
    .line 52
    sput-object v7, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->MOVIE:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 53
    .line 54
    new-instance v10, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 55
    .line 56
    const-string v11, "ELECTRICITY_BILL"

    .line 57
    .line 58
    const/4 v12, 0x5

    .line 59
    const/16 v13, 0xb

    .line 60
    .line 61
    invoke-direct {v10, v11, v12, v13}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 62
    .line 63
    .line 64
    sput-object v10, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->ELECTRICITY_BILL:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 65
    .line 66
    new-instance v11, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 67
    .line 68
    const-string v13, "GAS_BILL"

    .line 69
    .line 70
    const/4 v14, 0x6

    .line 71
    const/16 v15, 0xc

    .line 72
    .line 73
    invoke-direct {v11, v13, v14, v15}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 74
    .line 75
    .line 76
    sput-object v11, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->GAS_BILL:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 77
    .line 78
    new-instance v13, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 79
    .line 80
    const-string v15, "HOTEL"

    .line 81
    .line 82
    const/4 v14, 0x7

    .line 83
    const/16 v12, 0x11

    .line 84
    .line 85
    invoke-direct {v13, v15, v14, v12}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 86
    .line 87
    .line 88
    sput-object v13, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->HOTEL:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 89
    .line 90
    new-instance v12, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 91
    .line 92
    const-string v15, "LOAN"

    .line 93
    .line 94
    const/16 v14, 0x8

    .line 95
    .line 96
    const/16 v9, 0x12

    .line 97
    .line 98
    invoke-direct {v12, v15, v14, v9}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    sput-object v12, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->LOAN:Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 102
    .line 103
    const/16 v9, 0x9

    .line 104
    .line 105
    new-array v9, v9, [Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 106
    .line 107
    aput-object v0, v9, v2

    .line 108
    .line 109
    aput-object v1, v9, v4

    .line 110
    .line 111
    aput-object v3, v9, v6

    .line 112
    .line 113
    aput-object v5, v9, v8

    .line 114
    .line 115
    const/4 v0, 0x4

    .line 116
    aput-object v7, v9, v0

    .line 117
    .line 118
    const/4 v0, 0x5

    .line 119
    aput-object v10, v9, v0

    .line 120
    .line 121
    const/4 v0, 0x6

    .line 122
    aput-object v11, v9, v0

    .line 123
    .line 124
    const/4 v0, 0x7

    .line 125
    aput-object v13, v9, v0

    .line 126
    .line 127
    aput-object v12, v9, v14

    .line 128
    .line 129
    sput-object v9, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->$VALUES:[Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 130
    .line 131
    return-void
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
    iput p3, p0, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->value:I

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

.method public static fromValue(I)Lcom/miui/calendar/sms/SmartMessage$OntologyType;
    .locals 5

    .line 1
    invoke-static {}, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->values()[Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    iget v4, v3, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->value:I

    .line 12
    .line 13
    if-ne v4, p0, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "fromValue: value INVALID:"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "Cal:D:SmartMessage"

    .line 37
    .line 38
    invoke-static {v0, p0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0
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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/calendar/sms/SmartMessage$OntologyType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/calendar/sms/SmartMessage$OntologyType;

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

.method public static values()[Lcom/miui/calendar/sms/SmartMessage$OntologyType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->$VALUES:[Lcom/miui/calendar/sms/SmartMessage$OntologyType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/miui/calendar/sms/SmartMessage$OntologyType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/calendar/sms/SmartMessage$OntologyType;

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
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/sms/SmartMessage$OntologyType;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
