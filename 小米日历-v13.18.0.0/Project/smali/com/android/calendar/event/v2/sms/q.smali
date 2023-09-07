.class public final Lcom/android/calendar/event/v2/sms/q;
.super Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;
.source "MovieEventInfoFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment<",
        "Lcom/android/calendar/common/event/schema/MovieEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0014J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0014J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u0002H\u0014J\u0008\u0010\u000f\u001a\u00020\u0005H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0014J\u0008\u0010\u0013\u001a\u00020\u0012H\u0014J\u0016\u0010\u0017\u001a\u00020\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001aR\u0016\u0010!\u001a\u00020\u00188\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001aR\u0016\u0010$\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0014\u0010(\u001a\u00020%8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lcom/android/calendar/event/v2/sms/q;",
        "Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;",
        "Lcom/android/calendar/common/event/schema/MovieEvent;",
        "Landroid/content/Intent;",
        "intent",
        "Lkotlin/u;",
        "h0",
        "Landroid/view/View;",
        "rootView",
        "d0",
        "",
        "eventId",
        "v0",
        "event",
        "w0",
        "s0",
        "",
        "U",
        "",
        "e0",
        "",
        "Lw3/b;",
        "items",
        "O",
        "Landroid/widget/TextView;",
        "z",
        "Landroid/widget/TextView;",
        "mMovieName",
        "D",
        "mTitleName",
        "E",
        "mMovieTime",
        "F",
        "mCinemaLoc",
        "G",
        "Lcom/android/calendar/common/event/schema/MovieEvent;",
        "mMovieEvent",
        "",
        "V",
        "()Ljava/lang/String;",
        "deleteToast",
        "<init>",
        "()V",
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
.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Lcom/android/calendar/common/event/schema/MovieEvent;

.field public H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/widget/TextView;


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
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->H:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/MovieEvent;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public O(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lw3/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "items"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCodeName1()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCodeNumber1()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    :cond_0
    new-instance v0, Lw3/b;

    .line 31
    .line 32
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCodeName1()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCodeNumber1()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lw3/b;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCodeName2()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCodeNumber2()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    :cond_2
    new-instance v0, Lw3/b;

    .line 79
    .line 80
    invoke-direct {v0}, Lw3/b;-><init>()V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCodeName2()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, v0, Lw3/b;->b:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCodeNumber2()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, v0, Lw3/b;->d:Ljava/lang/String;

    .line 98
    .line 99
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :cond_3
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->O(Ljava/util/List;)V

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

.method protected U()I
    .locals 1

    const v0, 0x7f0d00eb

    return v0
.end method

.method protected V()Ljava/lang/String;
    .locals 2

    .line 1
    const v0, 0x7f12038a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getString(R.string.movie\u2026vent_delete_successfully)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
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

.method public d0(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "rootView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a0147

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 14
    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->D:Landroid/widget/TextView;

    .line 21
    .line 22
    const v0, 0x7f0a040e

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    check-cast v0, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->z:Landroid/widget/TextView;

    .line 35
    .line 36
    const v0, 0x7f0a040f

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    check-cast v0, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->E:Landroid/widget/TextView;

    .line 49
    .line 50
    const v0, 0x7f0a0176

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    check-cast p1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/q;->F:Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/calendar/event/v2/sms/q;->z:Landroid/widget/TextView;

    .line 65
    .line 66
    if-nez p1, :cond_0

    .line 67
    .line 68
    const-string p1, "mMovieName"

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    :cond_0
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 76
    .line 77
    .line 78
    return-void
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

.method protected e0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/MovieEvent;->getStartTime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected h0(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 7
    .line 8
    const-string v1, "platform"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setPlatform(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 18
    .line 19
    const-string v1, "code_name_1"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setCodeName1(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 29
    .line 30
    const-string v1, "code_number_1"

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setCodeNumber1(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 40
    .line 41
    const-string v1, "code_name_2"

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setCodeName2(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 51
    .line 52
    const-string v1, "code_number_2"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setCodeNumber2(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 62
    .line 63
    const-string v1, "movie_name"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setMovieName(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 73
    .line 74
    const-string v1, "cinema"

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setCinema(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 84
    .line 85
    const-string v1, "screenings"

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setScreenings(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 95
    .line 96
    const-string v1, "seat"

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Lcom/android/calendar/common/event/schema/MovieEvent;->setSeat(Ljava/lang/String;)V

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

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/calendar/event/v2/sms/q;->i()V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/Event;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/calendar/common/event/schema/MovieEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/q;->w0(Lcom/android/calendar/common/event/schema/MovieEvent;)V

    return-void
.end method

.method public bridge synthetic onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/android/calendar/common/event/schema/MovieEvent;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/v2/sms/q;->w0(Lcom/android/calendar/common/event/schema/MovieEvent;)V

    return-void
.end method

.method public s0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->D:Landroid/widget/TextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mTitleName"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/MovieEvent;->getPlatform()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, ""

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v2, v3

    .line 24
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->z:Landroid/widget/TextView;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    const-string v0, "mMovieName"

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/MovieEvent;->getMovieName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    move-object v3, v2

    .line 46
    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/calendar/event/v2/sms/q;->E:Landroid/widget/TextView;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    const-string v0, "mMovieTime"

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object v0, v1

    .line 59
    :cond_4
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/MovieEvent;->getScreenings()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/MovieEvent;->getCinema()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const/16 v2, 0x20

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/MovieEvent;->getSeat()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v2, p0, Lcom/android/calendar/event/v2/sms/q;->F:Landroid/widget/TextView;

    .line 101
    .line 102
    if-nez v2, :cond_5

    .line 103
    .line 104
    const-string v2, "mCinemaLoc"

    .line 105
    .line 106
    invoke-static {v2}, Lkotlin/jvm/internal/r;->x(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_5
    move-object v1, v2

    .line 111
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

.method public bridge synthetic u(J)Lcom/android/calendar/common/event/schema/Event;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/v2/sms/q;->v0(J)Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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

.method protected v0(J)Lcom/android/calendar/common/event/schema/MovieEvent;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x11

    .line 6
    .line 7
    invoke-static {v0, p1, p2, v1}, Ls1/g;->b(Landroid/content/Context;JI)Lcom/android/calendar/common/event/schema/SmsEvent;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 12
    .line 13
    return-object p1
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

.method protected w0(Lcom/android/calendar/common/event/schema/MovieEvent;)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/event/v2/sms/q;->G:Lcom/android/calendar/common/event/schema/MovieEvent;

    .line 7
    .line 8
    invoke-super {p0, p1}, Lcom/android/calendar/event/v2/sms/BaseSmsEventInfoFragment;->onEventLoad(Lcom/android/calendar/common/event/schema/SmsEvent;)V

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
