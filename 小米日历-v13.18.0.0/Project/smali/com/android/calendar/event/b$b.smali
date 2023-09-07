.class Lcom/android/calendar/event/b$b;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/b;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/event/b;->k(Lcom/android/calendar/event/b;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/calendar/event/b;->l(Lcom/android/calendar/event/b;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/calendar/event/b;->d(Lcom/android/calendar/event/b;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/calendar/event/b;->j(Lcom/android/calendar/event/b;)Ljava/lang/Runnable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/android/calendar/event/b;->j(Lcom/android/calendar/event/b;)Ljava/lang/Runnable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/calendar/event/b;->m(Lcom/android/calendar/event/b;)Lcom/android/calendar/common/event/schema/Event;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/android/calendar/event/b;->o(Lcom/android/calendar/event/b;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p2, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/android/calendar/event/b;->m(Lcom/android/calendar/event/b;)Lcom/android/calendar/common/event/schema/Event;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    long-to-int p2, v0

    .line 58
    invoke-static {p1, p2}, Lcom/android/calendar/alerts/d;->c(Landroid/content/Context;I)V

    .line 59
    .line 60
    .line 61
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/android/calendar/event/b;->p(Lcom/android/calendar/event/b;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/android/calendar/event/b;->c(Lcom/android/calendar/event/b;)Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/app/Activity;

    .line 80
    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/event/b$b;->a:Lcom/android/calendar/event/b;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/android/calendar/event/b;->o(Lcom/android/calendar/event/b;)Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/miui/calendar/util/s;->e(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
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
