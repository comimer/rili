.class Lcom/android/calendar/event/i$a;
.super Ljava/lang/Object;
.source "EditEventAlarmHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/i;->f(ZLcom/android/calendar/event/i$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/android/calendar/event/i;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/i;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/event/i$a;->a:Ljava/util/List;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/android/calendar/event/i$a;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 1
    if-ltz p2, :cond_4

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gt p1, p2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->a:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Integer;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    if-eq p1, p2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/calendar/event/i;->c(Lcom/android/calendar/event/i;)Lcom/android/calendar/common/event/schema/Event;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 37
    .line 38
    invoke-static {p2}, Lcom/android/calendar/event/i;->e(Lcom/android/calendar/event/i;)Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/android/calendar/event/i;->b(Lcom/android/calendar/event/i;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/android/calendar/event/i;->c(Lcom/android/calendar/event/i;)Lcom/android/calendar/common/event/schema/Event;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p1, p2}, Lcom/android/calendar/event/e0;->g(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/android/calendar/event/i;->a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/android/calendar/event/i;->a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1}, Lcom/android/calendar/event/i$c;->c()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Lcom/android/calendar/event/j;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/android/calendar/event/i;->b(Lcom/android/calendar/event/i;)Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Lcom/android/calendar/event/j;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/android/calendar/event/i;->c(Lcom/android/calendar/event/i;)Lcom/android/calendar/common/event/schema/Event;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-boolean p2, p0, Lcom/android/calendar/event/i$a;->b:Z

    .line 96
    .line 97
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/android/calendar/event/i;->c(Lcom/android/calendar/event/i;)Lcom/android/calendar/common/event/schema/Event;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/android/calendar/event/i;->d(Lcom/android/calendar/event/i;)Lcom/android/calendar/common/event/schema/Event;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const/4 v3, 0x1

    .line 113
    const/4 v4, 0x0

    .line 114
    new-instance v5, Lcom/android/calendar/event/i$a$a;

    .line 115
    .line 116
    invoke-direct {v5, p0}, Lcom/android/calendar/event/i$a$a;-><init>(Lcom/android/calendar/event/i$a;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/event/j;->p(Lcom/android/calendar/common/event/schema/Event;Lcom/android/calendar/common/event/schema/Event;IZLjava/lang/Runnable;)Z

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_0
    return-void

    .line 123
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/android/calendar/event/i;->a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    iget-object p1, p0, Lcom/android/calendar/event/i$a;->c:Lcom/android/calendar/event/i;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/android/calendar/event/i;->a(Lcom/android/calendar/event/i;)Lcom/android/calendar/event/i$c;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-interface {p1}, Lcom/android/calendar/event/i$c;->a()V

    .line 138
    .line 139
    .line 140
    :cond_5
    return-void
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
