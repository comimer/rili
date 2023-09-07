.class Le6/c$d;
.super Landroid/content/BroadcastReceiver;
.source "SdkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le6/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Le6/c;


# direct methods
.method constructor <init>(Le6/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le6/c$d;->a:Le6/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string p1, "SdkManager"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object p2, p0, Le6/c$d;->a:Le6/c;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-static {p2, v0, v1}, Le6/c;->l(Le6/c;J)J

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Le6/c$d;->a:Le6/c;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-static {p2, v0}, Le6/c;->n(Le6/c;Z)Z

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Le6/c$d;->a:Le6/c;

    .line 34
    .line 35
    invoke-static {p2}, Le6/c;->g(Le6/c;)Lg6/a;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    iget-object p2, p0, Le6/c$d;->a:Le6/c;

    .line 42
    .line 43
    invoke-static {p2}, Le6/c;->o(Le6/c;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    int-to-long v0, v0

    .line 48
    invoke-static {p2, v0, v1}, Le6/c;->q(Le6/c;J)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p2, p0, Le6/c$d;->a:Le6/c;

    .line 53
    .line 54
    invoke-static {p2}, Le6/c;->c(Le6/c;)Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    iget-object v0, p0, Le6/c$d;->a:Le6/c;

    .line 59
    .line 60
    invoke-static {v0}, Le6/c;->r(Le6/c;)Landroid/content/BroadcastReceiver;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    .line 66
    .line 67
    const-string p2, "pending dex is null, unregister"

    .line 68
    .line 69
    invoke-static {p1, p2}, Lf6/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 74
    .line 75
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_3

    .line 80
    .line 81
    iget-object p2, p0, Le6/c$d;->a:Le6/c;

    .line 82
    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-static {p2, v0}, Le6/c;->n(Le6/c;Z)Z

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v0, "screen off : "

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Le6/c$d;->a:Le6/c;

    .line 98
    .line 99
    invoke-static {v0}, Le6/c;->m(Le6/c;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {p1, p2}, Lf6/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception p2

    .line 115
    const-string v0, "mScreenReceiver onReceive e"

    .line 116
    .line 117
    invoke-static {p1, v0, p2}, Lf6/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void
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
