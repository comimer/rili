.class public Lcom/android/calendar/cards/d0;
.super Lcom/android/calendar/cards/m1;
.source "ClassScheduleCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/d0$a;,
        Lcom/android/calendar/cards/d0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/m1<",
        "Lcom/android/calendar/cards/d0$b;",
        "Lcom/android/calendar/cards/ClassSchedulePresenter$b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Lcom/miui/calendar/card/schema/CustomCardSchema;

.field private c:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

.field private d:I


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/m1;-><init>(Ljava/util/Calendar;)V

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

.method public static synthetic e(Lcom/android/calendar/cards/d0;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/d0;->l(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/calendar/cards/d0;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/d0;->m(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/calendar/cards/d0;->o(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/android/calendar/cards/d0;Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/cards/d0;->p(Landroid/content/Context;Ljava/util/ArrayList;I)V

    return-void
.end method

.method public static synthetic i(Lcom/android/calendar/cards/d0;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/calendar/cards/d0;->n(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private synthetic l(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lv3/d;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lv3/d;->e(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/cards/d0;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/miui/calendar/card/schema/CustomCardSchema;->action:Lcom/android/calendar/common/ModuleSchema;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/high16 v1, 0x10000000

    .line 17
    .line 18
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;Ljava/util/Map;I)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
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

.method private synthetic m(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lv3/d;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lv3/d;->e(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/cards/d0;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/miui/calendar/card/schema/CustomCardSchema;->action:Lcom/android/calendar/common/ModuleSchema;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/high16 v1, 0x10000000

    .line 17
    .line 18
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;Ljava/util/Map;I)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
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

.method private synthetic n(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lv3/d;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lv3/d;->e(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/cards/d0;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 12
    .line 13
    iget-object p2, p2, Lcom/miui/calendar/card/schema/CustomCardSchema;->action:Lcom/android/calendar/common/ModuleSchema;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/high16 v1, 0x10000000

    .line 17
    .line 18
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;Ljava/util/Map;I)Z

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
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

.method private static synthetic o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/view/View;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 6
    .line 7
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 16
    .line 17
    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 18
    .line 19
    aput-object v4, v3, v2

    .line 20
    .line 21
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 28
    .line 29
    sget-object v5, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 30
    .line 31
    aput-object v5, v3, v2

    .line 32
    .line 33
    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, p1}, Lmiuix/animation/ITouchStyle;->e(Landroid/view/MotionEvent;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return v0
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
.end method

.method private synthetic p(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Lv3/d;->c(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lv3/d;->e(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->action:Lcom/android/calendar/common/ModuleSchema;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;

    .line 26
    .line 27
    iget-object p2, p2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$Course;->action:Lcom/android/calendar/common/ModuleSchema;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/android/calendar/cards/d0;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 31
    .line 32
    iget-object p2, p2, Lcom/miui/calendar/card/schema/CustomCardSchema;->action:Lcom/android/calendar/common/ModuleSchema;

    .line 33
    .line 34
    :goto_0
    if-eqz p2, :cond_2

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    const/high16 v0, 0x10000000

    .line 38
    .line 39
    invoke-virtual {p2, p1, p3, v0}, Lcom/android/calendar/common/ModuleSchema;->sendIntent(Landroid/content/Context;Ljava/util/Map;I)Z

    .line 40
    .line 41
    .line 42
    :cond_2
    :goto_1
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


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/cards/ClassSchedulePresenter$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/calendar/cards/d0;->j(Lcom/android/calendar/cards/ClassSchedulePresenter$b;)V

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
    check-cast p1, Lcom/android/calendar/cards/d0$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/cards/d0;->k(Lcom/android/calendar/cards/d0$b;Landroid/content/Context;)V

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
    iget-object v0, p0, Lcom/android/calendar/cards/d0;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

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
    const/16 v0, 0x6c

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

    const/16 v0, 0x3a

    return v0
.end method

.method j(Lcom/android/calendar/cards/ClassSchedulePresenter$b;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/calendar/cards/d0;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->b:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/android/calendar/cards/d0;->c:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 8
    .line 9
    iget p1, p1, Lcom/android/calendar/cards/ClassSchedulePresenter$b;->c:I

    .line 10
    .line 11
    iput p1, p0, Lcom/android/calendar/cards/d0;->d:I

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

.method k(Lcom/android/calendar/cards/d0$b;Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->c:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/v;->k(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/calendar/cards/d0;->d:I

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->c:Landroid/view/View;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->c:Landroid/view/View;

    .line 19
    .line 20
    new-instance v1, Lcom/android/calendar/cards/y;

    .line 21
    .line 22
    invoke-direct {v1, p0, p2}, Lcom/android/calendar/cards/y;-><init>(Lcom/android/calendar/cards/d0;Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->b:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->a:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/calendar/cards/d0;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/miui/calendar/card/schema/CustomCardSchema;->extra:Lcom/google/gson/JsonObject;

    .line 46
    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    const-string v1, "infoGuideTitle"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/calendar/cards/d0;->b:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->extra:Lcom/google/gson/JsonObject;

    .line 59
    .line 60
    const-string v2, "infoGuideDescription"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    if-eqz v1, :cond_3

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    const v0, 0x7f120120

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :goto_0
    iget-object v2, p1, Lcom/android/calendar/cards/d0$b;->d:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const v0, 0x7f120121

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    :goto_1
    iget-object p1, p1, Lcom/android/calendar/cards/d0$b;->d:Landroid/widget/TextView;

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :cond_3
    return-void

    .line 117
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/cards/d0;->c:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 118
    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->c:Landroid/view/View;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->c:Landroid/view/View;

    .line 127
    .line 128
    new-instance v1, Lcom/android/calendar/cards/z;

    .line 129
    .line 130
    invoke-direct {v1, p0, p2}, Lcom/android/calendar/cards/z;-><init>(Lcom/android/calendar/cards/d0;Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->b:Landroid/view/View;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->a:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->d:Landroid/widget/TextView;

    .line 152
    .line 153
    const v1, 0x7f12011e

    .line 154
    .line 155
    .line 156
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p1, Lcom/android/calendar/cards/d0$b;->e:Landroid/widget/TextView;

    .line 164
    .line 165
    const v0, 0x7f12011f

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_5
    iget v0, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->presentWeek:I

    .line 177
    .line 178
    if-lez v0, :cond_6

    .line 179
    .line 180
    iget-object v3, p1, Lcom/android/calendar/cards/d0$b;->b:Landroid/view/View;

    .line 181
    .line 182
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object v3, p1, Lcom/android/calendar/cards/d0$b;->a:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object v3, p1, Lcom/android/calendar/cards/d0$b;->a:Landroid/widget/TextView;

    .line 191
    .line 192
    const v4, 0x7f120122

    .line 193
    .line 194
    .line 195
    const/4 v5, 0x2

    .line 196
    new-array v5, v5, [Ljava/lang/Object;

    .line 197
    .line 198
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    aput-object v0, v5, v1

    .line 203
    .line 204
    const/4 v0, 0x1

    .line 205
    iget-object v6, p0, Lcom/android/calendar/cards/m1;->a:Ljava/util/Calendar;

    .line 206
    .line 207
    invoke-static {p2, v6}, Lcom/miui/calendar/util/s0;->b(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    aput-object v6, v5, v0

    .line 212
    .line 213
    invoke-virtual {p2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    :cond_6
    iget-object v0, p0, Lcom/android/calendar/cards/d0;->c:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 221
    .line 222
    iget-object v0, v0, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->courses:Ljava/util/ArrayList;

    .line 223
    .line 224
    if-eqz v0, :cond_8

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-eqz v3, :cond_7

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_7
    iget-object v3, p1, Lcom/android/calendar/cards/d0$b;->c:Landroid/view/View;

    .line 234
    .line 235
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    iget-object v2, p1, Lcom/android/calendar/cards/d0$b;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 239
    .line 240
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 241
    .line 242
    .line 243
    iget-object v1, p1, Lcom/android/calendar/cards/d0$b;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 244
    .line 245
    new-instance v2, Lcom/android/calendar/cards/d0$a;

    .line 246
    .line 247
    invoke-direct {v2, p2, v0}, Lcom/android/calendar/cards/d0$a;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v2}, Lcom/miui/calendar/view/DynamicLinearLayout;->setAdapter(Lcom/miui/calendar/view/i;)V

    .line 251
    .line 252
    .line 253
    iget-object v1, p1, Lcom/android/calendar/cards/d0$b;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 254
    .line 255
    new-instance v2, Lcom/android/calendar/cards/b0;

    .line 256
    .line 257
    invoke-direct {v2}, Lcom/android/calendar/cards/b0;-><init>()V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1, v2}, Lcom/miui/calendar/view/DynamicLinearLayout;->setOnItemTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    .line 262
    .line 263
    iget-object p1, p1, Lcom/android/calendar/cards/d0$b;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 264
    .line 265
    new-instance v1, Lcom/android/calendar/cards/c0;

    .line 266
    .line 267
    invoke-direct {v1, p0, p2, v0}, Lcom/android/calendar/cards/c0;-><init>(Lcom/android/calendar/cards/d0;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v1}, Lcom/miui/calendar/view/DynamicLinearLayout;->setOnItemClickListener(Lcom/miui/calendar/view/DynamicLinearLayout$b;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_8
    :goto_2
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->c:Landroid/view/View;

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->c:Landroid/view/View;

    .line 280
    .line 281
    new-instance v1, Lcom/android/calendar/cards/a0;

    .line 282
    .line 283
    invoke-direct {v1, p0, p2}, Lcom/android/calendar/cards/a0;-><init>(Lcom/android/calendar/cards/d0;Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    .line 288
    .line 289
    iget-object p2, p1, Lcom/android/calendar/cards/d0$b;->f:Lcom/miui/calendar/view/DynamicLinearLayout;

    .line 290
    .line 291
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    iget-object p2, p0, Lcom/android/calendar/cards/d0;->c:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 295
    .line 296
    iget-object p2, p2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->coursesDesc:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$CoursesDesc;

    .line 297
    .line 298
    if-eqz p2, :cond_9

    .line 299
    .line 300
    iget-object v0, p1, Lcom/android/calendar/cards/d0$b;->d:Landroid/widget/TextView;

    .line 301
    .line 302
    iget-object p2, p2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$CoursesDesc;->title:Ljava/lang/String;

    .line 303
    .line 304
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .line 306
    .line 307
    iget-object p1, p1, Lcom/android/calendar/cards/d0$b;->e:Landroid/widget/TextView;

    .line 308
    .line 309
    iget-object p2, p0, Lcom/android/calendar/cards/d0;->c:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;

    .line 310
    .line 311
    iget-object p2, p2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema;->coursesDesc:Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$CoursesDesc;

    .line 312
    .line 313
    iget-object p2, p2, Lcom/android/calendar/cards/ClassSchedulePresenter$ClassScheduleExtraSchema$CoursesDesc;->desc:Ljava/lang/String;

    .line 314
    .line 315
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    .line 317
    .line 318
    :cond_9
    return-void
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
.end method
