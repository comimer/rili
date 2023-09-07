.class public Lcom/android/calendar/homepage/YearFrameLayout;
.super Landroid/widget/FrameLayout;
.source "YearFrameLayout.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/homepage/YearFrameLayout$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/miui/calendar/view/InfiniteViewPager;

.field private c:[Lcom/android/calendar/homepage/c2;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Landroid/view/View;

.field private m:Lcom/android/calendar/homepage/YearFrameLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/homepage/YearFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    iput-object p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->a:Landroid/content/Context;

    .line 3
    invoke-direct {p0}, Lcom/android/calendar/homepage/YearFrameLayout;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/android/calendar/homepage/c2;

    .line 5
    iput-object p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->c:[Lcom/android/calendar/homepage/c2;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 7
    iput p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->g:I

    return-void
.end method

.method public static synthetic a(Lcom/android/calendar/homepage/YearFrameLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/YearFrameLayout;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/calendar/homepage/YearFrameLayout;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/YearFrameLayout;->j(II)V

    return-void
.end method

.method private c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, ">> afterPagerStateIdled() << "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "Cal:D:YearFrameLayout"

    .line 25
    .line 26
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    iget v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 40
    .line 41
    iget v2, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 42
    .line 43
    sub-int/2addr v1, v2

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 46
    .line 47
    iget v2, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 48
    .line 49
    add-int/2addr v1, v2

    .line 50
    :goto_0
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Lcom/android/calendar/common/k;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/calendar/homepage/YearFrameLayout;->e(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const v3, 0x7f12002a

    .line 70
    .line 71
    .line 72
    new-array v4, v2, [Ljava/lang/Object;

    .line 73
    .line 74
    const/4 v5, 0x0

    .line 75
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    aput-object v0, v4, v5

    .line 84
    .line 85
    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x4

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 94
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

.method private d(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/miui/calendar/util/h0;->a(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    neg-int p1, p1

    .line 14
    :cond_0
    return p1
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->a:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f0d00ff

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x7f0a06c3

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/calendar/view/InfiniteViewPager;

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 20
    .line 21
    const v1, 0x7f0a0645

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->l:Landroid/view/View;

    .line 29
    .line 30
    new-instance v2, Lcom/android/calendar/homepage/z1;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lcom/android/calendar/homepage/z1;-><init>(Lcom/android/calendar/homepage/YearFrameLayout;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->l:Landroid/view/View;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/miui/calendar/util/v;->e(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    const v1, 0x7f0a0643

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-static {}, Lcom/miui/calendar/util/y;->a()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v2, 0x5

    .line 63
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/YearFrameLayout;->g(I)V

    .line 76
    .line 77
    .line 78
    return-void
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

.method private g(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "initViewPager(): deltaPosition = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Cal:D:YearFrameLayout"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->i:Z

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->i:Z

    .line 29
    .line 30
    invoke-static {}, Lcom/android/calendar/common/Utils;->X()Ljava/util/Calendar;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 39
    .line 40
    invoke-static {}, Lcom/android/calendar/common/Utils;->V()Ljava/util/Calendar;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->k:I

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->l:Landroid/view/View;

    .line 51
    .line 52
    const/16 v1, 0x8

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    move v1, v0

    .line 59
    :goto_0
    const/4 v2, 0x3

    .line 60
    if-ge v1, v2, :cond_0

    .line 61
    .line 62
    iget-object v2, p0, Lcom/android/calendar/homepage/YearFrameLayout;->c:[Lcom/android/calendar/homepage/c2;

    .line 63
    .line 64
    new-instance v3, Lcom/android/calendar/homepage/c2;

    .line 65
    .line 66
    iget-object v4, p0, Lcom/android/calendar/homepage/YearFrameLayout;->a:Landroid/content/Context;

    .line 67
    .line 68
    iget v5, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 69
    .line 70
    add-int/2addr v5, v1

    .line 71
    invoke-direct {v3, v4, v5}, Lcom/android/calendar/homepage/c2;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    aput-object v3, v2, v1

    .line 75
    .line 76
    iget-object v2, p0, Lcom/android/calendar/homepage/YearFrameLayout;->c:[Lcom/android/calendar/homepage/c2;

    .line 77
    .line 78
    aget-object v2, v2, v1

    .line 79
    .line 80
    new-instance v3, Lcom/android/calendar/homepage/y1;

    .line 81
    .line 82
    invoke-direct {v3, p0}, Lcom/android/calendar/homepage/y1;-><init>(Lcom/android/calendar/homepage/YearFrameLayout;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v3}, Lcom/android/calendar/homepage/c2;->setOnMonthClickListener(Lcom/android/calendar/homepage/c2$a;)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v1, v1, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    new-array v1, v2, [Landroid/widget/ScrollView;

    .line 92
    .line 93
    move v3, v0

    .line 94
    :goto_1
    if-ge v3, v2, :cond_1

    .line 95
    .line 96
    new-instance v4, Landroid/widget/ScrollView;

    .line 97
    .line 98
    iget-object v5, p0, Lcom/android/calendar/homepage/YearFrameLayout;->a:Landroid/content/Context;

    .line 99
    .line 100
    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    aput-object v4, v1, v3

    .line 104
    .line 105
    invoke-virtual {v4, v0}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 106
    .line 107
    .line 108
    aget-object v4, v1, v3

    .line 109
    .line 110
    invoke-virtual {v4, v0}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 111
    .line 112
    .line 113
    aget-object v4, v1, v3

    .line 114
    .line 115
    iget-object v5, p0, Lcom/android/calendar/homepage/YearFrameLayout;->c:[Lcom/android/calendar/homepage/c2;

    .line 116
    .line 117
    aget-object v5, v5, v3

    .line 118
    .line 119
    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 126
    .line 127
    new-instance v2, Lcom/miui/calendar/view/k;

    .line 128
    .line 129
    new-instance v3, Lcom/miui/calendar/view/f;

    .line 130
    .line 131
    iget-object v4, p0, Lcom/android/calendar/homepage/YearFrameLayout;->a:Landroid/content/Context;

    .line 132
    .line 133
    invoke-direct {v3, v4, v1}, Lcom/miui/calendar/view/f;-><init>(Landroid/content/Context;[Landroid/view/View;)V

    .line 134
    .line 135
    .line 136
    invoke-direct {v2, v3}, Lcom/miui/calendar/view/k;-><init>(Landroidx/viewpager/widget/b;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v2, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->T(Landroidx/viewpager/widget/b;I)V

    .line 140
    .line 141
    .line 142
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->a:Landroid/content/Context;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->k:I

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->T(I)V

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->setCurrentItemInfinite(I)V

    .line 162
    .line 163
    .line 164
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 165
    .line 166
    invoke-static {v0}, Lcom/miui/calendar/util/h0;->b(Landroidx/viewpager/widget/ViewPager;)V

    .line 167
    .line 168
    .line 169
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/YearFrameLayout;->h(I)V

    .line 170
    .line 171
    .line 172
    return-void
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
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
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
.end method

.method private h(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/miui/calendar/view/InfiniteViewPager;->getOffsetAmount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    iput v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->e:I

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/miui/calendar/view/InfiniteViewPager;->S(I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->d:I

    .line 17
    .line 18
    iput p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "initViewPosition(): deltaPosition = "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "Cal:D:YearFrameLayout"

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
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

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/YearFrameLayout;->e(I)V

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

.method private synthetic j(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->m:Lcom/android/calendar/homepage/YearFrameLayout$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/android/calendar/homepage/YearFrameLayout$a;->a(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
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

.method private l(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->e:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/calendar/view/InfiniteViewPager;->S(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->d:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/miui/calendar/view/InfiniteViewPager;->getOffsetAmount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sub-int/2addr p1, v0

    .line 18
    iput p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "updateViewPosition(): mVirtualPosition = "

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->e:I

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, " mRealPosition = "

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->d:I

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, " mDeltaPosition = "

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "Cal:D:YearFrameLayout"

    .line 60
    .line 61
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
    .line 65
.end method


# virtual methods
.method public e(I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "goTo(): year = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Cal:D:YearFrameLayout"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->k:I

    .line 24
    .line 25
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 26
    .line 27
    iget v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 28
    .line 29
    sub-int v1, p1, v1

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x0

    .line 33
    if-eq v0, v1, :cond_0

    .line 34
    .line 35
    move v4, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v4, v3

    .line 38
    :goto_0
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    neg-int v4, v1

    .line 45
    if-eq v0, v4, :cond_1

    .line 46
    .line 47
    move v4, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v4, v3

    .line 50
    :cond_2
    :goto_1
    if-eqz v4, :cond_4

    .line 51
    .line 52
    sub-int/2addr v0, v1

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ne v0, v2, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/InfiniteViewPager;->setCurrentItemInfinite(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/calendar/homepage/YearFrameLayout;->g(I)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_2
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->g:I

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/calendar/homepage/YearFrameLayout;->k()V

    .line 73
    .line 74
    .line 75
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->a:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/android/calendar/homepage/t0;->p(Landroid/content/Context;)Lcom/android/calendar/homepage/t0;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->k:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/android/calendar/homepage/t0;->T(I)V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 87
    .line 88
    if-eq p1, v0, :cond_6

    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->l:Landroid/view/View;

    .line 91
    .line 92
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_6
    iget-object p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->l:Landroid/view/View;

    .line 97
    .line 98
    const/16 v0, 0x8

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    :goto_3
    return-void
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

.method public k()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->c:[Lcom/android/calendar/homepage/c2;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v2, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/YearFrameLayout;->d(I)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v2, v3

    .line 18
    invoke-virtual {v1, v2}, Lcom/android/calendar/homepage/c2;->setYear(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/calendar/homepage/c2;->f()V

    .line 22
    .line 23
    .line 24
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
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
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->g:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "onPageScrollStateChanged "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget v1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->g:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Cal:D:YearFrameLayout"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->h:Z

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    invoke-direct {p0}, Lcom/android/calendar/homepage/YearFrameLayout;->c()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
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

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, ">> onPageSelected() << "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Cal:D:YearFrameLayout"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->e:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_0

    .line 26
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "onPageSelected(): same position = "

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->h:Z

    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/YearFrameLayout;->l(I)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->h:Z

    .line 56
    .line 57
    invoke-static {}, Lcom/miui/calendar/util/x0;->x0()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 64
    .line 65
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 66
    .line 67
    sub-int/2addr p1, v0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->j:I

    .line 70
    .line 71
    iget v0, p0, Lcom/android/calendar/homepage/YearFrameLayout;->f:I

    .line 72
    .line 73
    add-int/2addr p1, v0

    .line 74
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/YearFrameLayout;->e(I)V

    .line 75
    .line 76
    .line 77
    return-void
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

.method public setOnMonthClickListener(Lcom/android/calendar/homepage/YearFrameLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/YearFrameLayout;->m:Lcom/android/calendar/homepage/YearFrameLayout$a;

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
