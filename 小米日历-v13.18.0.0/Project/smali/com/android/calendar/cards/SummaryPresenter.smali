.class public Lcom/android/calendar/cards/SummaryPresenter;
.super Lcom/android/calendar/cards/b;
.source "SummaryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;,
        Lcom/android/calendar/cards/SummaryPresenter$b;,
        Lcom/android/calendar/cards/SummaryPresenter$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/android/calendar/cards/SummaryPresenter$b;",
        ">;"
    }
.end annotation


# instance fields
.field f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Lcom/miui/calendar/weather/WeatherInfo;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/card/schema/LocalCardSchema;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

.field private k:Lcom/android/calendar/cards/SummaryPresenter$b;

.field l:Lcom/miui/calendar/card/schema/LocalCardSchema;

.field private m:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter;->l:Lcom/miui/calendar/card/schema/LocalCardSchema;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 12
    .line 13
    new-instance p1, Lcom/android/calendar/cards/SummaryPresenter$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/android/calendar/cards/SummaryPresenter$b;-><init>(Lcom/android/calendar/cards/SummaryPresenter;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter;->k:Lcom/android/calendar/cards/SummaryPresenter$b;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method static synthetic k(Lcom/android/calendar/cards/SummaryPresenter;)Lcom/miui/calendar/weather/WeatherInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/SummaryPresenter;->h:Lcom/miui/calendar/weather/WeatherInfo;

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

.method static synthetic l(Lcom/android/calendar/cards/SummaryPresenter;Lcom/miui/calendar/weather/WeatherInfo;)Lcom/miui/calendar/weather/WeatherInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter;->h:Lcom/miui/calendar/weather/WeatherInfo;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic m(Lcom/android/calendar/cards/SummaryPresenter;)Lcom/android/calendar/cards/SummaryPresenter$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/SummaryPresenter;->k:Lcom/android/calendar/cards/SummaryPresenter$b;

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

.method static synthetic n(Lcom/android/calendar/cards/SummaryPresenter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/SummaryPresenter;->g:Ljava/lang/String;

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

.method static synthetic o(Lcom/android/calendar/cards/SummaryPresenter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/cards/SummaryPresenter;->x()V

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

.method static synthetic p(Lcom/android/calendar/cards/SummaryPresenter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/SummaryPresenter;->i:Ljava/util/List;

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

.method static synthetic q(Lcom/android/calendar/cards/SummaryPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
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

.method static synthetic r(Lcom/android/calendar/cards/SummaryPresenter;)Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/SummaryPresenter;->j:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

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

.method static synthetic s(Lcom/android/calendar/cards/SummaryPresenter;Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;)Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/SummaryPresenter;->j:Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

    .line 2
    .line 3
    return-object p1
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

.method private x()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->n:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/android/calendar/cards/SummaryPresenter;->o:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->n:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    new-instance v2, Lcom/android/calendar/cards/SummaryPresenter$a;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/android/calendar/cards/SummaryPresenter$a;-><init>(Lcom/android/calendar/cards/SummaryPresenter;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2}, Ly4/c;->b(Landroid/content/Context;ILy4/b;)V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method bridge synthetic b()Lcom/android/calendar/cards/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/SummaryPresenter;->t()Lcom/android/calendar/cards/x1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/SummaryPresenter;->v()Lcom/android/calendar/cards/SummaryPresenter$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/y;->n(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
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

.method h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/settings/j;->r(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/miui/calendar/util/y;->i(Landroid/content/Context;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    iput-boolean v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->o:Z

    .line 22
    .line 23
    iput v1, p0, Lcom/android/calendar/cards/SummaryPresenter;->n:I

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "type"

    .line 31
    .line 32
    const-string v2, "1"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v1, v0}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {}, Lu1/d;->d()Lu1/a;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    iget-object v4, p0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v4}, Lu1/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-instance v5, Lcom/android/calendar/cards/SummaryPresenter$c;

    .line 60
    .line 61
    invoke-direct {v5, v2, v3, p0}, Lcom/android/calendar/cards/SummaryPresenter$c;-><init>(JLcom/android/calendar/cards/SummaryPresenter;)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v4, v0}, Lu1/a;->m(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    new-instance v1, Lu1/b;

    .line 71
    .line 72
    invoke-direct {v1, v5}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Ltc/a;->q(Ltc/b;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->m:Ltc/a;

    .line 79
    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/cards/SummaryPresenter;->w()V

    .line 81
    .line 82
    .line 83
    iget-boolean v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->o:Z

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-direct {p0}, Lcom/android/calendar/cards/SummaryPresenter;->y()V

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 91
    .line 92
    .line 93
    return-void
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

.method public i()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/calendar/cards/b;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->m:Ltc/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "Cal:D:SummaryPresenter"

    .line 9
    .line 10
    const-string v1, "stop query summary card"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->m:Ltc/a;

    .line 16
    .line 17
    invoke-interface {v0}, Ltc/a;->cancel()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->m:Ltc/a;

    .line 22
    .line 23
    :cond_0
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

.method t()Lcom/android/calendar/cards/x1;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/cards/x1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/x1;-><init>(Ljava/util/Calendar;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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

.method protected u()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/android/calendar/cards/SummaryPresenter$SummaryCardExtraSchema;

    .line 2
    .line 3
    return-object v0
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

.method v()Lcom/android/calendar/cards/SummaryPresenter$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->k:Lcom/android/calendar/cards/SummaryPresenter$b;

    .line 2
    .line 3
    return-object v0
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

.method public w()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->f:Landroid/content/Context;

    .line 7
    .line 8
    const-string v1, "weather_info"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/miui/calendar/util/q;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->g:Ljava/lang/String;

    .line 23
    .line 24
    const-class v1, Lcom/miui/calendar/weather/WeatherInfo;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/miui/calendar/weather/WeatherInfo;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->h:Lcom/miui/calendar/weather/WeatherInfo;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/calendar/cards/SummaryPresenter;->k:Lcom/android/calendar/cards/SummaryPresenter$b;

    .line 35
    .line 36
    iput-object v0, v1, Lcom/android/calendar/cards/SummaryPresenter$b;->a:Lcom/miui/calendar/weather/WeatherInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "getWeatherInfo(): "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "Cal:D:SummaryPresenter"

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/android/calendar/cards/SummaryPresenter;->g:Ljava/lang/String;

    .line 65
    .line 66
    :goto_0
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
