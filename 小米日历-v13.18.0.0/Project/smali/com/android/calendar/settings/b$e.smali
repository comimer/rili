.class Lcom/android/calendar/settings/b$e;
.super Ljava/lang/Object;
.source "CalendarSettingsFragment.java"

# interfaces
.implements Lh4/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/settings/b;->U()V
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
    iput-object p1, p0, Lcom/android/calendar/settings/b$e;->a:Lcom/android/calendar/settings/b;

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
.method public a(Lh4/g;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 2
    .line 3
    .line 4
    mul-int/lit8 p2, p2, 0x3c

    .line 5
    .line 6
    add-int/2addr p2, p3

    .line 7
    iget-object p1, p0, Lcom/android/calendar/settings/b$e;->a:Lcom/android/calendar/settings/b;

    .line 8
    .line 9
    invoke-static {p1, p2}, Lcom/android/calendar/settings/b;->O(Lcom/android/calendar/settings/b;I)I

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string p3, "preferences_default_allday_reminder_minute"

    .line 21
    .line 22
    invoke-static {p1, p3, p2}, Lb2/a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/calendar/settings/b$e;->a:Lcom/android/calendar/settings/b;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/calendar/settings/b;->E:Lmiuix/preference/TextPreference;

    .line 28
    .line 29
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    iget-object p3, p0, Lcom/android/calendar/settings/b$e;->a:Lcom/android/calendar/settings/b;

    .line 38
    .line 39
    invoke-static {p3}, Lcom/android/calendar/settings/b;->N(Lcom/android/calendar/settings/b;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    invoke-static {p2, p3}, Lcom/miui/calendar/util/s0;->n(Landroid/content/Context;I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void
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
