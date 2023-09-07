.class Lcom/android/calendar/homepage/l0$b;
.super Ljava/lang/Object;
.source "EventsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/l0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$b;->a:Lcom/android/calendar/homepage/l0;

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
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$b;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->n(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$b;->a:Lcom/android/calendar/homepage/l0;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->n(Lcom/android/calendar/homepage/l0;)Lcom/android/calendar/homepage/l0$l;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lcom/android/calendar/homepage/l0$l;->a:Lcom/android/calendar/common/event/schema/Event;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/calendar/homepage/l0$b;->a:Lcom/android/calendar/homepage/l0;

    .line 20
    .line 21
    iget-object v3, v2, Lcom/android/calendar/homepage/l0;->R:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget v4, v2, Lcom/android/calendar/homepage/l0;->a0:I

    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v4, v2}, Lcom/miui/calendar/util/s0;->d(ILjava/util/TimeZone;)Ljava/util/Calendar;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v0, v3, v2}, Lcom/android/calendar/common/Utils;->O0(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;Ljava/util/List;Ljava/util/Calendar;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$b;->a:Lcom/android/calendar/homepage/l0;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->p(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$l;)Lcom/android/calendar/homepage/l0$l;

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$b;->a:Lcom/android/calendar/homepage/l0;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$b;->a:Lcom/android/calendar/homepage/l0;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/calendar/homepage/l0;->f:Landroid/content/Context;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    if-eq v0, v1, :cond_1

    .line 69
    .line 70
    new-instance v0, Lcom/miui/calendar/util/g$s0;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Lcom/miui/calendar/util/g$s0;-><init>(I)V

    .line 73
    .line 74
    .line 75
    invoke-static {v0}, Lcom/miui/calendar/util/g;->c(Lcom/miui/calendar/util/g$j;)V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
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
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
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
.end method
