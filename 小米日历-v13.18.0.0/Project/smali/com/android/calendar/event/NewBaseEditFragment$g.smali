.class public Lcom/android/calendar/event/NewBaseEditFragment$g;
.super Ljava/lang/Object;
.source "NewBaseEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/NewBaseEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/calendar/event/NewBaseEditFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/NewBaseEditFragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$g;->a:Ljava/lang/ref/WeakReference;

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


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$g;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/calendar/event/NewBaseEditFragment;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/calendar/event/NewBaseEditFragment$g;->a:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p2, p1, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, -0x1

    .line 25
    .line 26
    cmp-long p2, v0, v2

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    move p2, v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p2, 0x0

    .line 34
    :goto_0
    if-eqz p2, :cond_2

    .line 35
    .line 36
    iget-object p2, p1, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/android/calendar/event/k;->b(Landroid/content/Context;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    iget-object p2, p1, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 45
    .line 46
    new-instance v0, Lcom/android/calendar/event/NewBaseEditFragment$g$a;

    .line 47
    .line 48
    invoke-direct {v0, p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment$g$a;-><init>(Lcom/android/calendar/event/NewBaseEditFragment$g;Lcom/android/calendar/event/NewBaseEditFragment;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2, v0}, Lcom/android/calendar/event/k;->c(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    iget-object p2, p1, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 56
    .line 57
    invoke-virtual {p2, v0}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    .line 63
    .line 64
    .line 65
    :goto_1
    return-void
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
