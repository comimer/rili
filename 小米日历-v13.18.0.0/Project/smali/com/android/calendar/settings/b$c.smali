.class Lcom/android/calendar/settings/b$c;
.super Ljava/lang/Object;
.source "CalendarSettingsFragment.java"

# interfaces
.implements Lcom/miui/calendar/util/DaysOffUtils$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/settings/b;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/settings/b;


# direct methods
.method constructor <init>(Lcom/android/calendar/settings/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/settings/b$c;->a:Lcom/android/calendar/settings/b;

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
.method public a(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/b$c;->a:Lcom/android/calendar/settings/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/calendar/settings/b;->J(Lcom/android/calendar/settings/b;Z)Z

    .line 5
    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const v0, 0x7f120547

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    const-string v1, "daysoff_manual_update_time"

    .line 27
    .line 28
    const-wide/16 v2, 0x3e8

    .line 29
    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const v0, 0x7f120549

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/android/calendar/settings/b$c;->a:Lcom/android/calendar/settings/b;

    .line 47
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v4

    .line 52
    div-long/2addr v4, v2

    .line 53
    long-to-int v0, v4

    .line 54
    invoke-static {p1, v0}, Lcom/android/calendar/settings/b;->L(Lcom/android/calendar/settings/b;I)I

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/android/calendar/settings/b$c;->a:Lcom/android/calendar/settings/b;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/android/calendar/settings/b;->K(Lcom/android/calendar/settings/b;)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {p1, v1, v0}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x2

    .line 76
    if-ne p1, v0, :cond_2

    .line 77
    .line 78
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const v0, 0x7f120544

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v0}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/calendar/settings/b$c;->a:Lcom/android/calendar/settings/b;

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    div-long/2addr v4, v2

    .line 99
    long-to-int v0, v4

    .line 100
    invoke-static {p1, v0}, Lcom/android/calendar/settings/b;->L(Lcom/android/calendar/settings/b;I)I

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/android/calendar/settings/b$c;->a:Lcom/android/calendar/settings/b;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/android/calendar/settings/b;->K(Lcom/android/calendar/settings/b;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-static {p1, v1, v0}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_0
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
