.class Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$b;
.super Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$p;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$p;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$b;-><init>()V

    return-void
.end method

.method private static d(Ljava/lang/String;[I[II)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x2

    .line 6
    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/16 v3, -0x35

    .line 15
    .line 16
    const/16 v4, 0x35

    .line 17
    .line 18
    invoke-static {v2, v3, v4, v1}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$p;->a(Ljava/lang/String;IIZ)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    aput v1, p2, p3

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p2, p0

    .line 30
    :goto_0
    invoke-static {}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->c()Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    aput p0, p1, p3

    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    new-instance p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p3, "Invalid BYDAY value: "

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {p1, p0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1
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
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)I
    .locals 5

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    new-array v0, v3, [I

    .line 12
    .line 13
    new-array v1, v3, [I

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v2}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$b;->d(Ljava/lang/String;[I[II)V

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    array-length v3, p1

    .line 24
    new-array v0, v3, [I

    .line 25
    .line 26
    new-array v1, v3, [I

    .line 27
    .line 28
    :goto_0
    if-ge v2, v3, :cond_1

    .line 29
    .line 30
    aget-object v4, p1, v2

    .line 31
    .line 32
    invoke-static {v4, v0, v1, v2}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$b;->d(Ljava/lang/String;[I[II)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    :goto_1
    iput-object v0, p2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->m:[I

    .line 39
    .line 40
    iput-object v1, p2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->n:[I

    .line 41
    .line 42
    iput v3, p2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 43
    .line 44
    const/16 p1, 0x80

    .line 45
    .line 46
    return p1
    .line 47
.end method
