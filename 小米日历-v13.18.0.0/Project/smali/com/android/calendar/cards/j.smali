.class public Lcom/android/calendar/cards/j;
.super Lcom/android/calendar/cards/m1;
.source "AdCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/j$d;,
        Lcom/android/calendar/cards/j$b;,
        Lcom/android/calendar/cards/j$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/m1<",
        "Lcom/android/calendar/cards/j$b;",
        "Lcom/android/calendar/cards/m$b;",
        ">;"
    }
.end annotation


# instance fields
.field b:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field c:Lcom/miui/calendar/ad/AdSchema;

.field d:Lcom/android/calendar/cards/m$a;

.field private e:Lcom/android/calendar/cards/j$d;

.field private f:I

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Ljava/util/Calendar;Lcom/android/calendar/cards/j$d;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/m1;-><init>(Ljava/util/Calendar;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/calendar/cards/j;->f:I

    .line 6
    .line 7
    iput p1, p0, Lcom/android/calendar/cards/j;->g:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/calendar/cards/j;->h:J

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/calendar/cards/j;->e:Lcom/android/calendar/cards/j$d;

    .line 14
    .line 15
    return-void
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

.method private D(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;Landroid/widget/TextView;)V
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p2, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object p2, p2, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, p2}, Lcom/miui/calendar/ad/c;->d(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-static {p1}, Lcom/miui/calendar/ad/c;->a(Landroid/content/Context;)Lcom/miui/calendar/ad/c;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/miui/calendar/ad/c;->c(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v0, 0x5

    .line 41
    if-ne p2, v0, :cond_2

    .line 42
    .line 43
    const/4 p2, -0x3

    .line 44
    if-ne p1, p2, :cond_2

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
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

.method public static synthetic e(Lcom/android/calendar/cards/j;Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/j;->t(Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/calendar/cards/j;Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/j;->v(Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/calendar/cards/j;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/j;->y(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/android/calendar/cards/j;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/j;->z(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/calendar/cards/j;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/j;->w(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/calendar/cards/j;Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/j;->u(Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/calendar/cards/j;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/j;->x(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method static synthetic l(Lcom/android/calendar/cards/j;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/j;->n(Ljava/util/Map;)V

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

.method static synthetic m(Lcom/android/calendar/cards/j;)Lcom/android/calendar/cards/j$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/j;->e:Lcom/android/calendar/cards/j$d;

    .line 2
    .line 3
    return-object p0
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

.method private n(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    .line 5
    .line 6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->d(Ljava/util/Calendar;Ljava/util/Calendar;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "ad_day_offset"

    .line 19
    .line 20
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-void
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
.end method

.method private q(Landroid/content/Context;Lcom/android/calendar/cards/j$b;)Lcom/miui/calendar/view/AdProgressTextView$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/cards/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/android/calendar/cards/j$a;-><init>(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
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

.method private s(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Landroid/view/View;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_9

    .line 3
    .line 4
    iget-object v1, p2, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_0

    .line 13
    .line 14
    :cond_0
    iget-object v1, p2, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "expStyle"

    .line 17
    .line 18
    invoke-virtual {p2, v2}, Lcom/miui/calendar/ad/AdSchema;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string v2, "3.21"

    .line 23
    .line 24
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const p2, 0x7f0d00e1

    .line 31
    .line 32
    .line 33
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    const-string v2, "12.4"

    .line 39
    .line 40
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_7

    .line 45
    .line 46
    const-string v1, "exp1"

    .line 47
    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    const p2, 0x7f0d0050

    .line 55
    .line 56
    .line 57
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1

    .line 62
    :cond_2
    const-string v1, "exp2"

    .line 63
    .line 64
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    const p2, 0x7f0d0052

    .line 71
    .line 72
    .line 73
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1

    .line 78
    :cond_3
    const-string v1, "exp3"

    .line 79
    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    const p2, 0x7f0d0051

    .line 87
    .line 88
    .line 89
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1

    .line 94
    :cond_4
    const-string v1, "exp4"

    .line 95
    .line 96
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    const p2, 0x7f0d004f

    .line 103
    .line 104
    .line 105
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    :cond_5
    const-string v1, "exp5"

    .line 111
    .line 112
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    if-eqz p2, :cond_6

    .line 117
    .line 118
    const p2, 0x7f0d004e

    .line 119
    .line 120
    .line 121
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    return-object p1

    .line 126
    :cond_6
    const p2, 0x7f0d004d

    .line 127
    .line 128
    .line 129
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :cond_7
    const-string p2, "24.1"

    .line 135
    .line 136
    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    if-eqz p2, :cond_8

    .line 141
    .line 142
    const p2, 0x7f0d00f1

    .line 143
    .line 144
    .line 145
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    return-object p1

    .line 150
    :cond_8
    const-string p1, "Cal:D:AdCard"

    .line 151
    .line 152
    const-string p2, "createAdSingleCard() unknown template"

    .line 153
    .line 154
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_9
    :goto_0
    return-object v0
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

.method private synthetic t(Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V
    .locals 6

    .line 1
    new-instance p3, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p3}, Lcom/android/calendar/cards/j;->n(Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/miui/calendar/ad/AdSchema;->onDownloadAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    const-string v1, "ad_card_clicked_to_open_app"

    .line 31
    .line 32
    move-object v0, p0

    .line 33
    move-object v5, p3

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/miui/calendar/ad/AdSchema;->onJumpAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, -0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    const-string v1, "ad_card_item_clicked_start_download"

    .line 50
    .line 51
    move-object v0, p0

    .line 52
    move-object v5, p3

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, -0x1

    .line 61
    const/4 v4, 0x0

    .line 62
    const-string v1, "card_item_clicked"

    .line 63
    .line 64
    move-object v0, p0

    .line 65
    move-object v5, p3

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    return-void
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

.method private synthetic u(Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V
    .locals 6

    .line 1
    new-instance p3, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p3}, Lcom/android/calendar/cards/j;->n(Ljava/util/Map;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->packageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/android/calendar/common/Utils;->i0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/miui/calendar/ad/AdSchema;->onDownloadAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, 0x0

    .line 30
    const-string v1, "ad_card_clicked_to_open_app"

    .line 31
    .line 32
    move-object v0, p0

    .line 33
    move-object v5, p3

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/miui/calendar/ad/AdSchema;->onJumpAdItemClicked(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, -0x1

    .line 48
    const/4 v4, 0x0

    .line 49
    const-string v1, "ad_card_item_clicked_start_download"

    .line 50
    .line 51
    move-object v0, p0

    .line 52
    move-object v5, p3

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    const/4 v3, -0x1

    .line 61
    const/4 v4, 0x0

    .line 62
    const-string v1, "card_item_clicked"

    .line 63
    .line 64
    move-object v0, p0

    .line 65
    move-object v5, p3

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 67
    .line 68
    .line 69
    return-void
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

.method private synthetic v(Landroid/content/Context;Lcom/android/calendar/cards/j$b;Landroid/view/View;)V
    .locals 6

    .line 1
    const-string p3, "Cal:D:AdCard"

    .line 2
    .line 3
    const-string v0, "adViewHolder.closeView onClick"

    .line 4
    .line 5
    invoke-static {p3, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p3, Lcom/android/calendar/cards/j$c;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p3, p0, p2, v0}, Lcom/android/calendar/cards/j$c;-><init>(Lcom/android/calendar/cards/j;Lcom/android/calendar/cards/j$b;Lcom/android/calendar/cards/j$a;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/miui/calendar/ad/AdSchema;->ex:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "calendar_appdownloadadcard"

    .line 19
    .line 20
    invoke-static {p1, p3, v1, v0}, Lcom/miui/calendar/ad/AdSchema;->onAdItemClosed(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/calendar/cards/j;->e:Lcom/android/calendar/cards/j$d;

    .line 27
    .line 28
    invoke-interface {p1}, Lcom/android/calendar/cards/j$d;->a()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Landroid/util/ArrayMap;

    .line 32
    .line 33
    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, v5}, Lcom/android/calendar/cards/j;->n(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, -0x1

    .line 44
    const/4 v4, 0x0

    .line 45
    const-string v1, "card_close_clicked"

    .line 46
    .line 47
    move-object v0, p0

    .line 48
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    :cond_0
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

.method private synthetic w(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/miui/calendar/ad/AdSchema;->onCancelByFloat(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string p2, "Cal:D:AdCard"

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "onClick() cancel installing error"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "onClick() cancel installing success"

    .line 18
    .line 19
    invoke-static {p2, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void
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

.method private synthetic x(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/miui/calendar/ad/AdSchema;->appPrivacy:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/miui/calendar/web/d;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
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

.method private synthetic y(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/miui/calendar/ad/AdSchema;->appPermission:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/miui/calendar/web/d;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
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

.method private synthetic z(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/miui/calendar/ad/AdSchema;->appIntroduction:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/miui/calendar/web/d;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
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


# virtual methods
.method public A(Landroid/view/View;I)V
    .locals 8

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    aget p1, v0, p1

    .line 11
    .line 12
    iget v0, p0, Lcom/android/calendar/cards/j;->f:I

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "window"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/view/WindowManager;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/Point;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 38
    .line 39
    .line 40
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 41
    .line 42
    iput v0, p0, Lcom/android/calendar/cards/j;->f:I

    .line 43
    .line 44
    :cond_0
    iget-wide v0, p0, Lcom/android/calendar/cards/j;->h:J

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    cmp-long v2, v0, v2

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    invoke-static {}, Lcom/android/calendar/common/Utils;->I()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    invoke-static {v0, v1, v4, v5}, Lcom/android/calendar/common/Utils;->k0(JJ)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    .line 63
    iput v3, p0, Lcom/android/calendar/cards/j;->g:I

    .line 64
    .line 65
    :cond_1
    move v3, v0

    .line 66
    :cond_2
    if-nez v3, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/miui/calendar/ad/AdSchema;->onAdItemDisplayed(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)V

    .line 75
    .line 76
    .line 77
    new-instance v7, Landroid/util/ArrayMap;

    .line 78
    .line 79
    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v7}, Lcom/android/calendar/cards/j;->n(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    const/4 v5, -0x1

    .line 86
    const/4 v6, 0x0

    .line 87
    const-string v3, "card_displayed"

    .line 88
    .line 89
    move-object v2, p0

    .line 90
    move v4, p2

    .line 91
    invoke-virtual/range {v2 .. v7}, Lcom/android/calendar/cards/j;->B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/android/calendar/common/Utils;->I()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iput-wide v0, p0, Lcom/android/calendar/cards/j;->h:J

    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 101
    .line 102
    invoke-static {p2}, Lcom/miui/calendar/ad/AdSchema;->isNeedQueryNewAd(Lcom/miui/calendar/ad/AdSchema;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_3

    .line 107
    .line 108
    invoke-static {}, Lcom/miui/calendar/ad/b;->e()Lcom/miui/calendar/ad/b;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 117
    .line 118
    iget-wide v2, v1, Lcom/miui/calendar/ad/AdSchema;->id:J

    .line 119
    .line 120
    iget-object v1, v1, Lcom/miui/calendar/ad/AdSchema;->tagId:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {p2, v0, v2, v3, v1}, Lcom/miui/calendar/ad/b;->g(Landroid/content/Context;JLjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iput p1, p0, Lcom/android/calendar/cards/j;->g:I

    .line 126
    .line 127
    :cond_4
    return-void
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

.method protected B(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance p5, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-direct {p5}, Landroid/util/ArrayMap;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    move-object v4, p5

    .line 13
    iget-object p5, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 14
    .line 15
    if-eqz p5, :cond_1

    .line 16
    .line 17
    iget-wide v0, p5, Lcom/miui/calendar/ad/AdSchema;->id:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    const-string v0, "ad_id"

    .line 24
    .line 25
    invoke-interface {v4, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v5, p0, Lcom/android/calendar/cards/j;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 29
    .line 30
    move-object v0, p1

    .line 31
    move v1, p2

    .line 32
    move v2, p3

    .line 33
    move-object v3, p4

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/cards/CardHelper;->n(Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 35
    .line 36
    .line 37
    return-void
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
.end method

.method public C(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x6

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "."

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    return-object p1
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
.end method

.method bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/cards/m$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/cards/j;->o(Lcom/android/calendar/cards/m$b;)V

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
    check-cast p1, Lcom/android/calendar/cards/j$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/cards/j;->p(Lcom/android/calendar/cards/j$b;Landroid/content/Context;)V

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
    iget-object v0, p0, Lcom/android/calendar/cards/j;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

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
    const/16 v0, 0x5a

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

    const/16 v0, 0x14

    return v0
.end method

.method o(Lcom/android/calendar/cards/m$b;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/calendar/cards/m$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/calendar/cards/j;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/calendar/cards/m$b;->b:Lcom/miui/calendar/ad/AdSchema;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/calendar/cards/m$b;->c:Lcom/android/calendar/cards/m$a;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/calendar/cards/j;->d:Lcom/android/calendar/cards/m$a;

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

.method p(Lcom/android/calendar/cards/j$b;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2
    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    const-string v5, "expStyle"

    invoke-virtual {v4, v5}, Lcom/miui/calendar/ad/AdSchema;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->a:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    invoke-direct {v0, v2, v3}, Lcom/android/calendar/cards/j;->s(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;)Landroid/view/View;

    move-result-object v3

    .line 5
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/cards/j$b;->a()V

    .line 7
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->y:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 8
    new-instance v6, Lcom/android/calendar/cards/c;

    invoke-direct {v6, v0, v2, v1}, Lcom/android/calendar/cards/c;-><init>(Lcom/android/calendar/cards/j;Landroid/content/Context;Lcom/android/calendar/cards/j$b;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->y:Landroid/view/View;

    invoke-static {v3}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->a:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/calendar/cards/d;

    invoke-direct {v6, v0, v2, v1}, Lcom/android/calendar/cards/d;-><init>(Lcom/android/calendar/cards/j;Landroid/content/Context;Lcom/android/calendar/cards/j$b;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->a:Landroid/view/ViewGroup;

    invoke-static {v3}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 12
    :goto_0
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070853

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 14
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->c:Lcom/miui/calendar/view/OnlineImageView;

    const/4 v4, 0x2

    const v12, 0x7f0802c7

    const v13, 0x7f0802c9

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v3, :cond_7

    .line 15
    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget v6, v3, Lcom/miui/calendar/ad/AdSchema;->width:I

    .line 16
    iget v3, v3, Lcom/miui/calendar/ad/AdSchema;->height:I

    .line 17
    invoke-virtual {v0, v2}, Lcom/android/calendar/cards/j;->r(Landroid/content/Context;)[I

    move-result-object v7

    .line 18
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    aget v10, v7, v14

    invoke-direct {v8, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    if-lez v6, :cond_4

    if-lez v3, :cond_3

    .line 19
    aget v9, v7, v15

    mul-int/2addr v3, v9

    div-int/2addr v3, v6

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    .line 20
    :cond_3
    aget v3, v7, v14

    aget v9, v7, v15

    mul-int/2addr v3, v9

    div-int/2addr v3, v6

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_4
    if-lez v3, :cond_5

    .line 21
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 22
    :cond_5
    :goto_1
    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    aget v6, v7, v14

    mul-int/lit8 v7, v6, 0x2

    if-le v3, v7, :cond_6

    mul-int/2addr v6, v4

    .line 23
    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 24
    :cond_6
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->c:Lcom/miui/calendar/view/OnlineImageView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->c:Lcom/miui/calendar/view/OnlineImageView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6, v13, v12}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 26
    :cond_7
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->d:Lcom/miui/calendar/view/OnlineImageView;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 27
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->d:Lcom/miui/calendar/view/OnlineImageView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6, v13, v12}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 28
    :cond_8
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->e:Lcom/miui/calendar/view/OnlineImageView;

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v14, :cond_9

    .line 29
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->e:Lcom/miui/calendar/view/OnlineImageView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6, v13, v12}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 30
    :cond_9
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->f:Lcom/miui/calendar/view/OnlineImageView;

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_a

    .line 31
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->f:Lcom/miui/calendar/view/OnlineImageView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v13, v12}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 32
    :cond_a
    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->summary:Ljava/lang/String;

    const-string v4, "..."

    if-eqz v3, :cond_c

    .line 33
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->i:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v7, 0x10

    if-le v3, v7, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v8, v8, Lcom/miui/calendar/ad/AdSchema;->summary:Ljava/lang/String;

    invoke-virtual {v8, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_b
    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->summary:Ljava/lang/String;

    :goto_2
    invoke-static {v6, v3}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 34
    :cond_c
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->K:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->categoryName:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 35
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->j:Landroid/widget/TextView;

    const/16 v10, 0x8

    if-eqz v3, :cond_e

    .line 36
    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->source:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 37
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 38
    :cond_d
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->j:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 39
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->j:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->source:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    :cond_e
    :goto_3
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->k:Landroid/view/View;

    if-eqz v3, :cond_10

    .line 41
    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->source:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 42
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->k:Landroid/view/View;

    invoke-virtual {v3, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 43
    :cond_f
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->k:Landroid/view/View;

    invoke-virtual {v3, v15}, Landroid/view/View;->setVisibility(I)V

    .line 44
    :cond_10
    :goto_4
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->l:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-wide v6, v6, Lcom/miui/calendar/ad/AdSchema;->totalDownloadNum:J

    invoke-static {v2, v6, v7}, Lcom/miui/calendar/ad/AdSchema;->formatAdDownloadCount(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/miui/calendar/util/x0;->f(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 45
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->m:Landroid/view/View;

    if-eqz v6, :cond_11

    const/4 v7, 0x0

    move v8, v11

    move v9, v11

    move v3, v10

    move v10, v11

    .line 46
    invoke-static/range {v6 .. v11}, Lcom/miui/calendar/util/x0;->k(Landroid/view/View;ZIIII)V

    .line 47
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->m:Landroid/view/View;

    new-instance v7, Lcom/android/calendar/cards/e;

    invoke-direct {v7, v0, v2, v1}, Lcom/android/calendar/cards/e;-><init>(Lcom/android/calendar/cards/j;Landroid/content/Context;Lcom/android/calendar/cards/j$b;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_11
    move v3, v10

    .line 48
    :goto_5
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->o:Lcom/miui/calendar/view/AdProgressTextView;

    if-eqz v6, :cond_12

    .line 49
    iget-object v7, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    invoke-virtual {v6, v7, v2}, Lcom/miui/calendar/view/AdProgressTextView;->b(Lcom/miui/calendar/ad/AdSchema;Landroid/content/Context;)V

    .line 50
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->o:Lcom/miui/calendar/view/AdProgressTextView;

    invoke-direct {v0, v2, v1}, Lcom/android/calendar/cards/j;->q(Landroid/content/Context;Lcom/android/calendar/cards/j$b;)Lcom/miui/calendar/view/AdProgressTextView$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/calendar/view/AdProgressTextView;->setListener(Lcom/miui/calendar/view/AdProgressTextView$a;)V

    .line 51
    :cond_12
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->p:Lcom/miui/calendar/view/AdProgressLinearLayout;

    if-eqz v6, :cond_13

    .line 52
    iget-object v7, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    invoke-virtual {v6, v7, v2}, Lcom/miui/calendar/view/AdProgressLinearLayout;->b(Lcom/miui/calendar/ad/AdSchema;Landroid/content/Context;)V

    .line 53
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->p:Lcom/miui/calendar/view/AdProgressLinearLayout;

    invoke-direct {v0, v2, v1}, Lcom/android/calendar/cards/j;->q(Landroid/content/Context;Lcom/android/calendar/cards/j$b;)Lcom/miui/calendar/view/AdProgressTextView$a;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/calendar/view/AdProgressLinearLayout;->setListener(Lcom/miui/calendar/view/AdProgressTextView$a;)V

    .line 54
    :cond_13
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->q:Landroid/widget/TextView;

    if-eqz v6, :cond_14

    .line 55
    new-instance v7, Lcom/android/calendar/cards/f;

    invoke-direct {v7, v0, v2}, Lcom/android/calendar/cards/f;-><init>(Lcom/android/calendar/cards/j;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_14
    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v7, v1, Lcom/android/calendar/cards/j$b;->q:Landroid/widget/TextView;

    invoke-direct {v0, v2, v6, v7}, Lcom/android/calendar/cards/j;->D(Landroid/content/Context;Lcom/miui/calendar/ad/AdSchema;Landroid/widget/TextView;)V

    .line 57
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->r:Landroid/view/View;

    if-eqz v6, :cond_16

    .line 58
    iget-object v7, v0, Lcom/android/calendar/cards/j;->d:Lcom/android/calendar/cards/m$a;

    if-eqz v7, :cond_15

    iget v7, v7, Lcom/android/calendar/cards/m$a;->a:I

    if-ne v7, v14, :cond_15

    .line 59
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 60
    :cond_15
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_16
    :goto_6
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->L:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_19

    .line 62
    iget-object v9, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v10, v9, Lcom/miui/calendar/ad/AdSchema;->categoryName:Ljava/lang/String;

    if-eqz v10, :cond_18

    iget-wide v10, v9, Lcom/miui/calendar/ad/AdSchema;->totalDownloadNum:J

    cmp-long v10, v10, v7

    if-eqz v10, :cond_18

    iget v9, v9, Lcom/miui/calendar/ad/AdSchema;->apkSize:I

    if-nez v9, :cond_17

    goto :goto_7

    .line 63
    :cond_17
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 64
    :cond_18
    :goto_7
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_19
    :goto_8
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->w:Landroid/widget/TextView;

    if-eqz v6, :cond_1a

    iget-object v9, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget v9, v9, Lcom/miui/calendar/ad/AdSchema;->apkSize:I

    if-eqz v9, :cond_1a

    .line 66
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget v6, v6, Lcom/miui/calendar/ad/AdSchema;->apkSize:I

    const/high16 v9, 0x100000

    div-int/2addr v6, v9

    .line 68
    iget-object v9, v1, Lcom/android/calendar/cards/j$b;->w:Landroid/widget/TextView;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120048

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v12, v15

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_1a
    if-eqz v6, :cond_1b

    .line 69
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_1b
    :goto_9
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->l:Landroid/widget/TextView;

    if-eqz v6, :cond_21

    iget-object v9, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-wide v9, v9, Lcom/miui/calendar/ad/AdSchema;->totalDownloadNum:J

    cmp-long v7, v9, v7

    if-eqz v7, :cond_21

    .line 71
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-wide v6, v6, Lcom/miui/calendar/ad/AdSchema;->totalDownloadNum:J

    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-gez v8, :cond_1c

    .line 73
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_a

    :cond_1c
    const-wide/16 v8, 0x2710

    cmp-long v10, v6, v8

    if-gez v10, :cond_1d

    const-wide/16 v8, 0x64

    .line 74
    div-long/2addr v6, v8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_a

    :cond_1d
    const-wide/32 v10, 0x186a0

    cmp-long v10, v6, v10

    const-string v11, "%.1f"

    const v12, 0x7f12005a

    if-gez v10, :cond_1e

    long-to-double v6, v6

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    new-array v10, v14, [Ljava/lang/Object;

    const-wide v16, 0x40c3880000000000L    # 10000.0

    div-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v10, v15

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v15

    invoke-virtual {v8, v12, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_1e
    const-wide/32 v16, 0x5f5e100

    cmp-long v10, v6, v16

    if-gez v10, :cond_1f

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v15

    invoke-virtual {v10, v12, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    :cond_1f
    const-wide/32 v8, 0x3b9aca00

    cmp-long v8, v6, v8

    const v9, 0x7f12005b

    if-gez v8, :cond_20

    long-to-double v6, v6

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v10, v14, [Ljava/lang/Object;

    new-array v12, v14, [Ljava/lang/Object;

    const-wide v16, 0x4197d78400000000L    # 1.0E8

    div-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v12, v15

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v15

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_a

    .line 78
    :cond_20
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v10, v14, [Ljava/lang/Object;

    div-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v15

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 79
    :goto_a
    iget-object v7, v1, Lcom/android/calendar/cards/j$b;->l:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_21
    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    invoke-static {v6}, Lcom/miui/calendar/ad/AdSchema;->isScheduleAd(Lcom/miui/calendar/ad/AdSchema;)Z

    move-result v6

    const/16 v7, 0xa

    const-string v8, "exp2"

    const-string v9, "12.4"

    if-eqz v6, :cond_25

    .line 81
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->h:Lcom/miui/calendar/view/OnlineImageView;

    if-eqz v6, :cond_22

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    if-eqz v6, :cond_22

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_22

    .line 82
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->h:Lcom/miui/calendar/view/OnlineImageView;

    iget-object v10, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v10, v10, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const v11, 0x7f0802c7

    invoke-virtual {v6, v10, v13, v11}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 83
    :cond_22
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->b:Landroid/widget/TextView;

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v10, v6, Lcom/miui/calendar/ad/AdSchema;->title:Ljava/lang/String;

    if-eqz v10, :cond_2a

    .line 84
    iget-object v10, v6, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 85
    invoke-virtual {v6, v5}, Lcom/miui/calendar/ad/AdSchema;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v7, 0x7

    .line 87
    :cond_23
    iget-object v5, v1, Lcom/android/calendar/cards/j$b;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v8, v8, Lcom/miui/calendar/ad/AdSchema;->title:Ljava/lang/String;

    invoke-virtual {v8, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_24
    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v4, v4, Lcom/miui/calendar/ad/AdSchema;->title:Ljava/lang/String;

    :goto_b
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 88
    :cond_25
    iget-object v6, v1, Lcom/android/calendar/cards/j$b;->b:Landroid/widget/TextView;

    if-eqz v6, :cond_28

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v10, v6, Lcom/miui/calendar/ad/AdSchema;->appName:Ljava/lang/String;

    if-eqz v10, :cond_28

    .line 89
    iget-object v10, v6, Lcom/miui/calendar/ad/AdSchema;->template:Ljava/lang/String;

    .line 90
    invoke-virtual {v6, v5}, Lcom/miui/calendar/ad/AdSchema;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    .line 91
    invoke-static {v10, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_26

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_c

    :cond_26
    move v7, v6

    .line 92
    :goto_c
    iget-object v5, v1, Lcom/android/calendar/cards/j$b;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v6, v6, Lcom/miui/calendar/ad/AdSchema;->appName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_27

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v8, v8, Lcom/miui/calendar/ad/AdSchema;->appName:Ljava/lang/String;

    invoke-virtual {v8, v15, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_27
    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v4, v4, Lcom/miui/calendar/ad/AdSchema;->appName:Ljava/lang/String;

    :goto_d
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_28
    iget-object v4, v1, Lcom/android/calendar/cards/j$b;->h:Lcom/miui/calendar/view/OnlineImageView;

    if-eqz v4, :cond_29

    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v4, v4, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    if-eqz v4, :cond_29

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_29

    .line 94
    iget-object v4, v1, Lcom/android/calendar/cards/j$b;->h:Lcom/miui/calendar/view/OnlineImageView;

    iget-object v5, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v5, v5, Lcom/miui/calendar/ad/AdSchema;->imgUrls:Ljava/util/List;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const v6, 0x7f0802c7

    invoke-virtual {v4, v5, v13, v6}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    goto :goto_e

    :cond_29
    const v6, 0x7f0802c7

    .line 95
    :goto_e
    iget-object v4, v1, Lcom/android/calendar/cards/j$b;->h:Lcom/miui/calendar/view/OnlineImageView;

    if-eqz v4, :cond_2a

    .line 96
    iget-object v5, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v5, v5, Lcom/miui/calendar/ad/AdSchema;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v13, v6}, Lcom/miui/calendar/view/OnlineImageView;->a(Ljava/lang/String;II)V

    .line 97
    :cond_2a
    :goto_f
    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    invoke-static {v4}, Lcom/miui/calendar/ad/AdSchema;->isUninstallableAd(Lcom/miui/calendar/ad/AdSchema;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    invoke-static {v4}, Lcom/miui/calendar/ad/AdSchema;->isAll6InfoPresent(Lcom/miui/calendar/ad/AdSchema;)Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v4, v1, Lcom/android/calendar/cards/j$b;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_2c

    .line 98
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v1, v1, Lcom/android/calendar/cards/j$b;->v:Landroid/view/View;

    if-eqz v1, :cond_2b

    .line 100
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    :cond_2b
    return-void

    .line 101
    :cond_2c
    iget-object v4, v1, Lcom/android/calendar/cards/j$b;->M:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_2d

    .line 102
    invoke-virtual {v4, v15}, Landroid/view/View;->setVisibility(I)V

    .line 103
    iget-object v4, v1, Lcom/android/calendar/cards/j$b;->v:Landroid/view/View;

    if-eqz v4, :cond_2d

    .line 104
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_2d
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->D:Landroid/widget/TextView;

    if-eqz v3, :cond_2f

    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v4, v4, Lcom/miui/calendar/ad/AdSchema;->appDeveloper:Ljava/lang/String;

    if-eqz v4, :cond_2f

    .line 106
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x13

    if-le v4, v5, :cond_2e

    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v4, v4, Lcom/miui/calendar/ad/AdSchema;->appDeveloper:Ljava/lang/String;

    invoke-virtual {v4, v15, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_10

    :cond_2e
    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v4, v4, Lcom/miui/calendar/ad/AdSchema;->appDeveloper:Ljava/lang/String;

    :goto_10
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_2f
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->E:Landroid/widget/TextView;

    if-eqz v3, :cond_30

    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->appVersion:Ljava/lang/String;

    if-eqz v3, :cond_30

    .line 108
    invoke-virtual {v0, v3}, Lcom/android/calendar/cards/j;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object v4, v1, Lcom/android/calendar/cards/j$b;->E:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "| "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_30
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->G:Landroid/widget/TextView;

    if-eqz v3, :cond_31

    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v4, v4, Lcom/miui/calendar/ad/AdSchema;->appPrivacy:Ljava/lang/String;

    if-eqz v4, :cond_31

    .line 111
    new-instance v4, Lcom/android/calendar/cards/g;

    invoke-direct {v4, v0, v2}, Lcom/android/calendar/cards/g;-><init>(Lcom/android/calendar/cards/j;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_31
    iget-object v3, v1, Lcom/android/calendar/cards/j$b;->F:Landroid/widget/TextView;

    if-eqz v3, :cond_32

    iget-object v4, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v4, v4, Lcom/miui/calendar/ad/AdSchema;->appPermission:Ljava/lang/String;

    if-eqz v4, :cond_32

    .line 113
    new-instance v4, Lcom/android/calendar/cards/h;

    invoke-direct {v4, v0, v2}, Lcom/android/calendar/cards/h;-><init>(Lcom/android/calendar/cards/j;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :cond_32
    iget-object v1, v1, Lcom/android/calendar/cards/j$b;->H:Landroid/widget/TextView;

    if-eqz v1, :cond_33

    iget-object v3, v0, Lcom/android/calendar/cards/j;->c:Lcom/miui/calendar/ad/AdSchema;

    iget-object v3, v3, Lcom/miui/calendar/ad/AdSchema;->appIntroduction:Ljava/lang/String;

    if-eqz v3, :cond_33

    .line 115
    new-instance v3, Lcom/android/calendar/cards/i;

    invoke-direct {v3, v0, v2}, Lcom/android/calendar/cards/i;-><init>(Lcom/android/calendar/cards/j;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_33
    return-void
.end method

.method protected r(Landroid/content/Context;)[I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const v4, 0x7f0701e8

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    mul-int/2addr v3, v0

    .line 26
    sub-int/2addr v2, v3

    .line 27
    const/4 v0, 0x0

    .line 28
    aput v2, v1, v0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const v0, 0x7f070428

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v0, 0x1

    .line 42
    aput p1, v1, v0

    .line 43
    .line 44
    return-object v1
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
