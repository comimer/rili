.class Lcom/android/calendar/homepage/l0$k;
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
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/homepage/l0;


# direct methods
.method private constructor <init>(Lcom/android/calendar/homepage/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/homepage/l0;Lcom/android/calendar/homepage/l0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/calendar/homepage/l0$k;-><init>(Lcom/android/calendar/homepage/l0;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->M(Lcom/android/calendar/homepage/l0;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/android/calendar/homepage/l0;->R(Lcom/android/calendar/homepage/l0;)Landroid/widget/OverScroller;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v1, v2

    .line 25
    :goto_0
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->O(Lcom/android/calendar/homepage/l0;Z)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->M(Lcom/android/calendar/homepage/l0;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_5

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 37
    .line 38
    iget-boolean v1, v0, Lcom/android/calendar/homepage/l0;->c:Z

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->R(Lcom/android/calendar/homepage/l0;)Landroid/widget/OverScroller;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    iput v1, v0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->S(Lcom/android/calendar/homepage/l0;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 62
    .line 63
    iget v1, v0, Lcom/android/calendar/homepage/l0;->T0:I

    .line 64
    .line 65
    if-gez v1, :cond_2

    .line 66
    .line 67
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->W(Lcom/android/calendar/homepage/l0;)Landroid/widget/EdgeEffect;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/android/calendar/homepage/l0;->U(Lcom/android/calendar/homepage/l0;)F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    float-to-int v1, v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 82
    .line 83
    invoke-static {v0, v2}, Lcom/android/calendar/homepage/l0;->T(Lcom/android/calendar/homepage/l0;Z)Z

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->X(Lcom/android/calendar/homepage/l0;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-le v1, v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->Y(Lcom/android/calendar/homepage/l0;)Landroid/widget/EdgeEffect;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/android/calendar/homepage/l0;->U(Lcom/android/calendar/homepage/l0;)F

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    float-to-int v1, v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 110
    .line 111
    invoke-static {v0, v2}, Lcom/android/calendar/homepage/l0;->T(Lcom/android/calendar/homepage/l0;Z)Z

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->R(Lcom/android/calendar/homepage/l0;)Landroid/widget/OverScroller;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-static {v0, v1}, Lcom/android/calendar/homepage/l0;->V(Lcom/android/calendar/homepage/l0;F)F

    .line 125
    .line 126
    .line 127
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->Z(Lcom/android/calendar/homepage/l0;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 133
    .line 134
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->v(Lcom/android/calendar/homepage/l0;)Landroid/os/Handler;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 142
    .line 143
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/android/calendar/homepage/l0;->a0(Lcom/android/calendar/homepage/l0;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/calendar/homepage/l0$k;->a:Lcom/android/calendar/homepage/l0;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 155
    .line 156
    .line 157
    return-void
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
