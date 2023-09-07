.class public Lcom/android/calendar/event/s1;
.super Lcom/android/calendar/event/NewBaseEditFragment;
.source "NewEditTrainArriveStationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/s1$g;,
        Lcom/android/calendar/event/s1$h;
    }
.end annotation


# instance fields
.field private J:Landroid/view/View;

.field private K:Lcom/miui/calendar/view/LoadingView;

.field private L:Lcom/miui/calendar/event/travel/FlowLayout;

.field private M:Landroid/widget/TextView;

.field private N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private O:I

.field private P:Ltc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltc/a<",
            "Lokhttp3/b0;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lcom/android/calendar/event/s1$g;

.field private R:Lcom/android/calendar/event/t1;

.field private S:Lcom/miui/calendar/event/travel/TrainArriveStationSchema;

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lcom/android/calendar/common/event/schema/TrainEvent;

.field private V:J

.field private W:Z


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;-><init>(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/calendar/event/s1;->O:I

    .line 6
    .line 7
    const v0, 0x7f120674

    .line 8
    .line 9
    .line 10
    iput v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->G:I

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    const/4 v1, 0x1

    .line 23
    const-string v2, "extra_from_out"

    .line 24
    .line 25
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput-boolean v0, p0, Lcom/android/calendar/event/s1;->W:Z

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-wide/16 v0, -0x1

    .line 36
    .line 37
    const-string v2, "sms_millis"

    .line 38
    .line 39
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v0

    .line 43
    iput-wide v0, p0, Lcom/android/calendar/event/s1;->V:J

    .line 44
    .line 45
    return-void
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

.method static synthetic Y(Lcom/android/calendar/event/s1;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/s1;->n0(I)V

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

.method static synthetic Z(Lcom/android/calendar/event/s1;)Lcom/miui/calendar/view/LoadingView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/s1;->K:Lcom/miui/calendar/view/LoadingView;

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

.method static synthetic a0(Lcom/android/calendar/event/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->m0()V

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

.method static synthetic b0(Lcom/android/calendar/event/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->o0()V

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

.method static synthetic c0(Lcom/android/calendar/event/s1;)Lcom/android/calendar/common/event/schema/TrainEvent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

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

.method static synthetic d0(Lcom/android/calendar/event/s1;)Lcom/miui/calendar/event/travel/TrainArriveStationSchema;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/s1;->S:Lcom/miui/calendar/event/travel/TrainArriveStationSchema;

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

.method static synthetic e0(Lcom/android/calendar/event/s1;Lcom/miui/calendar/event/travel/TrainArriveStationSchema;)Lcom/miui/calendar/event/travel/TrainArriveStationSchema;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/s1;->S:Lcom/miui/calendar/event/travel/TrainArriveStationSchema;

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

.method static synthetic f0(Lcom/android/calendar/event/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->s0()V

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

.method static synthetic g0(Lcom/android/calendar/event/s1;Lcom/android/calendar/event/s1$g;)Lcom/android/calendar/event/s1$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/s1;->Q:Lcom/android/calendar/event/s1$g;

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

.method static synthetic h0(Lcom/android/calendar/event/s1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->k0()V

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

.method private i0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/s1;->L:Lcom/miui/calendar/event/travel/FlowLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/calendar/event/s1;->M:Landroid/widget/TextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private j0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/s1;->J:Landroid/view/View;

    .line 2
    .line 3
    const v1, 0x7f0a00c4

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/miui/calendar/event/travel/FlowLayout;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/calendar/event/s1;->L:Lcom/miui/calendar/event/travel/FlowLayout;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/s1;->J:Landroid/view/View;

    .line 15
    .line 16
    const v1, 0x7f0a0272

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/calendar/event/s1;->M:Landroid/widget/TextView;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/s1;->J:Landroid/view/View;

    .line 28
    .line 29
    const v1, 0x7f0a038f

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/miui/calendar/view/LoadingView;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/android/calendar/event/s1;->K:Lcom/miui/calendar/view/LoadingView;

    .line 39
    .line 40
    new-instance v1, Lcom/android/calendar/event/s1$a;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/android/calendar/event/s1$a;-><init>(Lcom/android/calendar/event/s1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/miui/calendar/view/LoadingView;->setOnRefreshListener(Lcom/miui/calendar/view/LoadingView$b;)V

    .line 46
    .line 47
    .line 48
    return-void
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

.method private k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/event/travel/a;->a(Landroid/content/Intent;)Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/calendar/event/s1;->q0()V

    .line 13
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
.end method

.method private l0(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p1, v1}, Lcom/miui/calendar/event/travel/a;->h(Ljava/util/List;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ltz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    add-int/lit8 v2, v2, -0x1

    .line 41
    .line 42
    if-lt v1, v2, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    return-object p1

    .line 62
    :cond_4
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .line 66
    .line 67
    return-object p1
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

.method private m0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 10
    .line 11
    new-instance v1, Lcom/android/calendar/event/s1$c;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/calendar/event/s1$c;-><init>(Lcom/android/calendar/event/s1;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p0, v1}, Lcom/miui/calendar/util/z0;->A(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/miui/calendar/util/z0$h;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/s1;->S:Lcom/miui/calendar/event/travel/TrainArriveStationSchema;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/calendar/event/s1;->K:Lcom/miui/calendar/view/LoadingView;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/miui/calendar/view/LoadingView;->e()V

    .line 32
    .line 33
    .line 34
    :cond_2
    const-string v0, "Cal:D:EditTrainArriveStationFragment"

    .line 35
    .line 36
    const-string v1, "requestArriveStationData()"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0}, Lu1/d;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/TrainEvent;->getTrainNum()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "trainNo"

    .line 59
    .line 60
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const-string v3, "departDate"

    .line 70
    .line 71
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v2, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v3, "stationName"

    .line 81
    .line 82
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {v2, v1}, Lcom/miui/calendar/util/l0;->a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {}, Lu1/d;->d()Lu1/a;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    new-instance v3, Lcom/android/calendar/event/s1$h;

    .line 96
    .line 97
    invoke-direct {v3, p0}, Lcom/android/calendar/event/s1$h;-><init>(Lcom/android/calendar/event/s1;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v2, v0, v1}, Lu1/a;->g(Ljava/lang/String;Ljava/util/Map;)Ltc/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/android/calendar/event/s1;->P:Ltc/a;

    .line 105
    .line 106
    new-instance v1, Lu1/b;

    .line 107
    .line 108
    invoke-direct {v1, v3}, Lu1/b;-><init>(Lu1/b$a;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v1}, Ltc/a;->q(Ltc/b;)V

    .line 112
    .line 113
    .line 114
    return-void
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

.method private n0(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/calendar/event/s1;->O:I

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    move v0, p1

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/s1;->N:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/calendar/event/s1;->N:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/view/View;

    .line 20
    .line 21
    iget v2, p0, Lcom/android/calendar/event/s1;->O:I

    .line 22
    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    move v2, p1

    .line 28
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
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

.method private o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z0;->q(Landroid/content/Context;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 11
    .line 12
    new-instance v1, Lcom/android/calendar/event/s1$d;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/calendar/event/s1$d;-><init>(Lcom/android/calendar/event/s1;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z0;->D(Landroid/content/Context;Lcom/miui/calendar/util/z0$h;)Lmiuix/appcompat/app/l;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->m0()V

    .line 22
    .line 23
    .line 24
    :goto_0
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

.method private p0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/s1;->L:Lcom/miui/calendar/event/travel/FlowLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/calendar/event/s1;->M:Landroid/widget/TextView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/calendar/event/s1;->M:Landroid/widget/TextView;

    .line 15
    .line 16
    const v1, 0x7f12067a

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private s0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/s1;->L:Lcom/miui/calendar/event/travel/FlowLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/s1;->S:Lcom/miui/calendar/event/travel/TrainArriveStationSchema;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->p0()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, v0, Lcom/miui/calendar/event/travel/TrainArriveStationSchema;->stationList:Ljava/util/List;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/android/calendar/event/s1;->l0(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/calendar/event/s1;->T:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->i0()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/calendar/event/s1;->L:Lcom/miui/calendar/event/travel/FlowLayout;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/calendar/event/s1;->T:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/calendar/event/s1;->N:Ljava/util/List;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 54
    .line 55
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    move v2, v1

    .line 60
    :goto_0
    iget-object v3, p0, Lcom/android/calendar/event/s1;->T:Ljava/util/List;

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-ge v2, v3, :cond_2

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/calendar/event/s1;->T:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;

    .line 75
    .line 76
    const v4, 0x7f0d0241

    .line 77
    .line 78
    .line 79
    iget-object v5, p0, Lcom/android/calendar/event/s1;->L:Lcom/miui/calendar/event/travel/FlowLayout;

    .line 80
    .line 81
    invoke-virtual {v0, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    const v5, 0x7f0a00c2

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Landroid/widget/TextView;

    .line 93
    .line 94
    iget-object v3, v3, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stationName:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Lcom/android/calendar/event/s1$b;

    .line 100
    .line 101
    invoke-direct {v3, p0, v2}, Lcom/android/calendar/event/s1$b;-><init>(Lcom/android/calendar/event/s1;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/calendar/event/s1;->N:Ljava/util/List;

    .line 108
    .line 109
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, Lcom/android/calendar/event/s1;->L:Lcom/miui/calendar/event/travel/FlowLayout;

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    add-int/lit8 v2, v2, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    return-void

    .line 121
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->p0()V

    .line 122
    .line 123
    .line 124
    return-void
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
.method protected B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "Cal:D:EditTrainArriveStationFragment"

    .line 2
    .line 3
    const-string v0, "initFragment()"

    .line 4
    .line 5
    invoke-static {p3, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/android/calendar/event/s1;->J:Landroid/view/View;

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    const p3, 0x7f0d00ac

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/calendar/event/s1;->J:Landroid/view/View;

    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/s1;->j0()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/calendar/event/s1;->J:Landroid/view/View;

    .line 26
    .line 27
    return-object p1
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

.method public D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected F()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()Lcom/android/calendar/common/event/schema/Event;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/TrainEvent;-><init>()V

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
.end method

.method public J(I)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/android/calendar/event/s1;->V:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/android/calendar/event/s1;->O:I

    .line 11
    .line 12
    const/4 v4, -0x1

    .line 13
    if-eq v0, v4, :cond_0

    .line 14
    .line 15
    const v0, 0x7f0a005b

    .line 16
    .line 17
    .line 18
    if-ne v0, p1, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 28
    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    const v0, 0x7f0a0061

    .line 32
    .line 33
    .line 34
    if-ne v0, p1, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    cmp-long v0, v4, v2

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/s1;->x(Z)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/calendar/event/s1;->M()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->N()V

    .line 54
    .line 55
    .line 56
    return v1

    .line 57
    :cond_2
    invoke-super {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;->J(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method protected M()V
    .locals 3

    .line 1
    const-string v0, "travel_train_arrive_station_saved"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "com.miui.calendar.event.train.UPDATED"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TrainEvent;->toJson()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "extra_content"

    .line 27
    .line 28
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/miui/calendar/util/f;->b(Landroid/content/Context;Landroid/content/Intent;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
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

.method public O(Z)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "onModelReady(): mModel.mId = "

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "Cal:D:EditTrainArriveStationFragment"

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 30
    .line 31
    check-cast p1, Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/calendar/event/s1;->q0()V

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

.method protected W()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, v0, Lcom/android/calendar/common/j;->a:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->W()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/calendar/event/t1;

    .line 19
    .line 20
    iget-wide v1, p0, Lcom/android/calendar/event/s1;->V:J

    .line 21
    .line 22
    new-instance v3, Lcom/android/calendar/event/s1$f;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/android/calendar/event/s1$f;-><init>(Lcom/android/calendar/event/s1;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/android/calendar/event/t1;-><init>(JLcom/android/calendar/event/t1$a;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/calendar/event/s1;->R:Lcom/android/calendar/event/t1;

    .line 31
    .line 32
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    new-array v2, v2, [Ljava/lang/Void;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    .line 39
    .line 40
    return-void
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

.method public X()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/android/calendar/event/s1$e;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/android/calendar/event/s1$e;-><init>(Lcom/android/calendar/event/s1;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p3, p1, p2, v0}, Lcom/miui/calendar/util/z0;->r(Landroid/content/Context;IILcom/miui/calendar/util/z0$h;)Z

    .line 12
    .line 13
    .line 14
    return-void
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

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/event/s1;->R:Lcom/android/calendar/event/t1;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    :cond_0
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

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/event/s1;->r0()V

    .line 5
    .line 6
    .line 7
    return-void
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

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/calendar/event/s1;->W:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "0"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/android/calendar/event/s1;->V:J

    .line 12
    .line 13
    const-wide/16 v2, -0x1

    .line 14
    .line 15
    cmp-long v0, v0, v2

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "1"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v0, "3"

    .line 23
    .line 24
    :goto_0
    const/4 v1, 0x2

    .line 25
    new-array v1, v1, [Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    const-string v3, "from"

    .line 29
    .line 30
    aput-object v3, v1, v2

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    aput-object v0, v1, v2

    .line 34
    .line 35
    const-string v0, "travel_train_arrive_station_display"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
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

.method public q0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/s1;->Q:Lcom/android/calendar/event/s1$g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/calendar/event/s1$g;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/calendar/event/s1$g;-><init>(Lcom/android/calendar/event/s1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/calendar/event/s1;->Q:Lcom/android/calendar/event/s1$g;

    .line 11
    .line 12
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public r0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/s1;->Q:Lcom/android/calendar/event/s1$g;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/calendar/event/s1;->Q:Lcom/android/calendar/event/s1$g;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/s1;->P:Ltc/a;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v0, "Cal:D:EditTrainArriveStationFragment"

    .line 17
    .line 18
    const-string v2, "stop query arrive station data"

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/calendar/event/s1;->P:Ltc/a;

    .line 24
    .line 25
    invoke-interface {v0}, Ltc/a;->cancel()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/calendar/event/s1;->P:Ltc/a;

    .line 29
    .line 30
    :cond_1
    return-void
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

.method public x(Z)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/s1;->T:Ljava/util/List;

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    iget p1, p0, Lcom/android/calendar/event/s1;->O:I

    .line 20
    .line 21
    if-ltz p1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/android/calendar/event/s1;->T:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ge p1, v1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/calendar/event/s1;->T:Ljava/util/List;

    .line 32
    .line 33
    iget v0, p0, Lcom/android/calendar/event/s1;->O:I

    .line 34
    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 42
    .line 43
    iget-object v1, p1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stationName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/TrainEvent;->setArrStation(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 49
    .line 50
    iget-object v1, p1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->stationCode:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/TrainEvent;->setArrStationCode(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 56
    .line 57
    iget-object v1, p1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->arriveDate:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->setArrDate(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 63
    .line 64
    iget-object v1, p1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->arriveTime:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->setArrTime(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 70
    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "yyyy-MM-dd HH:mm"

    .line 76
    .line 77
    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 78
    .line 79
    .line 80
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object v2, p1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->arriveDate:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v2, " "

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object p1, p1, Lcom/miui/calendar/event/travel/TrainArriveStationSchema$StationSchema;->arriveTime:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v1

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 127
    .line 128
    const/4 v1, 0x4

    .line 129
    iget-object p1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepCity()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    iget-object p1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getDepStation()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iget-object p1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrCity()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    iget-object p1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getArrStation()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    iget-object p1, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/TrainEvent;->getTrainNum()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-static/range {v0 .. v6}, Lx3/b;->d(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/android/calendar/event/s1;->U:Lcom/android/calendar/common/event/schema/TrainEvent;

    .line 164
    .line 165
    invoke-virtual {v0, p1}, Lcom/android/calendar/common/event/schema/Event;->setTitle(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const/4 p1, 0x1

    .line 169
    return p1

    .line 170
    :cond_2
    :goto_1
    return v0
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
