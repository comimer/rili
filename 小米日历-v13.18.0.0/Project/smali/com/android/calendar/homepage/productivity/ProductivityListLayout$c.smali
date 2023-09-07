.class public final Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "ProductivityListLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/productivity/ProductivityListLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010(\u001a\u00020#\u00a2\u0006\u0004\u0008C\u0010DJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002J\u0012\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J4\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070 2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001eH\u0002J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0017\u0010(\u001a\u00020#8\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0014\u00101\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010/R\u0017\u00103\u001a\u00020#8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010%\u001a\u0004\u00082\u0010\'R\u0017\u00106\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010/\u001a\u0004\u00084\u00105R\u0014\u00107\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010/R\u0017\u00109\u001a\u00020-8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010/\u001a\u0004\u00088\u00105R\u0018\u0010<\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0016\u0010B\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010?\u00a8\u0006E"
    }
    d2 = {
        "Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        "Lcom/android/calendar/common/event/schema/Event;",
        "event",
        "Lkotlin/u;",
        "t",
        "v",
        "",
        "text",
        "y",
        "d",
        "f",
        "e",
        "g",
        "s",
        "n",
        "p",
        "r",
        "h",
        "q",
        "o",
        "m",
        "x",
        "",
        "startTimeMillis",
        "endTimeMillis",
        "",
        "isAllDay",
        "w",
        "timezone",
        "Ljava/util/Calendar;",
        "desiredDay",
        "Lkotlin/Pair;",
        "u",
        "i",
        "Landroid/view/View;",
        "a",
        "Landroid/view/View;",
        "getView",
        "()Landroid/view/View;",
        "view",
        "Landroid/widget/ImageView;",
        "b",
        "Landroid/widget/ImageView;",
        "iconImageView",
        "Landroid/widget/TextView;",
        "c",
        "Landroid/widget/TextView;",
        "primaryTextView",
        "secondaryTextView",
        "getDatetimeGroup",
        "datetimeGroup",
        "getStartDatetime",
        "()Landroid/widget/TextView;",
        "startDatetime",
        "endDatetime",
        "getAllDayLabel",
        "allDayLabel",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Runnable;",
        "longPressedRunnable",
        "",
        "j",
        "F",
        "itemTouchStartX",
        "k",
        "itemTouchStartY",
        "<init>",
        "(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;)V",
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
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private i:Ljava/lang/Runnable;

.field private j:F

.field private k:F

.field final synthetic l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a:Landroid/view/View;

    .line 12
    .line 13
    const p1, 0x7f0a0303

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "view.findViewById(R.id.icon)"

    .line 21
    .line 22
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Landroid/widget/ImageView;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->b:Landroid/widget/ImageView;

    .line 28
    .line 29
    const p1, 0x7f0a04a8

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "view.findViewById(R.id.primary)"

    .line 37
    .line 38
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 44
    .line 45
    const p1, 0x7f0a0531

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "view.findViewById(R.id.secondary)"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->d:Landroid/widget/TextView;

    .line 60
    .line 61
    const p1, 0x7f0a0081

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v0, "view.findViewById(R.id.agenda_item_datetime_group)"

    .line 69
    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->e:Landroid/view/View;

    .line 74
    .line 75
    const p1, 0x7f0a05a8

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string v0, "view.findViewById(R.id.start_datetime)"

    .line 83
    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    check-cast p1, Landroid/widget/TextView;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->f:Landroid/widget/TextView;

    .line 90
    .line 91
    const p1, 0x7f0a026a

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, "view.findViewById(R.id.end_datetime)"

    .line 99
    .line 100
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast p1, Landroid/widget/TextView;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->g:Landroid/widget/TextView;

    .line 106
    .line 107
    const p1, 0x7f0a0097

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string p2, "view.findViewById(R.id.all_day_label)"

    .line 115
    .line 116
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    check-cast p1, Landroid/widget/TextView;

    .line 120
    .line 121
    iput-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->h:Landroid/widget/TextView;

    .line 122
    .line 123
    return-void
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

.method public static synthetic a(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->k(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->j(Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;)V

    return-void
.end method

.method private final d(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1, v2}, Lcom/android/calendar/event/e0;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 36
    :goto_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->v()V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :goto_2
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->isCanceledMeeting()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->isRejectAgenda()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    or-int/lit8 v0, v0, 0x10

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 78
    .line 79
    .line 80
    :cond_4
    return-void
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

.method private final e(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 6

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.AnniversaryEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->b:Landroid/widget/ImageView;

    .line 9
    .line 10
    const v1, 0x7f08020c

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const v2, 0x7f120072

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, " | "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1, v1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v1, 0x0

    .line 73
    const/4 v2, 0x1

    .line 74
    if-lez v0, :cond_0

    .line 75
    .line 76
    iget-object v3, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 77
    .line 78
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const v4, 0x7f100015

    .line 87
    .line 88
    .line 89
    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    aput-object v5, v2, v1

    .line 96
    .line 97
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 103
    .line 104
    invoke-static {v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calDays(Ljava/util/Calendar;)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iget-object v3, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 113
    .line 114
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const v4, 0x7f100012

    .line 123
    .line 124
    .line 125
    new-array v2, v2, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    aput-object v5, v2, v1

    .line 132
    .line 133
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_0
    const-string v1, "if (years > 0) {\n       \u2026days, days)\n            }"

    .line 138
    .line 139
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 143
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getContent()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, " \u00b7 "

    .line 157
    .line 158
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    .line 170
    .line 171
    return-void
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

.method private final f(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 2

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.BirthdayEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->b:Landroid/widget/ImageView;

    .line 9
    .line 10
    const v1, 0x7f080210

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
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

.method private final g(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 7

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CountdownEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->b:Landroid/widget/ImageView;

    .line 9
    .line 10
    const v1, 0x7f080228

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f120137

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " | "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 53
    .line 54
    invoke-static {v3}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1, v2, v3}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getDateString(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getRepeatType()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-lez v2, :cond_0

    .line 74
    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const v1, 0x7f03004a

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getRepeatType()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    aget-object v0, v0, v1

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calDays(Ljava/util/Calendar;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 130
    .line 131
    const-string v2, " \u00b7 "

    .line 132
    .line 133
    if-nez v0, :cond_1

    .line 134
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getContent()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    const v2, 0x7f120138

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    goto :goto_0

    .line 171
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getContent()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 187
    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    const v2, 0x7f100033

    .line 197
    .line 198
    .line 199
    const/4 v4, 0x1

    .line 200
    new-array v4, v4, [Ljava/lang/Object;

    .line 201
    .line 202
    const/4 v5, 0x0

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    aput-object v6, v4, v5

    .line 208
    .line 209
    invoke-virtual {p1, v2, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    return-void
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

.method private final h(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 8

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.CreditEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/CreditEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CreditEvent;->getAccount()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v1, v3

    .line 28
    :goto_1
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v4, 0x7f1202c3

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v4, 0x7f1202c2

    .line 51
    .line 52
    .line 53
    new-array v5, v3, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CreditEvent;->getAccount()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    aput-object v6, v5, v2

    .line 60
    .line 61
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CreditEvent;->getRepaymentTime()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget-object v4, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 88
    .line 89
    invoke-static {v4}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v4}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-static {v1}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget-object v5, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/CreditEvent;->getRepaymentTime()J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    const p1, 0x7f120150

    .line 112
    .line 113
    .line 114
    invoke-static {v5, v6, v7, p1}, Lcom/miui/calendar/util/s0;->h(Landroid/content/Context;JI)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ge v1, v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const v1, 0x7f1202c6

    .line 127
    .line 128
    .line 129
    new-array v3, v3, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object p1, v3, v2

    .line 132
    .line 133
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    goto :goto_3

    .line 138
    :cond_3
    if-ne v0, v4, :cond_4

    .line 139
    .line 140
    iget-object v4, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 141
    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const v5, 0x7f1202c4

    .line 147
    .line 148
    .line 149
    const/4 v6, 0x2

    .line 150
    new-array v6, v6, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object p1, v6, v2

    .line 153
    .line 154
    sub-int/2addr v1, v0

    .line 155
    add-int/2addr v1, v3

    .line 156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    aput-object p1, v6, v3

    .line 161
    .line 162
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const v1, 0x7f1202c5

    .line 174
    .line 175
    .line 176
    new-array v3, v3, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object p1, v3, v2

    .line 179
    .line 180
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void
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

.method private static final j(Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$1"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$event"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz p4, :cond_5

    .line 30
    .line 31
    const/16 v0, 0x8

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    if-eq p4, v2, :cond_3

    .line 35
    .line 36
    const/4 p3, 0x2

    .line 37
    if-eq p4, p3, :cond_2

    .line 38
    .line 39
    const/4 p3, 0x3

    .line 40
    if-eq p4, p3, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-static {p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->I(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Z

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_1

    .line 48
    .line 49
    invoke-direct {p0, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->t(Lcom/android/calendar/common/event/schema/Event;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-static {p1, v3}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->N(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->i:Ljava/lang/Runnable;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->G(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-static {p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->I(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_6

    .line 73
    .line 74
    iget p3, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->k:F

    .line 75
    .line 76
    sub-float/2addr p3, v1

    .line 77
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    invoke-static {p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->M(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)I

    .line 82
    .line 83
    .line 84
    move-result p4

    .line 85
    int-to-float p4, p4

    .line 86
    cmpl-float p3, p3, p4

    .line 87
    .line 88
    if-ltz p3, :cond_6

    .line 89
    .line 90
    invoke-direct {p0, p2}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->t(Lcom/android/calendar/common/event/schema/Event;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v3}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->N(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object p0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->i:Ljava/lang/Runnable;

    .line 98
    .line 99
    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    invoke-static {p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->I(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_4

    .line 107
    .line 108
    invoke-virtual {p3}, Landroid/view/View;->performClick()Z

    .line 109
    .line 110
    .line 111
    :cond_4
    invoke-static {p1, v3}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->N(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Z)V

    .line 112
    .line 113
    .line 114
    invoke-static {p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->G(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    new-instance p3, Lcom/android/calendar/homepage/productivity/f;

    .line 123
    .line 124
    invoke-direct {p3, p1, p2, p0}, Lcom/android/calendar/homepage/productivity/f;-><init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;)V

    .line 125
    .line 126
    .line 127
    iput-object p3, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->i:Ljava/lang/Runnable;

    .line 128
    .line 129
    const-wide/16 v3, 0x1f4

    .line 130
    .line 131
    invoke-virtual {p1, p3, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 132
    .line 133
    .line 134
    iput v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->j:F

    .line 135
    .line 136
    iput v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->k:F

    .line 137
    .line 138
    :cond_6
    :goto_0
    return v2
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

.method private static final k(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$event"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "this$1"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {p0, v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->N(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canModifyEvent()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->isSolarRepeating()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p2, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {p0, p1, v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->O(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->G(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p2, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a:Landroid/view/View;

    .line 59
    .line 60
    const/4 p1, 0x2

    .line 61
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string p2, "context"

    .line 70
    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const p2, 0x7f1204e2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p2, "resources.getString(R.st\u2026tivity_cannot_move_event)"

    .line 86
    .line 87
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p2, 0x4

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-static {p1, p0, v1, p2, v0}, Lcom/miui/calendar/util/t0;->e(Landroid/content/Context;Ljava/lang/String;IILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-void
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

.method private static final l(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p2, "$event"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "this$0"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/high16 v0, 0x10000000

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-ne p2, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p0, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {p2, p0, v1}, Lp1/b;->b(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AnniversaryEvent;Ljava/util/Calendar;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    const/16 v1, 0x9

    .line 51
    .line 52
    if-ne p2, v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    check-cast p0, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {p2, p0, v1}, Lw1/b;->b(Landroid/content/Context;Lcom/android/calendar/common/event/schema/CountdownEvent;Ljava/util/Calendar;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p1, p0, v0}, Lt1/a;->n(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;I)V

    .line 84
    .line 85
    .line 86
    return-void
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

.method private final m(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 7

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.ElectricityBillEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getAccount()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v1, v3

    .line 28
    :goto_1
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v4, 0x7f1202cb

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v4, 0x7f1202ca

    .line 51
    .line 52
    .line 53
    new-array v5, v3, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/ElectricityBillEvent;->getAccount()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    aput-object v6, v5, v2

    .line 60
    .line 61
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    const p1, 0x7f120150

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v4, v5, p1}, Lcom/miui/calendar/util/s0;->h(Landroid/content/Context;JI)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const v1, 0x7f1202ce

    .line 92
    .line 93
    .line 94
    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object p1, v3, v2

    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
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

.method private final n(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 5

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.FlightEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x3

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v3, v2, v4

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepCity()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v4, 0x1

    .line 31
    aput-object v3, v2, v4

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrCity()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v3, 0x2

    .line 38
    aput-object p1, v2, v3

    .line 39
    .line 40
    const p1, 0x7f120697

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->v()V

    .line 51
    .line 52
    .line 53
    return-void
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

.method private final o(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 7

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.GasBillEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/GasBillEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/GasBillEvent;->getAccount()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v1, v3

    .line 28
    :goto_1
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v4, 0x7f1202cd

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v4, 0x7f1202cc

    .line 51
    .line 52
    .line 53
    new-array v5, v3, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/GasBillEvent;->getAccount()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    aput-object v6, v5, v2

    .line 60
    .line 61
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    const p1, 0x7f120150

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v4, v5, p1}, Lcom/miui/calendar/util/s0;->h(Landroid/content/Context;JI)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 86
    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const v1, 0x7f1202ce

    .line 92
    .line 93
    .line 94
    new-array v3, v3, [Ljava/lang/Object;

    .line 95
    .line 96
    aput-object p1, v3, v2

    .line 97
    .line 98
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
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

.method private final p(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 7

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.HotelEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/HotelEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/HotelEvent;->getHotelName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/HotelEvent;->getCheckInTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    const v3, 0x7f120150

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3}, Lcom/miui/calendar/util/s0;->h(Landroid/content/Context;JI)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x1

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    aput-object v0, v2, v3

    .line 45
    .line 46
    const v0, 0x7f120698

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    const/4 v6, 0x1

    .line 65
    move-object v1, p0

    .line 66
    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->w(JJZ)V

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

.method private final q(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 8

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.LoanEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/LoanEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getBankName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v1, v2

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    move v1, v3

    .line 28
    :goto_1
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const v4, 0x7f1202d1

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const v4, 0x7f1202d0

    .line 51
    .line 52
    .line 53
    new-array v5, v3, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getBankName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    aput-object v6, v5, v2

    .line 60
    .line 61
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getRepaymentTimeMillis()J

    .line 77
    .line 78
    .line 79
    move-result-wide v4

    .line 80
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 81
    .line 82
    .line 83
    invoke-static {v0}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iget-object v4, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 88
    .line 89
    invoke-static {v4}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-static {v4}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    invoke-static {v1}, Lcom/miui/calendar/util/e0;->i(Ljava/util/Calendar;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget-object v5, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 102
    .line 103
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/LoanEvent;->getRepaymentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v6

    .line 111
    const p1, 0x7f120150

    .line 112
    .line 113
    .line 114
    invoke-static {v5, v6, v7, p1}, Lcom/miui/calendar/util/s0;->h(Landroid/content/Context;JI)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    if-ge v1, v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const v1, 0x7f1202c6

    .line 127
    .line 128
    .line 129
    new-array v3, v3, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object p1, v3, v2

    .line 132
    .line 133
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    goto :goto_3

    .line 138
    :cond_3
    if-ne v0, v4, :cond_4

    .line 139
    .line 140
    iget-object v4, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 141
    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const v5, 0x7f1202c4

    .line 147
    .line 148
    .line 149
    const/4 v6, 0x2

    .line 150
    new-array v6, v6, [Ljava/lang/Object;

    .line 151
    .line 152
    aput-object p1, v6, v2

    .line 153
    .line 154
    sub-int/2addr v1, v0

    .line 155
    add-int/2addr v1, v3

    .line 156
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    aput-object p1, v6, v3

    .line 161
    .line 162
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const v1, 0x7f1202c5

    .line 174
    .line 175
    .line 176
    new-array v3, v3, [Ljava/lang/Object;

    .line 177
    .line 178
    aput-object p1, v3, v2

    .line 179
    .line 180
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void
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

.method private final r(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 2

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.MovieEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/MovieEvent;->getMovieName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCinema()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
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

.method private final s(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 8

    .line 1
    const-string v0, "null cannot be cast to non-null type com.android.calendar.common.event.schema.TrainEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getArrStation()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v0, v2

    .line 26
    :goto_1
    const/4 v3, 0x2

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const v5, 0x7f12069e

    .line 38
    .line 39
    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getTrainNum()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    aput-object v6, v3, v1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    aput-object p1, v3, v2

    .line 53
    .line 54
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const v0, 0x7f120672

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->y(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const v5, 0x7f12069d

    .line 87
    .line 88
    .line 89
    const/4 v6, 0x3

    .line 90
    new-array v6, v6, [Ljava/lang/Object;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getTrainNum()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    aput-object v7, v6, v1

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    aput-object v1, v6, v2

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getArrStation()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    aput-object p1, v6, v3

    .line 109
    .line 110
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->v()V

    .line 118
    .line 119
    .line 120
    :goto_2
    return-void
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

.method private final t(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canModifyEvent()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->isSolarRepeating()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->S()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->J(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Lcom/miui/calendar/util/b1;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->J(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Lcom/miui/calendar/util/b1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/miui/calendar/util/b1;->g()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    int-to-float v2, v0

    .line 44
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->J(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Lcom/miui/calendar/util/b1;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/miui/calendar/util/b1;->d()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    int-to-float v3, v0

    .line 55
    const/4 v4, 0x0

    .line 56
    const/4 v5, 0x4

    .line 57
    const/4 v6, 0x0

    .line 58
    invoke-static/range {v1 .. v6}, Lcom/miui/calendar/util/b1;->k(Lcom/miui/calendar/util/b1;FFLw7/a;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "event"

    .line 67
    .line 68
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string v1, "eventData"

    .line 72
    .line 73
    invoke-static {v1, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a:Landroid/view/View;

    .line 78
    .line 79
    new-instance v2, Lcom/android/calendar/homepage/productivity/g;

    .line 80
    .line 81
    iget-object v3, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 82
    .line 83
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const-string v4, "context"

    .line 88
    .line 89
    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {v2, v3, p1}, Lcom/android/calendar/homepage/productivity/g;-><init>(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 93
    .line 94
    .line 95
    const/16 p1, 0x200

    .line 96
    .line 97
    invoke-virtual {v1, v0, v2, p0, p1}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 98
    .line 99
    .line 100
    :cond_1
    :goto_0
    return-void
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

.method private final u(JJLjava/lang/String;Ljava/util/Calendar;)Lkotlin/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/util/Calendar;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    move-wide/from16 v0, p1

    .line 2
    .line 3
    move-wide/from16 v2, p3

    .line 4
    .line 5
    move-object/from16 v4, p6

    .line 6
    .line 7
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    const-string v7, "HH:mm"

    .line 14
    .line 15
    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 16
    .line 17
    .line 18
    invoke-static/range {p5 .. p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 23
    .line 24
    .line 25
    new-instance v6, Ljava/util/Date;

    .line 26
    .line 27
    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    new-instance v7, Ljava/util/Date;

    .line 35
    .line 36
    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 44
    .line 45
    .line 46
    move-result-object v15

    .line 47
    const/4 v14, 0x1

    .line 48
    invoke-virtual {v4, v14}, Ljava/util/Calendar;->get(I)I

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    const/4 v13, 0x2

    .line 53
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    const/4 v12, 0x5

    .line 58
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    const/16 v16, 0x0

    .line 63
    .line 64
    const/16 v17, 0x0

    .line 65
    .line 66
    const/16 v18, 0x0

    .line 67
    .line 68
    move-object v8, v15

    .line 69
    move/from16 v12, v16

    .line 70
    .line 71
    move/from16 v13, v17

    .line 72
    .line 73
    move-object/from16 p5, v6

    .line 74
    .line 75
    move v6, v14

    .line 76
    move/from16 v14, v18

    .line 77
    .line 78
    invoke-virtual/range {v8 .. v14}, Ljava/util/Calendar;->set(IIIIII)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v16

    .line 85
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    const/4 v6, 0x2

    .line 90
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    const/4 v6, 0x5

    .line 95
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    .line 96
    .line 97
    .line 98
    move-result v11

    .line 99
    const/16 v12, 0x17

    .line 100
    .line 101
    const/16 v13, 0x3b

    .line 102
    .line 103
    const/16 v14, 0x3b

    .line 104
    .line 105
    invoke-virtual/range {v8 .. v14}, Ljava/util/Calendar;->set(IIIIII)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v8

    .line 112
    cmp-long v4, v0, v16

    .line 113
    .line 114
    const-string v6, "24:00"

    .line 115
    .line 116
    const-string v10, "00:00"

    .line 117
    .line 118
    if-gez v4, :cond_0

    .line 119
    .line 120
    cmp-long v11, v2, v8

    .line 121
    .line 122
    if-lez v11, :cond_0

    .line 123
    .line 124
    move-object v11, v6

    .line 125
    move-object v7, v10

    .line 126
    goto :goto_0

    .line 127
    :cond_0
    move-object v11, v7

    .line 128
    move-object/from16 v7, p5

    .line 129
    .line 130
    :goto_0
    if-gez v4, :cond_1

    .line 131
    .line 132
    cmp-long v12, v2, v8

    .line 133
    .line 134
    if-gez v12, :cond_1

    .line 135
    .line 136
    new-instance v7, Ljava/util/Date;

    .line 137
    .line 138
    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v5, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    goto :goto_1

    .line 146
    :cond_1
    move-object v10, v7

    .line 147
    :goto_1
    if-lez v4, :cond_2

    .line 148
    .line 149
    cmp-long v2, v2, v8

    .line 150
    .line 151
    if-lez v2, :cond_2

    .line 152
    .line 153
    new-instance v2, Ljava/util/Date;

    .line 154
    .line 155
    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v10

    .line 162
    goto :goto_2

    .line 163
    :cond_2
    move-object v6, v11

    .line 164
    :goto_2
    new-instance v0, Lkotlin/Pair;

    .line 165
    .line 166
    invoke-direct {v0, v10, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-object v0
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
.end method

.method private final v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

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

.method private final w(JJZ)V
    .locals 7

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->e:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->h:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p5, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->e:Landroid/view/View;

    .line 18
    .line 19
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p5, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->h:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget-object p5, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 28
    .line 29
    invoke-static {p5}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object p5

    .line 33
    invoke-virtual {p5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 34
    .line 35
    .line 36
    move-result-object p5

    .line 37
    invoke-virtual {p5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    const-string p5, "desiredDay.timeZone.id"

    .line 42
    .line 43
    invoke-static {v5, p5}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p5, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 47
    .line 48
    invoke-static {p5}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout;->H(Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)Ljava/util/Calendar;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    move-object v0, p0

    .line 53
    move-wide v1, p1

    .line 54
    move-wide v3, p3

    .line 55
    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->u(JJLjava/lang/String;Ljava/util/Calendar;)Lkotlin/Pair;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    check-cast p2, Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/lang/String;

    .line 70
    .line 71
    iget-object p3, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->f:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->g:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
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

.method private final x(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getAccountName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getAccountType()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarDisplayName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getColor()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/calendar/common/Utils;->x(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const v2, 0x7f08021e

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->b:Landroid/widget/ImageView;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    .line 81
    return-void
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

.method private final y(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->d:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
.end method


# virtual methods
.method public final i(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 7

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->x(Lcom/android/calendar/common/event/schema/Event;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    move-object v1, p0

    .line 22
    invoke-direct/range {v1 .. v6}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->w(JJZ)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->c:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    and-int/lit8 v1, v1, -0x11

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x3

    .line 41
    if-eq v0, v1, :cond_3

    .line 42
    .line 43
    const/4 v1, 0x7

    .line 44
    if-eq v0, v1, :cond_2

    .line 45
    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    if-eq v0, v1, :cond_1

    .line 49
    .line 50
    const/16 v1, 0x9

    .line 51
    .line 52
    if-eq v0, v1, :cond_0

    .line 53
    .line 54
    packed-switch v0, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->d(Lcom/android/calendar/common/event/schema/Event;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->r(Lcom/android/calendar/common/event/schema/Event;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->q(Lcom/android/calendar/common/event/schema/Event;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->p(Lcom/android/calendar/common/event/schema/Event;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->o(Lcom/android/calendar/common/event/schema/Event;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->m(Lcom/android/calendar/common/event/schema/Event;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->s(Lcom/android/calendar/common/event/schema/Event;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->n(Lcom/android/calendar/common/event/schema/Event;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->g(Lcom/android/calendar/common/event/schema/Event;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->e(Lcom/android/calendar/common/event/schema/Event;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->f(Lcom/android/calendar/common/event/schema/Event;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->h(Lcom/android/calendar/common/event/schema/Event;)V

    .line 102
    .line 103
    .line 104
    :goto_0
    const/4 v0, 0x1

    .line 105
    new-array v0, v0, [Landroid/view/View;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a:Landroid/view/View;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    aput-object v1, v0, v2

    .line 111
    .line 112
    invoke-static {v0}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v0}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a:Landroid/view/View;

    .line 121
    .line 122
    new-array v2, v2, [Ld9/a;

    .line 123
    .line 124
    invoke-interface {v0, v1, v2}, Lmiuix/animation/ITouchStyle;->P(Landroid/view/View;[Ld9/a;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a:Landroid/view/View;

    .line 128
    .line 129
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 130
    .line 131
    new-instance v2, Lcom/android/calendar/homepage/productivity/d;

    .line 132
    .line 133
    invoke-direct {v2, p0, v1, p1}, Lcom/android/calendar/homepage/productivity/d;-><init>(Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;Lcom/android/calendar/common/event/schema/Event;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->a:Landroid/view/View;

    .line 140
    .line 141
    iget-object v1, p0, Lcom/android/calendar/homepage/productivity/ProductivityListLayout$c;->l:Lcom/android/calendar/homepage/productivity/ProductivityListLayout;

    .line 142
    .line 143
    new-instance v2, Lcom/android/calendar/homepage/productivity/e;

    .line 144
    .line 145
    invoke-direct {v2, p1, v1}, Lcom/android/calendar/homepage/productivity/e;-><init>(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/homepage/productivity/ProductivityListLayout;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    return-void

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
