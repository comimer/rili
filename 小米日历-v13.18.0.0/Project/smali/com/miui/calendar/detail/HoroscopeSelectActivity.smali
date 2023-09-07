.class public final Lcom/miui/calendar/detail/HoroscopeSelectActivity;
.super Lcom/android/calendar/common/b;
.source "HoroscopeSelectActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;,
        Lcom/miui/calendar/detail/HoroscopeSelectActivity$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002!\nB\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0006\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014J\u0008\u0010\u0007\u001a\u00020\u0002H\u0014J\u0008\u0010\u0008\u001a\u00020\u0002H\u0014R\u0018\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0016\u001a\u000e\u0012\u0008\u0012\u00060\u0012R\u00020\u0013\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001e\u001a\u0008\u0018\u00010\u001bR\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Lcom/miui/calendar/detail/HoroscopeSelectActivity;",
        "Lcom/android/calendar/common/b;",
        "Lkotlin/u;",
        "c0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onResume",
        "onPause",
        "Landroid/content/Context;",
        "b",
        "Landroid/content/Context;",
        "mContext",
        "Lmiuix/recyclerview/widget/RecyclerView;",
        "c",
        "Lmiuix/recyclerview/widget/RecyclerView;",
        "mHoroscopeRv",
        "",
        "Lv3/e$a;",
        "Lv3/e;",
        "d",
        "Ljava/util/List;",
        "mHoroscopeInfo",
        "",
        "e",
        "Ljava/lang/String;",
        "mSelectedHoroscopeSimpleName",
        "Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;",
        "f",
        "Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;",
        "mAdapter",
        "<init>",
        "()V",
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
.field private b:Landroid/content/Context;

.field private c:Lmiuix/recyclerview/widget/RecyclerView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lv3/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->g:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/common/b;-><init>()V

    .line 9
    .line 10
    .line 11
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

.method public static final synthetic Y(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->b:Landroid/content/Context;

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

.method public static final synthetic Z(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->d:Ljava/util/List;

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

.method public static final synthetic a0(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->e:Ljava/lang/String;

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

.method public static final synthetic b0(Lcom/miui/calendar/detail/HoroscopeSelectActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->e:Ljava/lang/String;

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

.method private final c0()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/calendar/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d00d5

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/m;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->b:Landroid/content/Context;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->c0()V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->b:Landroid/content/Context;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-static {p1}, Lv3/e;->e(Landroid/content/res/Resources;)Lv3/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lv3/e;->d()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->d:Ljava/util/List;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->b:Landroid/content/Context;

    .line 36
    .line 37
    const-string v0, "preferences_horoscope_selected"

    .line 38
    .line 39
    const-string v1, "aries"

    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Lb2/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->e:Ljava/lang/String;

    .line 46
    .line 47
    const p1, 0x7f0a0381

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "null cannot be cast to non-null type miuix.recyclerview.widget.RecyclerView"

    .line 55
    .line 56
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    .line 62
    .line 63
    new-instance p1, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;-><init>(Lcom/miui/calendar/detail/HoroscopeSelectActivity;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->f:Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;

    .line 69
    .line 70
    iget-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    .line 71
    .line 72
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->f:Lcom/miui/calendar/detail/HoroscopeSelectActivity$a;

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-direct {p1, p0, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->d:Ljava/util/List;

    .line 96
    .line 97
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    move v0, v1

    .line 105
    :goto_2
    if-ge v0, p1, :cond_3

    .line 106
    .line 107
    iget-object v2, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->d:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Lv3/e$a;

    .line 117
    .line 118
    iget-object v2, v2, Lv3/e$a;->a:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v3, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->e:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_2

    .line 127
    .line 128
    move v1, v0

    .line 129
    goto :goto_3

    .line 130
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/miui/calendar/detail/HoroscopeSelectActivity;->c:Lmiuix/recyclerview/widget/RecyclerView;

    .line 134
    .line 135
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 139
    .line 140
    .line 141
    return-void
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
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/calendar/common/b;->onResume()V

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
