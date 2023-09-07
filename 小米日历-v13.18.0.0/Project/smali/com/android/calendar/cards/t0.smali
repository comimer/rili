.class public final Lcom/android/calendar/cards/t0;
.super Lcom/android/calendar/cards/b;
.source "HistoryPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/t0$a;,
        Lcom/android/calendar/cards/t0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \"2\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001:\u0002#\u0006B\u0011\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008 \u0010!J\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u0010\u0010\u0006\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005H\u0014J\u0008\u0010\u0008\u001a\u00020\u0007H\u0014J\u0008\u0010\n\u001a\u00020\tH\u0014J\n\u0010\u000b\u001a\u0004\u0018\u00010\u0002H\u0014R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0012\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0014\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\u0017\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\r\u00a8\u0006$"
    }
    d2 = {
        "Lcom/android/calendar/cards/t0;",
        "Lcom/android/calendar/cards/b;",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        "Lkotlin/u;",
        "h",
        "Lcom/android/calendar/cards/m1;",
        "b",
        "",
        "e",
        "",
        "c",
        "t",
        "f",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        "mExtraSchema",
        "",
        "g",
        "Ljava/lang/String;",
        "mCacheData",
        "i",
        "mCacheKey",
        "j",
        "Z",
        "mShouldShow",
        "Landroid/content/Context;",
        "k",
        "Landroid/content/Context;",
        "mContext",
        "l",
        "mCard",
        "Lcom/android/calendar/cards/t;",
        "mCardController",
        "<init>",
        "(Lcom/android/calendar/cards/t;)V",
        "m",
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


# static fields
.field public static final m:Lcom/android/calendar/cards/t0$a;


# instance fields
.field private f:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field private g:Ljava/lang/String;

.field private h:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Z

.field private final k:Landroid/content/Context;

.field private l:Lcom/miui/calendar/card/schema/CustomCardSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/cards/t0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/cards/t0$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/cards/t0;->m:Lcom/android/calendar/cards/t0$a;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "disk_cache_key_class_history_data-"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/calendar/cards/t0;->i:Ljava/lang/String;

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/calendar/cards/t0;->j:Z

    .line 31
    .line 32
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "getInstance()"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/calendar/cards/t0;->k:Landroid/content/Context;

    .line 42
    .line 43
    return-void
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

.method public static synthetic k(Lcom/android/calendar/cards/t0;Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/cards/t0;->u(Lcom/android/calendar/cards/t0;Lcom/miui/calendar/account/mi/MiAccountSchema;)V

    return-void
.end method

.method public static final synthetic l(Lcom/android/calendar/cards/t0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/t0;->g:Ljava/lang/String;

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

.method public static final synthetic m(Lcom/android/calendar/cards/t0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/t0;->i:Ljava/lang/String;

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

.method public static final synthetic n(Lcom/android/calendar/cards/t0;)Lcom/miui/calendar/card/schema/CustomCardSchema;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/t0;->l:Lcom/miui/calendar/card/schema/CustomCardSchema;

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

.method public static final synthetic o(Lcom/android/calendar/cards/t0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/t0;->k:Landroid/content/Context;

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

.method public static final synthetic p(Lcom/android/calendar/cards/t0;)Lcom/miui/calendar/card/schema/CustomCardSchema;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/cards/t0;->f:Lcom/miui/calendar/card/schema/CustomCardSchema;

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

.method public static final synthetic q(Lcom/android/calendar/cards/t0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/t0;->g:Ljava/lang/String;

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

.method public static final synthetic r(Lcom/android/calendar/cards/t0;Lcom/miui/calendar/card/schema/CustomCardSchema;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/t0;->f:Lcom/miui/calendar/card/schema/CustomCardSchema;

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

.method public static final synthetic s(Lcom/android/calendar/cards/t0;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/cards/t0;->j:Z

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

.method private static final u(Lcom/android/calendar/cards/t0;Lcom/miui/calendar/account/mi/MiAccountSchema;)V
    .locals 6

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/calendar/cards/t0;->k:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/cards/t0;->i:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p1, v1}, Lcom/miui/calendar/util/q;->h(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/cards/t0;->l:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p1, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/android/calendar/cards/t0;->j:Z

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/calendar/cards/t0;->g:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v1, p1, Lcom/miui/calendar/account/mi/MiAccountSchema;->authToken:Ljava/lang/String;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/miui/calendar/account/mi/MiAccountSchema;->userId:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/calendar/cards/t0;->k:Landroid/content/Context;

    .line 37
    .line 38
    const/4 v3, 0x1

    .line 39
    invoke-static {v2, v3, v1, p1}, Lu1/d;->b(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance v1, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/calendar/cards/t0;->l:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 49
    .line 50
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-wide v4, v2, Lcom/miui/calendar/card/schema/CustomCardSchema;->id:J

    .line 54
    .line 55
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v4, "cardIds"

    .line 60
    .line 61
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v4, "targetTime"

    .line 75
    .line 76
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/calendar/cards/t0;->k:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v2, v1}, Lcom/miui/calendar/util/m;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/android/calendar/cards/t0;->k:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v2, v1}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v0, v3, v0}, Lu1/d;->f(Ljava/lang/String;ILjava/lang/Object;)Lu1/a;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v2, Lcom/android/calendar/cards/t0$b;

    .line 95
    .line 96
    invoke-direct {v2, p0}, Lcom/android/calendar/cards/t0$b;-><init>(Lcom/android/calendar/cards/t0;)V

    .line 97
    .line 98
    .line 99
    const-string v3, "Cal:D:HistoryPresenter"

    .line 100
    .line 101
    const-string v4, "start query history card item"

    .line 102
    .line 103
    invoke-static {v3, v4}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v0, p1, v1}, Lu1/a;->q(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/android/calendar/cards/t0;->h:Ltc/a;

    .line 111
    .line 112
    if-eqz p1, :cond_1

    .line 113
    .line 114
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    new-instance p0, Lu1/b;

    .line 118
    .line 119
    invoke-direct {p0, v2}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p1, p0}, Ltc/a;->q(Ltc/b;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void
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
    new-instance v0, Lcom/android/calendar/cards/r0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/r0;-><init>(Ljava/util/Calendar;)V

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

    const/16 v0, 0x2f

    return v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/t0;->t()Lcom/miui/calendar/card/schema/CustomCardSchema;

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
    iget-boolean v0, p0, Lcom/android/calendar/cards/t0;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/cards/t0;->f:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/t0;->k:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/t0;->i:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/q;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/calendar/cards/t0;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    :try_start_0
    new-instance v0, Lcom/android/calendar/cards/t0$c;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/android/calendar/cards/t0$c;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v4, p0, Lcom/android/calendar/cards/t0;->g:Ljava/lang/String;

    .line 30
    .line 31
    const-string v5, "jsonType"

    .line 32
    .line 33
    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v4, v0}, Lcom/miui/calendar/util/x;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/List;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    xor-int/2addr v4, v1

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/miui/calendar/card/schema/CustomCardSchema;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-string v4, "Cal:D:HistoryPresenter"

    .line 61
    .line 62
    const-string v5, "queryData() "

    .line 63
    .line 64
    invoke-static {v4, v5, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    iput-object v3, p0, Lcom/android/calendar/cards/t0;->g:Ljava/lang/String;

    .line 69
    .line 70
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/calendar/cards/t0;->f:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, v3, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 78
    .line 79
    const-string v3, "mExtraSchema!!.itemList"

    .line 80
    .line 81
    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move v1, v2

    .line 92
    :goto_1
    iput-boolean v1, p0, Lcom/android/calendar/cards/t0;->j:Z

    .line 93
    .line 94
    sget-object v0, Lcom/android/calendar/cards/CardHelper;->b:Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_4

    .line 105
    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 111
    .line 112
    iget v2, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->showType:I

    .line 113
    .line 114
    add-int/lit8 v2, v2, 0x14

    .line 115
    .line 116
    const/16 v3, 0x2f

    .line 117
    .line 118
    if-ne v2, v3, :cond_3

    .line 119
    .line 120
    iput-object v1, p0, Lcom/android/calendar/cards/t0;->l:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/cards/t0;->l:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    new-instance v0, Lcom/android/calendar/cards/s0;

    .line 128
    .line 129
    invoke-direct {v0, p0}, Lcom/android/calendar/cards/s0;-><init>(Lcom/android/calendar/cards/t0;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v0}, Lk3/d;->g(Lk3/d$b;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    return-void
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

.method protected t()Lcom/miui/calendar/card/schema/CustomCardSchema;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/t0;->f:Lcom/miui/calendar/card/schema/CustomCardSchema;

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
