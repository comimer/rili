.class public Lcom/miui/calendar/shift/ShiftDetailActivity;
.super Lcom/android/calendar/common/b;
.source "ShiftDetailActivity.java"


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lmiuix/appcompat/app/a;

.field private l:Landroid/content/Context;

.field private m:Lcom/miui/calendar/shift/ShiftSchema;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

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

.method public static synthetic Y(Lcom/miui/calendar/shift/ShiftDetailActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/calendar/shift/ShiftDetailActivity;->b0(Landroid/view/View;)V

    return-void
.end method

.method private Z()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->J()Lmiuix/appcompat/app/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->k:Lmiuix/appcompat/app/a;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Landroid/widget/ImageButton;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f12053b

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lk4/a;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lk4/a;-><init>(Lcom/miui/calendar/shift/ShiftDetailActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/miui/calendar/util/x0;->s0(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    const v1, 0x7f080507

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const v1, 0x7f08050a

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->k:Lmiuix/appcompat/app/a;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/a;->E(Landroid/view/View;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->k:Lmiuix/appcompat/app/a;

    .line 59
    .line 60
    const v1, 0x7f12058a

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->A(I)V

    .line 64
    .line 65
    .line 66
    return-void
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method

.method private a0()V
    .locals 1

    .line 1
    const v0, 0x7f0a036c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->b:Landroid/widget/TextView;

    .line 11
    .line 12
    const v0, 0x7f0a0625

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->c:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0649

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->d:Landroid/view/View;

    .line 31
    .line 32
    const v0, 0x7f0a036d

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/TextView;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->e:Landroid/widget/TextView;

    .line 42
    .line 43
    const v0, 0x7f0a0626

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->f:Landroid/widget/TextView;

    .line 53
    .line 54
    const v0, 0x7f0a007c

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->g:Landroid/view/View;

    .line 62
    .line 63
    const v0, 0x7f0a036b

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->h:Landroid/widget/TextView;

    .line 73
    .line 74
    const v0, 0x7f0a0622

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/TextView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->i:Landroid/widget/TextView;

    .line 84
    .line 85
    const v0, 0x7f0a0220

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/TextView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->j:Landroid/widget/TextView;

    .line 95
    .line 96
    return-void
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

.method private synthetic b0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->l:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "\u6765\u81ea\u5012\u73ed\u8be6\u60c5\u9875"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->t1(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method private c0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "parseIntent(): intent INVALID:"

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "Cal:D:ShiftDetailActivity"

    .line 25
    .line 26
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->finish()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const-string v1, "from"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->n:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "\u6765\u81ea\u901a\u77e5"

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->o:Z

    .line 50
    .line 51
    :cond_1
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
.end method

.method private d0()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v9

    .line 7
    const-wide/32 v1, 0x5265c00

    .line 8
    .line 9
    .line 10
    add-long v11, v9, v1

    .line 11
    .line 12
    add-long v13, v11, v1

    .line 13
    .line 14
    new-instance v2, Ljava/util/Formatter;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v15, 0x32

    .line 19
    .line 20
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->l:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const/16 v7, 0x12

    .line 45
    .line 46
    move-wide v3, v9

    .line 47
    move-wide v5, v9

    .line 48
    invoke-static/range {v1 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v2, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->k:Lmiuix/appcompat/app/a;

    .line 53
    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const v4, 0x7f1202ec

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v4, " "

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/a;->z(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 89
    .line 90
    invoke-virtual {v1, v13, v14}, Lcom/miui/calendar/shift/ShiftSchema;->isStartShift(J)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    const/4 v2, 0x1

    .line 95
    const/4 v3, 0x0

    .line 96
    if-nez v1, :cond_0

    .line 97
    .line 98
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->b:Landroid/widget/TextView;

    .line 99
    .line 100
    const v4, 0x7f12057e

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->c:Landroid/widget/TextView;

    .line 107
    .line 108
    iget-object v4, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->l:Landroid/content/Context;

    .line 109
    .line 110
    iget-object v5, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 111
    .line 112
    iget-wide v5, v5, Lcom/miui/calendar/shift/ShiftSchema;->startTimeMillis:J

    .line 113
    .line 114
    invoke-static {v4, v5, v6}, Lcom/miui/calendar/util/s0;->g(Landroid/content/Context;J)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->d:Landroid/view/View;

    .line 122
    .line 123
    const/4 v4, 0x4

    .line 124
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->g:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_2

    .line 133
    .line 134
    :cond_0
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->d:Landroid/view/View;

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->g:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 145
    .line 146
    invoke-virtual {v1, v9, v10}, Lcom/miui/calendar/shift/ShiftSchema;->isStartShift(J)Z

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    const v4, 0x7f12057f

    .line 151
    .line 152
    .line 153
    const v5, 0x7f120583

    .line 154
    .line 155
    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 159
    .line 160
    invoke-virtual {v1, v9, v10}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_1

    .line 165
    .line 166
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->b:Landroid/widget/TextView;

    .line 167
    .line 168
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 169
    .line 170
    .line 171
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->c:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-static {v0, v3}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->b:Landroid/widget/TextView;

    .line 182
    .line 183
    const v4, 0x7f120580

    .line 184
    .line 185
    .line 186
    new-array v6, v2, [Ljava/lang/Object;

    .line 187
    .line 188
    iget-object v7, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 189
    .line 190
    invoke-virtual {v7, v9, v10}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    invoke-static {v0, v7}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    aput-object v7, v6, v3

    .line 199
    .line 200
    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->c:Landroid/widget/TextView;

    .line 208
    .line 209
    iget-object v4, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->l:Landroid/content/Context;

    .line 210
    .line 211
    iget-object v6, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 212
    .line 213
    invoke-virtual {v6, v9, v10}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftReminderMinutes(J)I

    .line 214
    .line 215
    .line 216
    move-result v6

    .line 217
    invoke-static {v4, v6, v2}, Lcom/miui/calendar/util/s0;->q(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->b:Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 228
    .line 229
    .line 230
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->c:Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 233
    .line 234
    .line 235
    :goto_0
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 236
    .line 237
    invoke-virtual {v1, v11, v12}, Lcom/miui/calendar/shift/ShiftSchema;->isStartShift(J)Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    const v4, 0x7f120581

    .line 242
    .line 243
    .line 244
    if-eqz v1, :cond_4

    .line 245
    .line 246
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 247
    .line 248
    invoke-virtual {v1, v11, v12}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-nez v1, :cond_3

    .line 253
    .line 254
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->e:Landroid/widget/TextView;

    .line 255
    .line 256
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 257
    .line 258
    .line 259
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->f:Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-static {v0, v3}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_3
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->e:Landroid/widget/TextView;

    .line 270
    .line 271
    const v4, 0x7f120582

    .line 272
    .line 273
    .line 274
    new-array v6, v2, [Ljava/lang/Object;

    .line 275
    .line 276
    iget-object v7, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 277
    .line 278
    invoke-virtual {v7, v11, v12}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    invoke-static {v0, v7}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    aput-object v7, v6, v3

    .line 287
    .line 288
    invoke-virtual {v0, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    .line 294
    .line 295
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->f:Landroid/widget/TextView;

    .line 296
    .line 297
    iget-object v4, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->l:Landroid/content/Context;

    .line 298
    .line 299
    iget-object v6, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 300
    .line 301
    invoke-virtual {v6, v11, v12}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftReminderMinutes(J)I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-static {v4, v6, v2}, Lcom/miui/calendar/util/s0;->q(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :cond_4
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->e:Landroid/widget/TextView;

    .line 314
    .line 315
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 316
    .line 317
    .line 318
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->f:Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 321
    .line 322
    .line 323
    :goto_1
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 324
    .line 325
    invoke-virtual {v1, v13, v14}, Lcom/miui/calendar/shift/ShiftSchema;->isStartShift(J)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    const v4, 0x7f12057c

    .line 330
    .line 331
    .line 332
    if-eqz v1, :cond_6

    .line 333
    .line 334
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 335
    .line 336
    invoke-virtual {v1, v13, v14}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-nez v1, :cond_5

    .line 341
    .line 342
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->h:Landroid/widget/TextView;

    .line 343
    .line 344
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 345
    .line 346
    .line 347
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->i:Landroid/widget/TextView;

    .line 348
    .line 349
    invoke-static {v0, v3}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v4

    .line 353
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .line 355
    .line 356
    goto :goto_2

    .line 357
    :cond_5
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->h:Landroid/widget/TextView;

    .line 358
    .line 359
    const v4, 0x7f12057d

    .line 360
    .line 361
    .line 362
    new-array v5, v2, [Ljava/lang/Object;

    .line 363
    .line 364
    iget-object v6, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 365
    .line 366
    invoke-virtual {v6, v13, v14}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    invoke-static {v0, v6}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    aput-object v6, v5, v3

    .line 375
    .line 376
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v4

    .line 380
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    .line 382
    .line 383
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->i:Landroid/widget/TextView;

    .line 384
    .line 385
    iget-object v4, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->l:Landroid/content/Context;

    .line 386
    .line 387
    iget-object v5, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 388
    .line 389
    invoke-virtual {v5, v13, v14}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftReminderMinutes(J)I

    .line 390
    .line 391
    .line 392
    move-result v5

    .line 393
    invoke-static {v4, v5, v2}, Lcom/miui/calendar/util/s0;->q(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    goto :goto_2

    .line 401
    :cond_6
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->h:Landroid/widget/TextView;

    .line 402
    .line 403
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 404
    .line 405
    .line 406
    iget-object v1, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->i:Landroid/widget/TextView;

    .line 407
    .line 408
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 409
    .line 410
    .line 411
    :goto_2
    new-instance v1, Ljava/util/Formatter;

    .line 412
    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v4, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 416
    .line 417
    .line 418
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 419
    .line 420
    .line 421
    move-result-object v5

    .line 422
    invoke-direct {v1, v4, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 423
    .line 424
    .line 425
    iget-object v4, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->l:Landroid/content/Context;

    .line 426
    .line 427
    iget-object v5, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 428
    .line 429
    iget-wide v5, v5, Lcom/miui/calendar/shift/ShiftSchema;->startTimeMillis:J

    .line 430
    .line 431
    const/16 v22, 0x14

    .line 432
    .line 433
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 434
    .line 435
    .line 436
    move-result-object v7

    .line 437
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 438
    .line 439
    .line 440
    move-result-object v7

    .line 441
    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 442
    .line 443
    .line 444
    move-result-object v23

    .line 445
    move-object/from16 v16, v4

    .line 446
    .line 447
    move-object/from16 v17, v1

    .line 448
    .line 449
    move-wide/from16 v18, v5

    .line 450
    .line 451
    move-wide/from16 v20, v5

    .line 452
    .line 453
    invoke-static/range {v16 .. v23}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    iget-object v4, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 458
    .line 459
    invoke-virtual {v4, v9, v10}, Lcom/miui/calendar/shift/ShiftSchema;->isStartShift(J)Z

    .line 460
    .line 461
    .line 462
    move-result v4

    .line 463
    const/4 v5, 0x2

    .line 464
    if-eqz v4, :cond_7

    .line 465
    .line 466
    iget-object v4, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->j:Landroid/widget/TextView;

    .line 467
    .line 468
    const v6, 0x7f120579

    .line 469
    .line 470
    .line 471
    const/4 v7, 0x3

    .line 472
    new-array v7, v7, [Ljava/lang/Object;

    .line 473
    .line 474
    iget-object v8, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 475
    .line 476
    iget v8, v8, Lcom/miui/calendar/shift/ShiftSchema;->interval:I

    .line 477
    .line 478
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    aput-object v8, v7, v3

    .line 483
    .line 484
    iget-object v3, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 485
    .line 486
    invoke-virtual {v3, v9, v10}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderIndex(J)I

    .line 487
    .line 488
    .line 489
    move-result v3

    .line 490
    add-int/2addr v3, v2

    .line 491
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    aput-object v3, v7, v2

    .line 496
    .line 497
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    aput-object v1, v7, v5

    .line 502
    .line 503
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .line 509
    .line 510
    goto :goto_3

    .line 511
    :cond_7
    iget-object v4, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->j:Landroid/widget/TextView;

    .line 512
    .line 513
    const v6, 0x7f12057b

    .line 514
    .line 515
    .line 516
    new-array v5, v5, [Ljava/lang/Object;

    .line 517
    .line 518
    iget-object v7, v0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 519
    .line 520
    iget v7, v7, Lcom/miui/calendar/shift/ShiftSchema;->interval:I

    .line 521
    .line 522
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 523
    .line 524
    .line 525
    move-result-object v7

    .line 526
    aput-object v7, v5, v3

    .line 527
    .line 528
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    aput-object v1, v5, v2

    .line 533
    .line 534
    invoke-virtual {v0, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    .line 540
    .line 541
    :goto_3
    return-void
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Lmiuix/appcompat/app/m;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->o:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->x0(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0215

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->l:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/miui/calendar/shift/ShiftDetailActivity;->c0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/miui/calendar/shift/ShiftDetailActivity;->Z()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/miui/calendar/shift/ShiftDetailActivity;->a0()V

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/miui/calendar/util/StatusBar;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/miui/calendar/util/StatusBar;-><init>(Landroid/app/Activity;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/miui/calendar/util/x0;->s0(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/StatusBar;->a(Z)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->n:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const-string v0, "\u6765\u81ea\u5176\u4ed6"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->n:Ljava/lang/String;

    .line 54
    .line 55
    :goto_0
    const-string v1, "from"

    .line 56
    .line 57
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v0, "shift_detail_display"

    .line 61
    .line 62
    invoke-static {v0, p1}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/calendar/common/b;->X()V

    .line 66
    .line 67
    .line 68
    return-void
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
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/d;->onPause()V

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

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/calendar/common/b;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lk4/d;->c(Landroid/content/Context;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/miui/calendar/shift/ShiftDetailActivity;->m:Lcom/miui/calendar/shift/ShiftSchema;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/miui/calendar/shift/ShiftDetailActivity;->d0()V

    .line 11
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
