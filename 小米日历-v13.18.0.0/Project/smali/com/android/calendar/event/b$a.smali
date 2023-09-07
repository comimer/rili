.class Lcom/android/calendar/event/b$a;
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
    iput-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

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
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/event/b;->k(Lcom/android/calendar/event/b;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/calendar/event/b;->l(Lcom/android/calendar/event/b;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/android/calendar/event/b;->m(Lcom/android/calendar/event/b;)Lcom/android/calendar/common/event/schema/Event;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 22
    .line 23
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/calendar/event/b;->n(Lcom/android/calendar/event/b;)Lcom/android/calendar/common/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/calendar/event/b;->n(Lcom/android/calendar/event/b;)Lcom/android/calendar/common/a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/android/calendar/common/a;->g()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    const-wide/16 v7, 0x0

    .line 47
    .line 48
    invoke-virtual/range {v1 .. v8}, Lcom/android/calendar/common/a;->n(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/android/calendar/event/b;->j(Lcom/android/calendar/event/b;)Ljava/lang/Runnable;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/android/calendar/event/b;->j(Lcom/android/calendar/event/b;)Ljava/lang/Runnable;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 66
    .line 67
    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/android/calendar/event/b;->m(Lcom/android/calendar/event/b;)Lcom/android/calendar/common/event/schema/Event;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/android/calendar/event/b;->o(Lcom/android/calendar/event/b;)Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p2, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 83
    .line 84
    invoke-static {p2}, Lcom/android/calendar/event/b;->m(Lcom/android/calendar/event/b;)Lcom/android/calendar/common/event/schema/Event;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    long-to-int p2, v0

    .line 93
    invoke-static {p1, p2}, Lcom/android/calendar/alerts/d;->c(Landroid/content/Context;I)V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/android/calendar/event/b;->p(Lcom/android/calendar/event/b;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_2

    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/android/calendar/event/b;->c(Lcom/android/calendar/event/b;)Ljava/lang/ref/WeakReference;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/app/Activity;

    .line 115
    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 119
    .line 120
    .line 121
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/event/b$a;->a:Lcom/android/calendar/event/b;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/android/calendar/event/b;->o(Lcom/android/calendar/event/b;)Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/miui/calendar/util/s;->e(Landroid/content/Context;)V

    .line 128
    .line 129
    .line 130
    return-void
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
