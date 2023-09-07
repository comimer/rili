.class final Lcom/android/calendar/homepage/AllDayEventsView$a;
.super Landroid/widget/BaseAdapter;
.source "AllDayEventsView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/AllDayEventsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0008H\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\u0008H\u0016J\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u0008H\u0016J\"\u0010\u0013\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/android/calendar/homepage/AllDayEventsView$a;",
        "Landroid/widget/BaseAdapter;",
        "Landroid/view/View;",
        "v",
        "Lcom/android/calendar/homepage/l0$l;",
        "dayEvent",
        "Lkotlin/u;",
        "a",
        "",
        "getCount",
        "position",
        "",
        "getItem",
        "",
        "getItemId",
        "getItemViewType",
        "convertView",
        "Landroid/view/ViewGroup;",
        "parent",
        "getView",
        "<init>",
        "(Lcom/android/calendar/homepage/AllDayEventsView;)V",
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
.field final synthetic a:Lcom/android/calendar/homepage/AllDayEventsView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/AllDayEventsView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

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

.method private final a(Landroid/view/View;Lcom/android/calendar/homepage/l0$l;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 8
    .line 9
    sget-object v2, Lcom/android/calendar/common/Utils$DisplayType;->FILL:Lcom/android/calendar/common/Utils$DisplayType;

    .line 10
    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/calendar/common/Utils;->A(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/Utils$DisplayType;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    int-to-double v1, v1

    .line 20
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    .line 21
    .line 22
    mul-double/2addr v1, v3

    .line 23
    double-to-int v1, v1

    .line 24
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-object v2, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const v3, 0x7f0800d3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    .line 54
    .line 55
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 61
    .line 62
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const v5, 0x7f0800d4

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    .line 85
    .line 86
    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 87
    .line 88
    .line 89
    const/4 v1, 0x1

    .line 90
    new-array v3, v1, [I

    .line 91
    .line 92
    const v5, 0x10100a7

    .line 93
    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    aput v5, v3, v6

    .line 97
    .line 98
    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 99
    .line 100
    .line 101
    new-array v1, v1, [I

    .line 102
    .line 103
    aput v6, v1, v6

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 115
    .line 116
    .line 117
    move-result p2

    .line 118
    iget-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 119
    .line 120
    invoke-static {v1}, Lcom/android/calendar/homepage/AllDayEventsView;->q(Lcom/android/calendar/homepage/AllDayEventsView;)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ge p2, v1, :cond_0

    .line 125
    .line 126
    const p2, 0x3f333333    # 0.7f

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    .line 131
    .line 132
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    .line 137
    .line 138
    return-void
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
.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->o(Lcom/android/calendar/homepage/AllDayEventsView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->l(Lcom/android/calendar/homepage/AllDayEventsView;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->l(Lcom/android/calendar/homepage/AllDayEventsView;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x4

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    :cond_0
    const/4 v0, 0x3

    .line 27
    return v0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->j(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
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

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->j(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "mAllDayEvents[position]"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object p1
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->o(Lcom/android/calendar/homepage/AllDayEventsView;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    if-ne p1, v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/calendar/homepage/AllDayEventsView;->l(Lcom/android/calendar/homepage/AllDayEventsView;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/calendar/homepage/AllDayEventsView;->l(Lcom/android/calendar/homepage/AllDayEventsView;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x4

    .line 27
    if-ne p1, v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x1

    .line 31
    :cond_1
    :goto_0
    return v1
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const v1, 0x7f0d0048

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    new-instance p3, Lcom/android/calendar/homepage/AllDayEventsView$d;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 27
    .line 28
    invoke-direct {p3, v1}, Lcom/android/calendar/homepage/AllDayEventsView$d;-><init>(Lcom/android/calendar/homepage/AllDayEventsView;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    const v1, 0x7f0a0096

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "cv!!.findViewById(R.id.all_day_event_type)"

    .line 42
    .line 43
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v1, Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {p3, v1}, Lcom/android/calendar/homepage/AllDayEventsView$d;->d(Landroid/widget/ImageView;)V

    .line 49
    .line 50
    .line 51
    const v1, 0x7f0a0095

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "cv!!.findViewById(R.id.all_day_event_title)"

    .line 59
    .line 60
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    check-cast v1, Landroid/widget/TextView;

    .line 64
    .line 65
    invoke-virtual {p3, v1}, Lcom/android/calendar/homepage/AllDayEventsView$d;->c(Landroid/widget/TextView;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    const-string v1, "null cannot be cast to non-null type com.android.calendar.homepage.AllDayEventsView.ViewHolder"

    .line 77
    .line 78
    invoke-static {p3, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast p3, Lcom/android/calendar/homepage/AllDayEventsView$d;

    .line 82
    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/calendar/homepage/AllDayEventsView$a;->getItemViewType(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const v2, 0x3f333333    # 0.7f

    .line 88
    .line 89
    .line 90
    const/high16 v3, 0x3f800000    # 1.0f

    .line 91
    .line 92
    const/4 v4, 0x2

    .line 93
    const/16 v5, 0x8

    .line 94
    .line 95
    if-ne v1, v4, :cond_2

    .line 96
    .line 97
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->a()Landroid/widget/TextView;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->h(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->a()Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->n(Lcom/android/calendar/homepage/AllDayEventsView;)Landroid/content/res/ColorStateList;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->a()Landroid/widget/TextView;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/android/calendar/homepage/AllDayEventsView;->p(Lcom/android/calendar/homepage/AllDayEventsView;)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    iget-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/android/calendar/homepage/AllDayEventsView;->q(Lcom/android/calendar/homepage/AllDayEventsView;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-ge v0, v1, :cond_1

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_1
    move v2, v3

    .line 143
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->b()Landroid/widget/ImageView;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->a()Landroid/widget/TextView;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const p3, 0x7f060524

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_6

    .line 177
    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 179
    .line 180
    invoke-static {v1}, Lcom/android/calendar/homepage/AllDayEventsView;->j(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    check-cast v1, Lcom/android/calendar/homepage/l0$l;

    .line 189
    .line 190
    iget-object v1, v1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 191
    .line 192
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    const/4 v6, 0x7

    .line 197
    const/4 v7, -0x1

    .line 198
    if-eq v1, v6, :cond_5

    .line 199
    .line 200
    if-eq v1, v5, :cond_4

    .line 201
    .line 202
    const/16 v6, 0x9

    .line 203
    .line 204
    if-eq v1, v6, :cond_3

    .line 205
    .line 206
    move v1, v7

    .line 207
    goto :goto_2

    .line 208
    :cond_3
    const v1, 0x7f080228

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_4
    const v1, 0x7f08020c

    .line 213
    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_5
    const v1, 0x7f080210

    .line 217
    .line 218
    .line 219
    :goto_2
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->a()Landroid/widget/TextView;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    iget-object v8, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 224
    .line 225
    invoke-static {v8}, Lcom/android/calendar/homepage/AllDayEventsView;->j(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;

    .line 226
    .line 227
    .line 228
    move-result-object v8

    .line 229
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    const-string v9, "mAllDayEvents[position]"

    .line 234
    .line 235
    invoke-static {v8, v9}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    check-cast v8, Lcom/android/calendar/homepage/l0$l;

    .line 239
    .line 240
    invoke-direct {p0, p2, v8}, Lcom/android/calendar/homepage/AllDayEventsView$a;->a(Landroid/view/View;Lcom/android/calendar/homepage/l0$l;)V

    .line 241
    .line 242
    .line 243
    iget-object v9, v8, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 244
    .line 245
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    invoke-virtual {v9}, Lcom/android/calendar/common/event/schema/EventEx;->getSelfAttendeeStatus()I

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    if-ne v9, v4, :cond_6

    .line 254
    .line 255
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaintFlags()I

    .line 256
    .line 257
    .line 258
    move-result v4

    .line 259
    or-int/lit8 v4, v4, 0x10

    .line 260
    .line 261
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 262
    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_6
    invoke-virtual {v6}, Landroid/widget/TextView;->getPaintFlags()I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    and-int/lit8 v4, v4, -0x11

    .line 270
    .line 271
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 272
    .line 273
    .line 274
    :goto_3
    iget-object v4, v8, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 275
    .line 276
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    iget-object v9, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 285
    .line 286
    invoke-static {v9}, Lcom/android/calendar/homepage/AllDayEventsView;->q(Lcom/android/calendar/homepage/AllDayEventsView;)I

    .line 287
    .line 288
    .line 289
    move-result v9

    .line 290
    if-ge v4, v9, :cond_7

    .line 291
    .line 292
    goto :goto_4

    .line 293
    :cond_7
    move v2, v3

    .line 294
    :goto_4
    invoke-virtual {v6, v2}, Landroid/view/View;->setAlpha(F)V

    .line 295
    .line 296
    .line 297
    iget-object v2, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 298
    .line 299
    invoke-static {v2}, Lcom/android/calendar/homepage/AllDayEventsView;->j(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Lcom/android/calendar/homepage/l0$l;

    .line 308
    .line 309
    iget-object v2, v2, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 310
    .line 311
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_8

    .line 320
    .line 321
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 322
    .line 323
    invoke-static {p1}, Lcom/android/calendar/homepage/AllDayEventsView;->r(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    goto :goto_5

    .line 328
    :cond_8
    iget-object v2, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 329
    .line 330
    invoke-static {v2}, Lcom/android/calendar/homepage/AllDayEventsView;->j(Lcom/android/calendar/homepage/AllDayEventsView;)Ljava/util/ArrayList;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Lcom/android/calendar/homepage/l0$l;

    .line 339
    .line 340
    iget-object p1, p1, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 341
    .line 342
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    :goto_5
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    .line 348
    .line 349
    iget-object p1, p0, Lcom/android/calendar/homepage/AllDayEventsView$a;->a:Lcom/android/calendar/homepage/AllDayEventsView;

    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    iget-object v2, v8, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 356
    .line 357
    sget-object v3, Lcom/android/calendar/common/Utils$DisplayType;->TEXT:Lcom/android/calendar/common/Utils$DisplayType;

    .line 358
    .line 359
    invoke-static {p1, v2, v3}, Lcom/android/calendar/common/Utils;->A(Landroid/content/res/Resources;Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/Utils$DisplayType;)I

    .line 360
    .line 361
    .line 362
    move-result p1

    .line 363
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    .line 365
    .line 366
    if-eq v1, v7, :cond_9

    .line 367
    .line 368
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->b()Landroid/widget/ImageView;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->b()Landroid/widget/ImageView;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    .line 381
    .line 382
    goto :goto_6

    .line 383
    :cond_9
    invoke-virtual {p3}, Lcom/android/calendar/homepage/AllDayEventsView$d;->b()Landroid/widget/ImageView;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    .line 389
    .line 390
    :goto_6
    return-object p2
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
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
.end method
