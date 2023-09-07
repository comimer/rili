.class public Lcom/miui/calendar/repeats/RepeatEndSchema;
.super Ljava/lang/Object;
.source "RepeatEndSchema.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final INDEX_NEVER:I = 0x0

.field public static final INDEX_TIMES:I = 0x2

.field public static final INDEX_UNTIL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Cal:D:RepeatEndSchema"


# instance fields
.field public index:I

.field public mDateType:I

.field public times:I

.field public until:J


# direct methods
.method constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->mDateType:I

    return-void
.end method

.method public constructor <init>(IJI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->mDateType:I

    .line 3
    iput p1, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 4
    iput-wide p2, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->until:J

    .line 5
    iput p4, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->times:I

    return-void
.end method

.method public static fromEventRecurrence(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)Lcom/miui/calendar/repeats/RepeatEndSchema;
    .locals 4

    .line 1
    new-instance v0, Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/repeats/RepeatEndSchema;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget v3, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->d:I

    .line 12
    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    iput v2, v0, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput v1, v0, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 22
    .line 23
    new-instance v1, Lcom/miui/calendar/util/r0;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->c:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Lcom/miui/calendar/util/r0;->z(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iput-wide v1, v0, Lcom/miui/calendar/repeats/RepeatEndSchema;->until:J

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x2

    .line 41
    iput v1, v0, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 42
    .line 43
    iget v1, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->d:I

    .line 44
    .line 45
    invoke-static {p0}, Lcom/miui/calendar/repeats/RepeatEndSchema;->getRecurrenceDayCount(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    div-int/2addr v1, p0

    .line 50
    iput v1, v0, Lcom/miui/calendar/repeats/RepeatEndSchema;->times:I

    .line 51
    .line 52
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "fromEventRecurrence(): "

    .line 58
    .line 59
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-static {v0}, Lcom/miui/calendar/repeats/RepeatEndSchema;->toJsonString(Lcom/miui/calendar/repeats/RepeatEndSchema;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v1, "Cal:D:RepeatEndSchema"

    .line 74
    .line 75
    invoke-static {v1, p0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v0
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
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/miui/calendar/repeats/RepeatEndSchema;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/calendar/repeats/RepeatEndSchema;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/calendar/repeats/RepeatEndSchema;

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

.method private static getRecurrenceDayCount(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->q:I

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/4 v0, 0x1

    .line 12
    :goto_0
    return v0
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

.method public static toJsonString(Lcom/miui/calendar/repeats/RepeatEndSchema;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/calendar/util/x;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
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


# virtual methods
.method public getRepeatEndString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, p0}, Lcom/miui/calendar/repeats/b;->k(Landroid/content/Context;Ljava/util/List;Lcom/miui/calendar/repeats/RepeatEndSchema;)V

    .line 8
    .line 9
    .line 10
    iget p1, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/lang/String;

    .line 17
    .line 18
    return-object p1
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public updateRecurrenceEnd(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->index:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v2, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 8
    .line 9
    const-string v2, "UTC"

    .line 10
    .line 11
    invoke-direct {v0, v2}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->until:J

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->f()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->c:Ljava/lang/String;

    .line 27
    .line 28
    iput v1, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->d:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-ne v2, v0, :cond_1

    .line 34
    .line 35
    iput-object v3, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->c:Ljava/lang/String;

    .line 36
    .line 37
    iget v0, p0, Lcom/miui/calendar/repeats/RepeatEndSchema;->times:I

    .line 38
    .line 39
    invoke-static {p1}, Lcom/miui/calendar/repeats/RepeatEndSchema;->getRecurrenceDayCount(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    mul-int/2addr v0, v1

    .line 44
    iput v0, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->d:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iput-object v3, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->c:Ljava/lang/String;

    .line 48
    .line 49
    iput v1, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->d:I

    .line 50
    .line 51
    :goto_0
    return-void
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
