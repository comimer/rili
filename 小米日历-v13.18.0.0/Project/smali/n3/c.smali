.class public abstract Ln3/c;
.super Ljava/lang/Object;
.source "BaseNotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/calendar/alerts/entities/BaseAlert<",
        "+",
        "Lcom/android/calendar/common/event/schema/Event;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/miui/calendar/alerts/entities/BaseAlert;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ln3/c;->c:I

    .line 6
    .line 7
    iput-object p2, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ln3/c;->b:Landroid/content/Context;

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

.method private c(Lm3/a$b;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lm3/a$b;->n(Landroid/net/Uri;)Lm3/a$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Ln3/c;->l()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lo1/g;->c(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Lm3/a$b;->m(Z)Lm3/a$b;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lm3/a$b;->c(Z)Lm3/a$b;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 21
    .line 22
    iget-object v2, p0, Ln3/c;->b:Landroid/content/Context;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getDeleteIntent(Landroid/content/Context;ZZ)Landroid/app/PendingIntent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Lm3/a$b;->g(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Ln3/c;->b:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v2, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 35
    .line 36
    invoke-virtual {v2, v1, v0, v3}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getDeleteIntent(Landroid/content/Context;ZZ)Landroid/app/PendingIntent;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const v4, 0x7f12012b

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v4, v2, v0}, Lm3/a$a;->e(Landroid/content/Context;ILandroid/app/PendingIntent;Z)Lm3/a$a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lm3/a$b;->a(Lm3/a$a;)Lm3/a$b;

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 51
    .line 52
    iget-object v1, p0, Ln3/c;->b:Landroid/content/Context;

    .line 53
    .line 54
    invoke-virtual {v0, v1, v3}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getContentIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lm3/a$b;->d(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 59
    .line 60
    .line 61
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method private e(Lm3/a$b;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lm3/a$b;->n(Landroid/net/Uri;)Lm3/a$b;

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lm3/a$b;->m(Z)Lm3/a$b;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1}, Lm3/a$b;->c(Z)Lm3/a$b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lm3/a$b;->h(Z)Lm3/a$b;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Ln3/c;->b:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 19
    .line 20
    invoke-static {v1, v2}, Ln3/c;->i(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)Landroid/app/PendingIntent;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const v3, 0x7f1200ba

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v3, v2, v0}, Lm3/a$a;->e(Landroid/content/Context;ILandroid/app/PendingIntent;Z)Lm3/a$a;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p1, v1}, Lm3/a$b;->a(Lm3/a$a;)Lm3/a$b;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 35
    .line 36
    iget-object v2, p0, Ln3/c;->b:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1, v2, v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getContentIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lm3/a$b;->d(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 43
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

.method private f(Lm3/a$b;ZZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ln3/c;->l()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lo1/g;->f(Landroid/content/Context;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1, v0}, Lm3/a$b;->n(Landroid/net/Uri;)Lm3/a$b;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ln3/c;->l()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lo1/g;->d(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lm3/a$b;->m(Z)Lm3/a$b;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p3}, Lm3/a$b;->c(Z)Lm3/a$b;

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Lm3/a$b;->h(Z)Lm3/a$b;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ln3/c;->l()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->n0(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Ln3/c;->l()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->m0(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    const/16 v1, 0x2710

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lm3/a$b;->i(I)Lm3/a$b;

    .line 53
    .line 54
    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    iget-object p3, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 59
    .line 60
    iget-object v2, p0, Ln3/c;->b:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {p3, v2, v0, v1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getDeleteIntent(Landroid/content/Context;ZZ)Landroid/app/PendingIntent;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-virtual {p1, p3}, Lm3/a$b;->g(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object p3, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 70
    .line 71
    iget-object v2, p0, Ln3/c;->b:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {p3, v2, v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getContentIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p1, p3}, Lm3/a$b;->d(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 78
    .line 79
    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    iget-object p2, p0, Ln3/c;->b:Landroid/content/Context;

    .line 83
    .line 84
    const p3, 0x7f1204f3

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 88
    .line 89
    invoke-static {p2, v0}, Ln3/c;->j(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)Landroid/app/PendingIntent;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p2, p3, v0, v1}, Lm3/a$a;->e(Landroid/content/Context;ILandroid/app/PendingIntent;Z)Lm3/a$a;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Lm3/a$b;->a(Lm3/a$a;)Lm3/a$b;

    .line 98
    .line 99
    .line 100
    :cond_2
    return-void
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method

.method private g(Lm3/a$b;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lm3/a$b;->n(Landroid/net/Uri;)Lm3/a$b;

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lm3/a$b;->m(Z)Lm3/a$b;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1}, Lm3/a$b;->c(Z)Lm3/a$b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lm3/a$b;->h(Z)Lm3/a$b;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 17
    .line 18
    iget-object v3, p0, Ln3/c;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v2, v3, v1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getContentIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1, v2}, Lm3/a$b;->d(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 28
    .line 29
    iget-object v3, p0, Ln3/c;->b:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v2, v3, v1, v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getDeleteIntent(Landroid/content/Context;ZZ)Landroid/app/PendingIntent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lm3/a$b;->g(Landroid/app/PendingIntent;)Lm3/a$b;

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

.method private h(Lm3/a$b;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lm3/a$b;->n(Landroid/net/Uri;)Lm3/a$b;

    .line 3
    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lm3/a$b;->m(Z)Lm3/a$b;

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, v1}, Lm3/a$b;->c(Z)Lm3/a$b;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lm3/a$b;->h(Z)Lm3/a$b;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Ln3/c;->l()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->n0(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Ln3/c;->l()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->m0(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    const/16 v2, 0x2710

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Lm3/a$b;->i(I)Lm3/a$b;

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v2, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 42
    .line 43
    iget-object v3, p0, Ln3/c;->b:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v2, v3, v1, v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getDeleteIntent(Landroid/content/Context;ZZ)Landroid/app/PendingIntent;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p1, v2}, Lm3/a$b;->g(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 53
    .line 54
    iget-object v3, p0, Ln3/c;->b:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v2, v3, v1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getContentIntent(Landroid/content/Context;Z)Landroid/app/PendingIntent;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1, v1}, Lm3/a$b;->d(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Ln3/c;->b:Landroid/content/Context;

    .line 64
    .line 65
    const v2, 0x7f1204f3

    .line 66
    .line 67
    .line 68
    iget-object v3, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 69
    .line 70
    invoke-static {v1, v3}, Ln3/c;->j(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)Landroid/app/PendingIntent;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-static {v1, v2, v3, v0}, Lm3/a$a;->e(Landroid/content/Context;ILandroid/app/PendingIntent;Z)Lm3/a$a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lm3/a$b;->a(Lm3/a$a;)Lm3/a$b;

    .line 79
    .line 80
    .line 81
    return-void
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

.method private static i(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)Landroid/app/PendingIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/calendar/alerts/entities/BaseAlert<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.calendar.CANCEL_REMINDER_LATER"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "calendar://"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-class v1, Lcom/android/calendar/alerts/AlertLaterReceiver;

    .line 37
    .line 38
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v1, "extra_key_alert"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    const/high16 v1, 0xc000000

    .line 48
    .line 49
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
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

.method private static j(Landroid/content/Context;Lcom/miui/calendar/alerts/entities/BaseAlert;)Landroid/app/PendingIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/miui/calendar/alerts/entities/BaseAlert<",
            "+",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.calendar.SET_REMINDER_LATER"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "calendar://"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const-class v1, Lcom/android/calendar/alerts/AlertLaterReceiver;

    .line 37
    .line 38
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v1, "extra_key_alert"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    const/high16 v1, 0xc000000

    .line 48
    .line 49
    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
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


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/c;->e:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 10
    .line 11
    iget-object v1, p0, Ln3/c;->b:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getSummaryText(Landroid/content/Context;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Ln3/c;->e:Ljava/lang/String;

    .line 19
    .line 20
    :goto_0
    return-object v0
    .line 21
    .line 22
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Ln3/c;->d:Ljava/lang/String;

    .line 17
    .line 18
    :goto_0
    return-object v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method protected d(Lm3/a$b;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ln3/c;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lm3/a$b;->f(Ljava/lang/String;)Lm3/a$b;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ln3/c;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Lm3/a$b;->e(Ljava/lang/String;)Lm3/a$b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ln3/c;->k()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v1, v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    invoke-virtual {p0}, Ln3/c;->k()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ne v0, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x3

    .line 31
    invoke-virtual {p0}, Ln3/c;->k()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v0, v1, :cond_1

    .line 36
    .line 37
    invoke-direct {p0, p1}, Ln3/c;->h(Lm3/a$b;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_1
    const/4 v0, 0x2

    .line 43
    iget v1, p0, Ln3/c;->c:I

    .line 44
    .line 45
    if-ne v0, v1, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ln3/c;->e(Lm3/a$b;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_2

    .line 51
    .line 52
    :cond_2
    invoke-direct {p0, p1}, Ln3/c;->g(Lm3/a$b;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_3
    :goto_0
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 58
    .line 59
    iget-object v2, p0, Ln3/c;->b:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->isNeedAlarm(Landroid/content/Context;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_8

    .line 66
    .line 67
    iget-object v0, p0, Ln3/c;->b:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/calendar/settings/j;->n(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 77
    .line 78
    invoke-virtual {p0}, Ln3/c;->l()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v0, v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->needPopup(Landroid/content/Context;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    const-string v2, "Cal:D:BaseNotificationAdapter"

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v4, "needPopup true, type: "

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventType()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 118
    .line 119
    iget-object v2, p0, Ln3/c;->b:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getFullscreenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v0}, Lm3/a$b;->j(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v3}, Lm3/a$b;->k(Z)Lm3/a$b;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0}, Ln3/c;->k()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-ne v1, v0, :cond_5

    .line 136
    .line 137
    move v3, v1

    .line 138
    :cond_5
    invoke-direct {p0, p1, v3, v1}, Ln3/c;->f(Lm3/a$b;ZZ)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v4, "needPopup true, false: "

    .line 148
    .line 149
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 153
    .line 154
    invoke-virtual {v4}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getEventType()I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ln3/c;->k()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ne v1, v0, :cond_7

    .line 173
    .line 174
    move v3, v1

    .line 175
    :cond_7
    invoke-direct {p0, p1, v3, v1}, Ln3/c;->f(Lm3/a$b;ZZ)V

    .line 176
    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_8
    :goto_1
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 180
    .line 181
    iget-object v2, p0, Ln3/c;->b:Landroid/content/Context;

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getFullscreenIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {p1, v0}, Lm3/a$b;->j(Landroid/app/PendingIntent;)Lm3/a$b;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1}, Lm3/a$b;->k(Z)Lm3/a$b;

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, p1}, Ln3/c;->c(Lm3/a$b;)V

    .line 194
    .line 195
    .line 196
    :goto_2
    iget-object v0, p0, Ln3/c;->a:Lcom/miui/calendar/alerts/entities/BaseAlert;

    .line 197
    .line 198
    invoke-virtual {v0}, Lcom/miui/calendar/alerts/entities/BaseAlert;->getNotificationId()I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-virtual {p1, v0}, Lm3/a$b;->l(I)Lm3/a$b;

    .line 203
    .line 204
    .line 205
    return-void
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

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Ln3/c;->c:I

    .line 2
    .line 3
    return v0
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

.method public l()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/c;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
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

.method public m()Lm3/a;
    .locals 1

    .line 1
    new-instance v0, Lm3/a$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lm3/a$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ln3/c;->d(Lm3/a$b;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lm3/a$b;->b()Lm3/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

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

.method public n(I)V
    .locals 0

    .line 1
    iput p1, p0, Ln3/c;->c:I

    .line 2
    .line 3
    return-void
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
