.class Lcom/android/calendar/homepage/l0$o;
.super Ljava/lang/Object;
.source "EventsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "o"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/l0;


# direct methods
.method private constructor <init>(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0$o;-><init>(Lcom/android/calendar/homepage/l0;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->j(Lcom/android/calendar/homepage/l0;)Lcom/miui/calendar/util/c1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/miui/calendar/util/c1;->f()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->k(Lcom/android/calendar/homepage/l0;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->m(Lcom/android/calendar/homepage/l0;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v0, v2}, Lcom/android/calendar/homepage/l0;->l(Lcom/android/calendar/homepage/l0;I)I

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->q(Lcom/android/calendar/homepage/l0;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v0, v2}, Lcom/android/calendar/homepage/l0;->o(Lcom/android/calendar/homepage/l0;I)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->r(Lcom/android/calendar/homepage/l0;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->s(Lcom/android/calendar/homepage/l0;I)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->t(Lcom/android/calendar/homepage/l0;Z)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->u(Lcom/android/calendar/homepage/l0;Z)Z

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->v(Lcom/android/calendar/homepage/l0;)Landroid/os/Handler;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$o;->a:Lcom/android/calendar/homepage/l0;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

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
