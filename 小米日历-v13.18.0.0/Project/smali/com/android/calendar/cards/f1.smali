.class public final Lcom/android/calendar/cards/f1;
.super Lcom/android/calendar/cards/b;
.source "LimitPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/f1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/android/calendar/cards/f1$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001cB\u0011\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0006H\u0014J\u0008\u0010\t\u001a\u00020\u0008H\u0014J\u0008\u0010\u000b\u001a\u00020\nH\u0014J\u0008\u0010\u000c\u001a\u00020\u0002H\u0014R\u0016\u0010\u000f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00138\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/android/calendar/cards/f1;",
        "Lcom/android/calendar/cards/b;",
        "Lcom/android/calendar/cards/f1$a;",
        "Lkotlin/u;",
        "h",
        "i",
        "Lcom/android/calendar/cards/m1;",
        "b",
        "",
        "e",
        "",
        "c",
        "l",
        "f",
        "Lcom/android/calendar/cards/f1$a;",
        "mLimitData",
        "g",
        "Z",
        "mIsQueried",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "getMContext",
        "()Landroid/content/Context;",
        "mContext",
        "Lcom/android/calendar/cards/t;",
        "mCardController",
        "<init>",
        "(Lcom/android/calendar/cards/t;)V",
        "a",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private f:Lcom/android/calendar/cards/f1$a;

.field private g:Z

.field private final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/calendar/cards/f1$a;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/android/calendar/cards/f1$a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/calendar/cards/f1;->h:Landroid/content/Context;

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic k(Lcom/android/calendar/cards/f1;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/cards/f1;->m(Lcom/android/calendar/cards/f1;)V

    return-void
.end method

.method private static final m(Lcom/android/calendar/cards/f1;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/calendar/cards/f1;->g:Z

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/cards/f1;->h:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/miui/calendar/limit/a;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/calendar/cards/f1$a;->h(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->h:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/calendar/cards/f1$a;->d()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/miui/calendar/limit/a;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/calendar/limit/LimitSchema;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/calendar/cards/f1$a;->c()Lcom/miui/calendar/limit/LimitSchema;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/calendar/cards/f1$a;->c()Lcom/miui/calendar/limit/LimitSchema;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/android/calendar/cards/f1$a;->g(Lcom/miui/calendar/limit/LimitSchema;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 58
    .line 59
    .line 60
    return-void
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method


# virtual methods
.method protected b()Lcom/android/calendar/cards/m1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/calendar/cards/m1<",
            "**>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/calendar/cards/d1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/d1;-><init>(Ljava/util/Calendar;)V

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

.method protected c()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/f1;->l()Lcom/android/calendar/cards/f1$a;

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

.method protected e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/cards/f1$a;->a()Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

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

.method protected h()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/calendar/cards/f1$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/cards/f1$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/calendar/cards/f1;->h:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/miui/calendar/limit/a;->i(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/calendar/cards/f1$a;->h(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/calendar/cards/f1;->h:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/calendar/cards/f1$a;->d()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Lcom/miui/calendar/limit/a;->j(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/calendar/limit/LimitSchema;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/android/calendar/cards/f1$a;->g(Lcom/miui/calendar/limit/LimitSchema;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, Lcom/android/calendar/cards/CardHelper;->b:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 49
    .line 50
    iget v2, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->showType:I

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x14

    .line 53
    .line 54
    const/16 v3, 0x34

    .line 55
    .line 56
    if-ne v2, v3, :cond_0

    .line 57
    .line 58
    iget-object v2, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Lcom/android/calendar/cards/f1$a;->e(Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/calendar/cards/f1;->h:Landroid/content/Context;

    .line 64
    .line 65
    const/4 v2, 0x1

    .line 66
    const-string v3, "preferences_limit_card_subscribed"

    .line 67
    .line 68
    invoke-static {v1, v3, v2}, Lb2/a;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/android/calendar/cards/f1$a;->a()Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/calendar/cards/CardHelper;->l(Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

    .line 82
    .line 83
    sget-object v1, Lcom/android/calendar/cards/CardHelper;->a:Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/android/calendar/cards/f1$a;->f(Lcom/android/calendar/cards/CardHelper$CustomCardExtraSchema;)V

    .line 86
    .line 87
    .line 88
    iget-boolean v0, p0, Lcom/android/calendar/cards/f1;->g:Z

    .line 89
    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->h:Landroid/content/Context;

    .line 93
    .line 94
    new-instance v1, Lcom/android/calendar/cards/e1;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/android/calendar/cards/e1;-><init>(Lcom/android/calendar/cards/f1;)V

    .line 97
    .line 98
    .line 99
    const-string v2, "\u542f\u52a8\u9996\u9875"

    .line 100
    .line 101
    invoke-static {v0, v1, v2}, Lcom/miui/calendar/limit/a;->n(Landroid/content/Context;Lcom/miui/calendar/limit/a$a;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-void
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
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/calendar/cards/b;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->h:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/miui/calendar/limit/a;->m(Landroid/content/Context;)V

    .line 7
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

.method protected l()Lcom/android/calendar/cards/f1$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/f1;->f:Lcom/android/calendar/cards/f1$a;

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
