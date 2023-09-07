.class Lcom/android/calendar/event/NewBaseEditFragment$h$a;
.super Ljava/lang/Object;
.source "NewBaseEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/NewBaseEditFragment$h;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/NewBaseEditFragment$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getAttendeeList()Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getUri()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    const v0, 0x7f12052e

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const v0, 0x7f12013a

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getUri()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 64
    .line 65
    iget v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->G:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 71
    .line 72
    iget v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->H:I

    .line 73
    .line 74
    :goto_0
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/android/calendar/event/NewBaseEditFragment;->M()V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v1, v0}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$h$a;->a:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment$h;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 99
    .line 100
    const/4 v1, 0x1

    .line 101
    const-string v2, "preference_defaultCalendar_migrated"

    .line 102
    .line 103
    invoke-static {v0, v2, v1}, Lb2/a;->l(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    return-void
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
