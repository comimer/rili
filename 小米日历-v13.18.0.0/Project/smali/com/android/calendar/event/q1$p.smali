.class Lcom/android/calendar/event/q1$p;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/q1;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
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
.end method

.method public static synthetic a(Lcom/android/calendar/event/q1$p;JJZLcom/miui/calendar/ai/TimeParser$TextParseResult;)Lkotlin/u;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/calendar/event/q1$p;->b(JJZLcom/miui/calendar/ai/TimeParser$TextParseResult;)Lkotlin/u;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(JJZLcom/miui/calendar/ai/TimeParser$TextParseResult;)Lkotlin/u;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 6
    .line 7
    invoke-virtual/range {p6 .. p6}, Lcom/miui/calendar/ai/TimeParser$TextParseResult;->getStartTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-virtual/range {p6 .. p6}, Lcom/miui/calendar/ai/TimeParser$TextParseResult;->getEndTime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    invoke-virtual/range {p6 .. p6}, Lcom/miui/calendar/ai/TimeParser$TextParseResult;->isAllDay()Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    new-instance v7, Lcom/android/calendar/event/q1$t;

    .line 20
    .line 21
    invoke-virtual/range {p6 .. p6}, Lcom/miui/calendar/ai/TimeParser$TextParseResult;->getHighLightStart()I

    .line 22
    .line 23
    .line 24
    move-result v8

    .line 25
    invoke-virtual/range {p6 .. p6}, Lcom/miui/calendar/ai/TimeParser$TextParseResult;->getHighLightEnd()I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    invoke-direct {v7, v8, v9}, Lcom/android/calendar/event/q1$t;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/event/q1;->C(Lcom/android/calendar/event/q1;JJZLcom/android/calendar/event/q1$t;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v10, v0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 37
    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    move-wide/from16 v11, p1

    .line 41
    .line 42
    move-wide/from16 v13, p3

    .line 43
    .line 44
    move/from16 v15, p5

    .line 45
    .line 46
    invoke-static/range {v10 .. v16}, Lcom/android/calendar/event/q1;->C(Lcom/android/calendar/event/q1;JJZLcom/android/calendar/event/q1$t;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    const/4 v1, 0x0

    .line 50
    return-object v1
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
.method public run()V
    .locals 10

    .line 1
    const-string v0, "Cal:D:EditEventView"

    .line 2
    .line 3
    const-string v1, "handleTimeParse start"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/calendar/event/q1;->i(Lcom/android/calendar/event/q1;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/calendar/event/q1;->l(Lcom/android/calendar/event/q1;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v5

    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/android/calendar/event/q1;->K(Lcom/android/calendar/event/q1;)Z

    .line 23
    .line 24
    .line 25
    move-result v7

    .line 26
    iget-object v0, p0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/calendar/event/q1;->A(Lcom/android/calendar/event/q1;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    move-wide v2, v3

    .line 42
    move-wide v4, v5

    .line 43
    move v6, v7

    .line 44
    move-object v7, v0

    .line 45
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/event/q1;->C(Lcom/android/calendar/event/q1;JJZLcom/android/calendar/event/q1$t;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/android/calendar/event/q1;->v(Lcom/android/calendar/event/q1;)Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/calendar/event/q1$p;->a:Lcom/android/calendar/event/q1;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/android/calendar/event/q1;->A(Lcom/android/calendar/event/q1;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    new-instance v9, Lcom/android/calendar/event/r1;

    .line 62
    .line 63
    move-object v1, v9

    .line 64
    move-object v2, p0

    .line 65
    invoke-direct/range {v1 .. v7}, Lcom/android/calendar/event/r1;-><init>(Lcom/android/calendar/event/q1$p;JJZ)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v8, v9}, Lcom/miui/calendar/ai/TimeParser;->a(Landroid/content/Context;Ljava/lang/String;Lw7/l;)V

    .line 69
    .line 70
    .line 71
    return-void
    .line 72
    .line 73
    .line 74
    .line 75
.end method
