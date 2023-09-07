.class public Lcom/miui/calendar/util/calendarcommon2/b$a;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/calendarcommon2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

.field private b:I

.field private c:Lcom/miui/calendar/util/r0;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/miui/calendar/util/r0;

    .line 5
    .line 6
    const-string v0, "UTC"

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->c:Lcom/miui/calendar/util/r0;

    .line 12
    .line 13
    return-void
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

.method private static a(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)I
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/calendar/util/r0;->g(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget v1, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-lez v1, :cond_7

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->q()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    :goto_0
    const/16 v5, 0x8

    .line 17
    .line 18
    if-lt v4, v5, :cond_0

    .line 19
    .line 20
    add-int/lit8 v4, v4, -0x7

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/miui/calendar/util/r0;->t()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-lt p0, v4, :cond_1

    .line 28
    .line 29
    sub-int/2addr p0, v4

    .line 30
    add-int/2addr p0, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    sub-int/2addr p0, v4

    .line 33
    add-int/2addr p0, v5

    .line 34
    :goto_1
    iget-object v4, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->m:[I

    .line 35
    .line 36
    iget-object v5, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->n:[I

    .line 37
    .line 38
    move v6, v2

    .line 39
    move v7, v6

    .line 40
    :goto_2
    if-ge v6, v1, :cond_8

    .line 41
    .line 42
    aget v8, v5, v6

    .line 43
    .line 44
    aget v9, v4, v6

    .line 45
    .line 46
    invoke-static {v9}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->i(I)I

    .line 47
    .line 48
    .line 49
    move-result v9

    .line 50
    sub-int/2addr v9, p0

    .line 51
    add-int/2addr v9, v3

    .line 52
    if-gtz v9, :cond_2

    .line 53
    .line 54
    add-int/lit8 v9, v9, 0x7

    .line 55
    .line 56
    :cond_2
    if-nez v8, :cond_3

    .line 57
    .line 58
    :goto_3
    if-gt v9, v0, :cond_6

    .line 59
    .line 60
    shl-int v8, v3, v9

    .line 61
    .line 62
    or-int/2addr v7, v8

    .line 63
    add-int/lit8 v9, v9, 0x7

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_3
    if-lez v8, :cond_4

    .line 67
    .line 68
    add-int/lit8 v8, v8, -0x1

    .line 69
    .line 70
    mul-int/lit8 v8, v8, 0x7

    .line 71
    .line 72
    add-int/2addr v9, v8

    .line 73
    if-gt v9, v0, :cond_6

    .line 74
    .line 75
    :goto_4
    shl-int v8, v3, v9

    .line 76
    .line 77
    or-int/2addr v7, v8

    .line 78
    goto :goto_6

    .line 79
    :cond_4
    :goto_5
    if-gt v9, v0, :cond_5

    .line 80
    .line 81
    add-int/lit8 v9, v9, 0x7

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_5
    mul-int/lit8 v8, v8, 0x7

    .line 85
    .line 86
    add-int/2addr v9, v8

    .line 87
    if-lt v9, v3, :cond_6

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    :goto_6
    add-int/lit8 v6, v6, 0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_7
    move v7, v2

    .line 94
    :cond_8
    iget p0, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->b:I

    .line 95
    .line 96
    const/4 v1, 0x5

    .line 97
    if-le p0, v1, :cond_f

    .line 98
    .line 99
    iget p0, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->q:I

    .line 100
    .line 101
    if-eqz p0, :cond_f

    .line 102
    .line 103
    iget-object v1, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->p:[I

    .line 104
    .line 105
    iget p1, p1, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->o:I

    .line 106
    .line 107
    if-nez p1, :cond_b

    .line 108
    .line 109
    :goto_7
    if-ge v2, p0, :cond_f

    .line 110
    .line 111
    aget p1, v1, v2

    .line 112
    .line 113
    if-ltz p1, :cond_9

    .line 114
    .line 115
    :goto_8
    shl-int p1, v3, p1

    .line 116
    .line 117
    or-int/2addr v7, p1

    .line 118
    goto :goto_9

    .line 119
    :cond_9
    add-int/2addr p1, v0

    .line 120
    add-int/2addr p1, v3

    .line 121
    if-lt p1, v3, :cond_a

    .line 122
    .line 123
    if-gt p1, v0, :cond_a

    .line 124
    .line 125
    goto :goto_8

    .line 126
    :cond_a
    :goto_9
    add-int/lit8 v2, v2, 0x1

    .line 127
    .line 128
    goto :goto_7

    .line 129
    :cond_b
    move p1, v3

    .line 130
    :goto_a
    if-gt p1, v0, :cond_f

    .line 131
    .line 132
    shl-int v4, v3, p1

    .line 133
    .line 134
    and-int v5, v7, v4

    .line 135
    .line 136
    if-eqz v5, :cond_e

    .line 137
    .line 138
    move v5, v2

    .line 139
    :goto_b
    if-ge v5, p0, :cond_d

    .line 140
    .line 141
    aget v6, v1, v5

    .line 142
    .line 143
    if-ne v6, p1, :cond_c

    .line 144
    .line 145
    goto :goto_c

    .line 146
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    goto :goto_b

    .line 149
    :cond_d
    not-int v4, v4

    .line 150
    and-int/2addr v7, v4

    .line 151
    :cond_e
    :goto_c
    add-int/lit8 p1, p1, 0x1

    .line 152
    .line 153
    goto :goto_a

    .line 154
    :cond_f
    return v7
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


# virtual methods
.method b(Lcom/miui/calendar/util/r0;I)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->v()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->p()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v1, 0x1

    .line 10
    if-lt p2, v1, :cond_1

    .line 11
    .line 12
    const/16 v2, 0x1c

    .line 13
    .line 14
    if-le p2, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->c:Lcom/miui/calendar/util/r0;

    .line 20
    .line 21
    invoke-virtual {v2, p2, p1, v0}, Lcom/miui/calendar/util/r0;->B(III)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2}, Lcom/miui/calendar/util/calendarcommon2/b;->k(Lcom/miui/calendar/util/r0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->v()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->p()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->q()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    :goto_1
    iget v3, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->d:I

    .line 40
    .line 41
    if-ne v0, v3, :cond_2

    .line 42
    .line 43
    iget v3, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->e:I

    .line 44
    .line 45
    if-eq p1, v3, :cond_4

    .line 46
    .line 47
    :cond_2
    if-nez v2, :cond_3

    .line 48
    .line 49
    iget-object v2, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->c:Lcom/miui/calendar/util/r0;

    .line 50
    .line 51
    invoke-virtual {v2, p2, p1, v0}, Lcom/miui/calendar/util/r0;->B(III)V

    .line 52
    .line 53
    .line 54
    invoke-static {v2}, Lcom/miui/calendar/util/calendarcommon2/b;->k(Lcom/miui/calendar/util/r0;)V

    .line 55
    .line 56
    .line 57
    :cond_3
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->d:I

    .line 58
    .line 59
    iput p1, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->e:I

    .line 60
    .line 61
    iget-object p1, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->a:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 62
    .line 63
    invoke-static {v2, p1}, Lcom/miui/calendar/util/calendarcommon2/b$a;->a(Lcom/miui/calendar/util/r0;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->b:I

    .line 68
    .line 69
    :cond_4
    iget p1, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->b:I

    .line 70
    .line 71
    shl-int p2, v1, p2

    .line 72
    .line 73
    and-int/2addr p1, p2

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    const/4 v1, 0x0

    .line 78
    :goto_2
    return v1
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

.method c(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->d:I

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->e:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/miui/calendar/util/calendarcommon2/b$a;->a:Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;

    .line 8
    .line 9
    return-void
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
