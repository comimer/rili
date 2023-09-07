.class public final Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;
.super Ljava/lang/Object;
.source "AgendaEventInfoFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0002H\u0016J0\u0010\u000c\u001a\u00020\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00022\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/widget/AdapterView;",
        "parent",
        "Lkotlin/u;",
        "onNothingSelected",
        "Landroid/view/View;",
        "view",
        "",
        "position",
        "",
        "id",
        "onItemSelected",
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
.field final synthetic a:Lcom/android/calendar/common/event/schema/AgendaEvent;

.field final synthetic b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/common/event/schema/AgendaEvent;Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static synthetic a(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->b(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    return-void
.end method

.method private static final b(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V
    .locals 8

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lkotlinx/coroutines/l0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/k0;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    new-instance v5, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2$onItemSelected$1$1$1;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v5, p0, v0, v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2$onItemSelected$1$1$1;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Landroidx/fragment/app/d;Lkotlin/coroutines/c;)V

    .line 26
    .line 27
    .line 28
    const/4 v6, 0x3

    .line 29
    const/4 v7, 0x0

    .line 30
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->d(Lkotlinx/coroutines/k0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lw7/p;ILjava/lang/Object;)Lkotlinx/coroutines/s1;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p0, v1}, Lcom/android/calendar/event/v2/AgendaEventInfoFragment;->v0(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;Lkotlinx/coroutines/s1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string v1, "Cal:D:AgendaEventInfoFragment"

    .line 40
    .line 41
    const-string v2, "change calendar onSuccess error"

    .line 42
    .line 43
    invoke-static {v1, v2, p0}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    :cond_0
    :goto_0
    return-void
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


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent;->getCalendars()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarId()J

    .line 26
    .line 27
    .line 28
    move-result-wide p2

    .line 29
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getCalendarId()J

    .line 30
    .line 31
    .line 32
    move-result-wide p4

    .line 33
    cmp-long p2, p2, p4

    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getCalendarId()J

    .line 45
    .line 46
    .line 47
    move-result-wide p3

    .line 48
    invoke-virtual {p2, p3, p4}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarId(J)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getOrganizer()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {p2, p3}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizer(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getAccountName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p2, p3}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountName(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/AgendaEvent$Calendar;->getAccountType()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p2, p1}, Lcom/android/calendar/common/event/schema/EventEx;->setAccountType(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->m()Lcom/android/calendar/event/j;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/4 p1, 0x1

    .line 97
    const/4 p2, 0x0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->a:Lcom/android/calendar/common/event/schema/AgendaEvent;

    .line 101
    .line 102
    iget-object p3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 103
    .line 104
    invoke-virtual {p3}, Lcom/android/calendar/event/v2/BaseEventInfoFragment;->t()Lcom/android/calendar/common/event/schema/Event;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const/4 v3, 0x3

    .line 109
    const/4 v4, 0x1

    .line 110
    iget-object p3, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 111
    .line 112
    new-instance v5, Lcom/android/calendar/event/v2/y;

    .line 113
    .line 114
    invoke-direct {v5, p3}, Lcom/android/calendar/event/v2/y;-><init>(Lcom/android/calendar/event/v2/AgendaEventInfoFragment;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/event/j;->p(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/event/schema/Event;IZLjava/lang/Runnable;)Z

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    if-ne p3, p1, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    move p1, p2

    .line 125
    :goto_0
    if-eqz p1, :cond_3

    .line 126
    .line 127
    iget-object p1, p0, Lcom/android/calendar/event/v2/AgendaEventInfoFragment$onEventLoad$2$3$2;->b:Lcom/android/calendar/event/v2/AgendaEventInfoFragment;

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    const p2, 0x7f12052d

    .line 137
    .line 138
    .line 139
    const/4 p3, 0x4

    .line 140
    const/4 p4, 0x0

    .line 141
    invoke-static {p1, p2, p4, p3, p4}, Lcom/miui/calendar/util/t0;->h(Landroid/content/Context;I[Ljava/lang/Object;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_1
    return-void
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
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
