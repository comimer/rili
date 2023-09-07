.class public Lcom/miui/calendar/huangli/HuangLiDetailActivity;
.super Lcom/android/calendar/common/b;
.source "HuangLiDetailActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$j;


# instance fields
.field private b:Lcom/miui/calendar/view/InfiniteViewPager;

.field private c:Lcom/miui/calendar/huangli/HuangLiView;

.field private d:I

.field private e:I

.field private f:[Lcom/miui/calendar/huangli/HuangLiView;

.field private g:J

.field private h:Lmiuix/appcompat/app/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->d:I

    .line 6
    .line 7
    iput v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->e:I

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

.method public static synthetic Y(Lcom/miui/calendar/huangli/HuangLiDetailActivity;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b0(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic Z(Lcom/miui/calendar/huangli/HuangLiDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->init()V

    return-void
.end method

.method private a0(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->d:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/miui/calendar/util/h0;->a(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
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

.method private synthetic b0(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->c:Lcom/miui/calendar/huangli/HuangLiView;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->c:Lcom/miui/calendar/huangli/HuangLiView;

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

.method private c0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "parseIntent(): url:"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "Cal:D:HuangLiDetailActivity"

    .line 35
    .line 36
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, "timeInMillis"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->g:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v1, "parseIntent()"

    .line 54
    .line 55
    invoke-static {v2, v1, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->g:J

    .line 59
    .line 60
    const-wide/16 v2, 0x0

    .line 61
    .line 62
    cmp-long v0, v0, v2

    .line 63
    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    iput-wide v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->g:J

    .line 71
    .line 72
    :cond_1
    return-void
    .line 73
    .line 74
    .line 75
.end method

.method private d0(Ljava/util/Calendar;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->h:Lmiuix/appcompat/app/a;

    .line 2
    .line 3
    const-string v1, "Cal:D:HuangLiDetailActivity"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, "actionBar is null"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v0, 0x5

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x1

    .line 29
    const/4 v7, 0x1

    .line 30
    move-object v2, p0

    .line 31
    invoke-static/range {v2 .. v7}, Lcom/android/calendar/common/Utils;->Q(Landroid/content/Context;IIIZZ)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    const-string v0, "title is empty"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->h:Lmiuix/appcompat/app/a;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->B(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
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

.method private e0()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->f:[Lcom/miui/calendar/huangli/HuangLiView;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->a0(I)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-wide v2, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->g:J

    .line 12
    .line 13
    int-to-long v4, v1

    .line 14
    const-wide/32 v6, 0x5265c00

    .line 15
    .line 16
    .line 17
    mul-long/2addr v4, v6

    .line 18
    add-long/2addr v2, v4

    .line 19
    iget-object v1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->f:[Lcom/miui/calendar/huangli/HuangLiView;

    .line 20
    .line 21
    aget-object v1, v1, v0

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/miui/calendar/huangli/HuangLiView;->a(J)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
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
.end method

.method private init()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->f:[Lcom/miui/calendar/huangli/HuangLiView;

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    new-instance v2, Lcom/miui/calendar/huangli/HuangLiView;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lcom/miui/calendar/huangli/HuangLiView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    aput-object v2, v1, v0

    .line 13
    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->e0()V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/miui/calendar/view/InfiniteViewPager;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/miui/calendar/view/InfiniteViewPager;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->c(Landroidx/viewpager/widget/ViewPager$j;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 31
    .line 32
    new-instance v1, Lcom/miui/calendar/view/k;

    .line 33
    .line 34
    new-instance v2, Lcom/miui/calendar/view/f;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->f:[Lcom/miui/calendar/huangli/HuangLiView;

    .line 37
    .line 38
    invoke-direct {v2, p0, v3}, Lcom/miui/calendar/view/f;-><init>(Landroid/content/Context;[Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2}, Lcom/miui/calendar/view/k;-><init>(Landroidx/viewpager/widget/b;)V

    .line 42
    .line 43
    .line 44
    iget v2, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->d:I

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/miui/calendar/view/InfiniteViewPager;->T(Landroidx/viewpager/widget/b;I)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    const/4 v1, -0x1

    .line 52
    const/4 v2, -0x2

    .line 53
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 57
    .line 58
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    const v0, 0x7f0a02f7

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/FrameLayout;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 76
    .line 77
    new-instance v2, La4/c;

    .line 78
    .line 79
    invoke-direct {v2, p0, v0}, La4/c;-><init>(Lcom/miui/calendar/huangli/HuangLiDetailActivity;Landroid/widget/FrameLayout;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 83
    .line 84
    .line 85
    return-void
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


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/appcompat/app/m;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/miui/calendar/util/y;->p(Landroid/content/Context;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/android/calendar/common/Utils;->x0(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    :cond_0
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d00d7

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->c0()V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a02f6

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/miui/calendar/huangli/HuangLiView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->c:Lcom/miui/calendar/huangli/HuangLiView;

    .line 23
    .line 24
    iget-wide v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->g:J

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/miui/calendar/huangli/HuangLiView;->a(J)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-wide v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->g:J

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lmiuix/appcompat/app/m;->J()Lmiuix/appcompat/app/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->h:Lmiuix/appcompat/app/a;

    .line 43
    .line 44
    invoke-direct {p0, p1}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->d0(Ljava/util/Calendar;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "huangli_activity_displayed"

    .line 48
    .line 49
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->M()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_0

    .line 57
    .line 58
    const/4 p1, 0x3

    .line 59
    new-array p1, p1, [Lcom/miui/calendar/huangli/HuangLiView;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->f:[Lcom/miui/calendar/huangli/HuangLiView;

    .line 62
    .line 63
    iget-object p1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->c:Lcom/miui/calendar/huangli/HuangLiView;

    .line 64
    .line 65
    new-instance v0, La4/b;

    .line 66
    .line 67
    invoke-direct {v0, p0}, La4/b;-><init>(Lcom/miui/calendar/huangli/HuangLiDetailActivity;)V

    .line 68
    .line 69
    .line 70
    const-wide/16 v1, 0x1f4

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/common/b;->X()V

    .line 76
    .line 77
    .line 78
    :cond_0
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
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/miui/calendar/view/InfiniteViewPager;->getOffsetAmount()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sub-int/2addr p1, v0

    .line 17
    iput p1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->d:I

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->e0()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->g:J

    .line 2
    .line 3
    iget-object p1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget-object v2, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/miui/calendar/view/InfiniteViewPager;->getOffsetAmount()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    sub-int/2addr p1, v2

    .line 16
    int-to-long v2, p1

    .line 17
    const-wide/32 v4, 0x5265c00

    .line 18
    .line 19
    .line 20
    mul-long/2addr v2, v4

    .line 21
    add-long/2addr v0, v2

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/calendar/common/k;->h(Ljava/util/Calendar;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 36
    .line 37
    iget v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->e:I

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/miui/calendar/view/InfiniteViewPager;->setCurrentItemInfinite(I)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-object v1, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->b:Lcom/miui/calendar/view/InfiniteViewPager;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/miui/calendar/view/InfiniteViewPager;->getOffsetAmount()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int/2addr v0, v1

    .line 56
    iput v0, p0, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->e:I

    .line 57
    .line 58
    invoke-direct {p0, p1}, Lcom/miui/calendar/huangli/HuangLiDetailActivity;->d0(Ljava/util/Calendar;)V

    .line 59
    .line 60
    .line 61
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
.end method
