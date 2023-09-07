.class public Lcom/android/calendar/cards/q1;
.super Lcom/android/calendar/cards/m1;
.source "ShiftCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/q1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/m1<",
        "Lcom/android/calendar/cards/q1$a;",
        "Lcom/android/calendar/cards/ShiftPresenter$a;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field private c:Lcom/miui/calendar/shift/ShiftSchema;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/m1;-><init>(Ljava/util/Calendar;)V

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

.method public static synthetic e(Lcom/android/calendar/cards/q1;Landroid/content/Context;Lcom/android/calendar/cards/q1$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/q1;->i(Landroid/content/Context;Lcom/android/calendar/cards/q1$a;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/calendar/cards/q1;Landroid/content/Context;Lcom/android/calendar/cards/q1$a;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/q1;->j(Landroid/content/Context;Lcom/android/calendar/cards/q1$a;Landroid/view/View;)V

    return-void
.end method

.method private synthetic i(Landroid/content/Context;Lcom/android/calendar/cards/q1$a;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p3, "\u6765\u81ea\u9996\u9875\u5361\u7247\u6309\u94ae"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lcom/android/calendar/common/Utils;->t1(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p2, p0, Lcom/android/calendar/cards/q1;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 11
    .line 12
    const-string p3, "card_change_clicked"

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {p3, p1, v0, v1, p2}, Lcom/android/calendar/cards/CardHelper;->m(Ljava/lang/String;IILjava/lang/String;Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 17
    .line 18
    .line 19
    return-void
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

.method private synthetic j(Landroid/content/Context;Lcom/android/calendar/cards/q1$a;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

    .line 2
    .line 3
    iget-boolean p3, p3, Lcom/miui/calendar/shift/ShiftSchema;->isRemind:Z

    .line 4
    .line 5
    const-string v0, "\u6765\u81ea\u9996\u9875\u5361\u7247"

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->s1(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->t1(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p2, -0x1

    .line 21
    const/4 p3, 0x0

    .line 22
    iget-object v0, p0, Lcom/android/calendar/cards/q1;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 23
    .line 24
    const-string v1, "card_item_clicked"

    .line 25
    .line 26
    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/calendar/cards/CardHelper;->m(Ljava/lang/String;IILjava/lang/String;Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 27
    .line 28
    .line 29
    return-void
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


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/cards/ShiftPresenter$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/cards/q1;->g(Lcom/android/calendar/cards/ShiftPresenter$a;)V

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

.method bridge synthetic b(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/content/Context;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/cards/q1$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/cards/q1;->h(Lcom/android/calendar/cards/q1$a;Landroid/content/Context;)V

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

.method c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/q1;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->sequence:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/16 v0, 0x69

    .line 9
    .line 10
    :goto_0
    return v0
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

.method d()I
    .locals 1

    const/16 v0, 0x35

    return v0
.end method

.method g(Lcom/android/calendar/cards/ShiftPresenter$a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/calendar/cards/ShiftPresenter$a;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/calendar/cards/q1;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/calendar/cards/ShiftPresenter$a;->b:Lcom/miui/calendar/shift/ShiftSchema;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

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

.method h(Lcom/android/calendar/cards/q1$a;Landroid/content/Context;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->a:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/android/calendar/cards/CardHelper;->a:Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;->customTitle:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p1, Lcom/android/calendar/cards/q1$a;->a:Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;->customTitle:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->a:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/calendar/cards/q1;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->title:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    iget-boolean v0, v0, Lcom/miui/calendar/shift/ShiftSchema;->isRemind:Z

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->h:Landroid/view/View;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->c:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    iget-object v0, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

    .line 60
    .line 61
    invoke-virtual {v0, v3, v4}, Lcom/miui/calendar/shift/ShiftSchema;->isStartShift(J)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v5, 0x1

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->b:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->c:Landroid/widget/TextView;

    .line 74
    .line 75
    const v6, 0x7f120577

    .line 76
    .line 77
    .line 78
    new-array v7, v5, [Ljava/lang/Object;

    .line 79
    .line 80
    iget-object v8, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

    .line 81
    .line 82
    invoke-virtual {v8, v3, v4}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    invoke-static {p2, v8}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    aput-object v8, v7, v2

    .line 91
    .line 92
    invoke-virtual {p2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->d:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

    .line 105
    .line 106
    invoke-virtual {v0, v3, v4}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftType(J)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_2

    .line 111
    .line 112
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->e:Landroid/widget/TextView;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->f:Landroid/view/View;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->e:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->e:Landroid/widget/TextView;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

    .line 131
    .line 132
    invoke-virtual {v1, v3, v4}, Lcom/miui/calendar/shift/ShiftSchema;->getShiftReminderMinutes(J)I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-static {p2, v1, v5}, Lcom/miui/calendar/util/s0;->q(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->f:Landroid/view/View;

    .line 144
    .line 145
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :goto_1
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->g:Landroid/widget/TextView;

    .line 149
    .line 150
    const v1, 0x7f120575

    .line 151
    .line 152
    .line 153
    new-array v3, v5, [Ljava/lang/Object;

    .line 154
    .line 155
    iget-object v4, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

    .line 156
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 158
    .line 159
    .line 160
    move-result-wide v6

    .line 161
    invoke-virtual {v4, v6, v7}, Lcom/miui/calendar/shift/ShiftSchema;->getReminderIndex(J)I

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    add-int/2addr v4, v5

    .line 166
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    aput-object v4, v3, v2

    .line 171
    .line 172
    invoke-virtual {p2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_3
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->b:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->c:Landroid/widget/TextView;

    .line 186
    .line 187
    const v3, 0x7f120578

    .line 188
    .line 189
    .line 190
    new-array v4, v5, [Ljava/lang/Object;

    .line 191
    .line 192
    iget-object v5, p0, Lcom/android/calendar/cards/q1;->c:Lcom/miui/calendar/shift/ShiftSchema;

    .line 193
    .line 194
    iget-wide v5, v5, Lcom/miui/calendar/shift/ShiftSchema;->startTimeMillis:J

    .line 195
    .line 196
    invoke-static {p2, v5, v6}, Lcom/miui/calendar/util/s0;->g(Landroid/content/Context;J)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    aput-object v5, v4, v2

    .line 201
    .line 202
    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->d:Landroid/view/View;

    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_4
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->b:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->h:Landroid/view/View;

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->c:Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->d:Landroid/view/View;

    .line 231
    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    :goto_2
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->b:Landroid/widget/TextView;

    .line 236
    .line 237
    new-instance v1, Lcom/android/calendar/cards/o1;

    .line 238
    .line 239
    invoke-direct {v1, p0, p2, p1}, Lcom/android/calendar/cards/o1;-><init>(Lcom/android/calendar/cards/q1;Landroid/content/Context;Lcom/android/calendar/cards/q1$a;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->b:Landroid/widget/TextView;

    .line 246
    .line 247
    invoke-static {v0}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 248
    .line 249
    .line 250
    iget-object v0, p1, Lcom/android/calendar/cards/q1$a;->i:Landroid/view/View;

    .line 251
    .line 252
    new-instance v1, Lcom/android/calendar/cards/p1;

    .line 253
    .line 254
    invoke-direct {v1, p0, p2, p1}, Lcom/android/calendar/cards/p1;-><init>(Lcom/android/calendar/cards/q1;Landroid/content/Context;Lcom/android/calendar/cards/q1$a;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p1, Lcom/android/calendar/cards/q1$a;->i:Landroid/view/View;

    .line 261
    .line 262
    invoke-static {p1}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 263
    .line 264
    .line 265
    return-void
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
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
.end method
