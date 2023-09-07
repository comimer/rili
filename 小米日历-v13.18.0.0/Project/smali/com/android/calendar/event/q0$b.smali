.class public final Lcom/android/calendar/event/q0$b;
.super Lh4/g$d;
.source "NewEditAnniversaryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/q0;->q0(Ljava/util/Calendar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/android/calendar/event/q0$b",
        "Lh4/g$d;",
        "",
        "rawTimeText",
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
.field final synthetic a:Lcom/android/calendar/event/q0;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q0$b;->a:Lcom/android/calendar/event/q0;

    .line 2
    .line 3
    invoke-direct {p0}, Lh4/g$d;-><init>()V

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


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "rawTimeText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/calendar/event/q0$b;->a:Lcom/android/calendar/event/q0;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/calendar/event/q0$b;->a:Lcom/android/calendar/event/q0;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/android/calendar/event/q0;->i0(Lcom/android/calendar/event/q0;)Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v1, v2}, Lcom/android/calendar/common/Utils;->K(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/calendar/event/q0$b;->a:Lcom/android/calendar/event/q0;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/android/calendar/event/q0;->j0(Lcom/android/calendar/event/q0;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const-string v3, "mContext.getString(R.str\u2026reminderDay, rawTimeText)"

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    const/4 v5, 0x2

    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/calendar/event/q0$b;->a:Lcom/android/calendar/event/q0;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/android/calendar/event/q0;->i0(Lcom/android/calendar/event/q0;)Ljava/util/Calendar;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v6, "null cannot be cast to non-null type java.util.Calendar"

    .line 49
    .line 50
    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    check-cast v1, Ljava/util/Calendar;

    .line 54
    .line 55
    const/4 v6, 0x5

    .line 56
    const/4 v7, -0x3

    .line 57
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 58
    .line 59
    .line 60
    iget-object v6, p0, Lcom/android/calendar/event/q0$b;->a:Lcom/android/calendar/event/q0;

    .line 61
    .line 62
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-static {v6, v1, v2}, Lcom/android/calendar/common/Utils;->K(Landroid/content/Context;Ljava/util/Calendar;Z)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v6, p0, Lcom/android/calendar/event/q0$b;->a:Lcom/android/calendar/event/q0;

    .line 71
    .line 72
    iget-object v6, v6, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 73
    .line 74
    const v7, 0x7f1201a6

    .line 75
    .line 76
    .line 77
    const/4 v8, 0x3

    .line 78
    new-array v8, v8, [Ljava/lang/Object;

    .line 79
    .line 80
    aput-object v1, v8, v2

    .line 81
    .line 82
    aput-object v0, v8, v4

    .line 83
    .line 84
    aput-object p1, v8, v5

    .line 85
    .line 86
    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/q0$b;->a:Lcom/android/calendar/event/q0;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 97
    .line 98
    const v6, 0x7f1201a4

    .line 99
    .line 100
    .line 101
    new-array v5, v5, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v0, v5, v2

    .line 104
    .line 105
    aput-object p1, v5, v4

    .line 106
    .line 107
    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object p1
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
