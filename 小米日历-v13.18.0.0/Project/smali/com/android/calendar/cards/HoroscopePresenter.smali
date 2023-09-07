.class public Lcom/android/calendar/cards/HoroscopePresenter;
.super Lcom/android/calendar/cards/b;
.source "HoroscopePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/HoroscopePresenter$CustomCardExtraSchema;,
        Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;,
        Lcom/android/calendar/cards/HoroscopePresenter$b;,
        Lcom/android/calendar/cards/HoroscopePresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/android/calendar/cards/HoroscopePresenter$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u00042\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0004\u001d\u001e\u000c\u001fB\u0011\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u0004\u001a\u00020\u0003H\u0014J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0004J\u0012\u0010\n\u001a\u000c\u0012\u0008\u0012\u00060\tR\u00020\u00000\u0008H\u0004J\u0010\u0010\u000c\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000bH\u0014J\u0008\u0010\u000e\u001a\u00020\rH\u0014J\u0008\u0010\u0010\u001a\u00020\u000fH\u0014J\u0008\u0010\u0011\u001a\u00020\u0002H\u0014R \u0010\u0015\u001a\u000c\u0012\u0008\u0012\u00060\tR\u00020\u00000\u00128\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Lcom/android/calendar/cards/HoroscopePresenter;",
        "Lcom/android/calendar/cards/b;",
        "Lcom/android/calendar/cards/HoroscopePresenter$b;",
        "Lkotlin/u;",
        "h",
        "Lcom/miui/calendar/card/schema/CustomCardSchema;",
        "customCardSchema",
        "m",
        "Ljava/lang/Class;",
        "Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;",
        "l",
        "Lcom/android/calendar/cards/m1;",
        "b",
        "",
        "e",
        "",
        "c",
        "k",
        "",
        "f",
        "Ljava/util/List;",
        "mCachedItemExtras",
        "g",
        "Lcom/android/calendar/cards/HoroscopePresenter$b;",
        "mHoroscopeData",
        "Lcom/android/calendar/cards/t;",
        "mCardController",
        "<init>",
        "(Lcom/android/calendar/cards/t;)V",
        "a",
        "CustomCardExtraSchema",
        "HoroscopeItemExtraSchema",
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
.field public static final h:Lcom/android/calendar/cards/HoroscopePresenter$a;


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/android/calendar/cards/HoroscopePresenter$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/calendar/cards/HoroscopePresenter$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/cards/HoroscopePresenter$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcom/android/calendar/cards/HoroscopePresenter;->h:Lcom/android/calendar/cards/HoroscopePresenter$a;

    return-void
.end method

.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/calendar/cards/HoroscopePresenter;->f:Ljava/util/List;

    .line 10
    .line 11
    new-instance p1, Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/android/calendar/cards/HoroscopePresenter$b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
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
    new-instance v0, Lcom/android/calendar/cards/a1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/a1;-><init>(Ljava/util/Calendar;)V

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

    const/16 v0, 0x1c

    return v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/HoroscopePresenter;->k()Lcom/android/calendar/cards/HoroscopePresenter$b;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/cards/HoroscopePresenter$b;->a()Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/calendar/cards/HoroscopePresenter$b;->a()Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    move v0, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v2

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :cond_2
    :goto_1
    return v1
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

.method protected h()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/cards/HoroscopePresenter$b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 7
    .line 8
    sget-object v0, Lcom/android/calendar/cards/CardHelper;->b:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 25
    .line 26
    iget v2, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->showType:I

    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x14

    .line 29
    .line 30
    const/16 v3, 0x1c

    .line 31
    .line 32
    if-ne v2, v3, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Lcom/android/calendar/cards/HoroscopePresenter$b;->c(Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/calendar/cards/HoroscopePresenter$b;->a()Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/calendar/cards/HoroscopePresenter;->m(Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/calendar/cards/HoroscopePresenter;->f:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/android/calendar/cards/HoroscopePresenter$b;->d(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 57
    .line 58
    .line 59
    return-void
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

.method protected k()Lcom/android/calendar/cards/HoroscopePresenter$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

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

.method protected final l()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;

    return-object v0
.end method

.method protected final m(Lcom/miui/calendar/card/schema/CustomCardSchema;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/calendar/cards/HoroscopePresenter$b;->c(Lcom/miui/calendar/card/schema/CustomCardSchema;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/calendar/cards/HoroscopePresenter$b;->a()Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    const-string v1, "Cal:D:HoroscopePresenter"

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    const-string p1, ":prepareExtraData() mCard.itemList is null"

    .line 24
    .line 25
    invoke-static {v1, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/calendar/cards/HoroscopePresenter;->g:Lcom/android/calendar/cards/HoroscopePresenter$b;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/android/calendar/cards/HoroscopePresenter$b;->a()Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-eqz v2, :cond_2

    .line 41
    .line 42
    iget-object v0, v2, Lcom/miui/calendar/card/schema/CustomCardSchema;->itemList:Ljava/util/List;

    .line 43
    .line 44
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/miui/calendar/card/schema/CustomCardItemSchema;

    .line 62
    .line 63
    :try_start_0
    iget-object v2, v2, Lcom/miui/calendar/card/schema/CustomCardItemSchema;->extra:Lcom/google/gson/JsonObject;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p0}, Lcom/android/calendar/cards/HoroscopePresenter;->l()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v2, v3}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Lcom/android/calendar/cards/HoroscopePresenter$HoroscopeItemExtraSchema;

    .line 78
    .line 79
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v2, ":prepareExtraData()"

    .line 85
    .line 86
    invoke-static {v1, v2, v0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    iput-object p1, p0, Lcom/android/calendar/cards/HoroscopePresenter;->f:Ljava/util/List;

    .line 90
    .line 91
    return-void
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
