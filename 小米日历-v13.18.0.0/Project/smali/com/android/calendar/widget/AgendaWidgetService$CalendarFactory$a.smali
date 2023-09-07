.class Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;
.super Ljava/lang/Object;
.source "AgendaWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->n(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic d:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;


# direct methods
.method constructor <init>(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;ILjava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->d:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->c:Landroid/content/BroadcastReceiver$PendingResult;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
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


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->d:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->a:I

    .line 10
    .line 11
    invoke-static {}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->b()Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->d:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->c(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->d:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->d:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->d()Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->d:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 53
    .line 54
    invoke-static {}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->d()Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->e(Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-static {v1, v2}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->f(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;I)I

    .line 77
    .line 78
    .line 79
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->d:Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;->a(Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception v1

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw v1

    .line 93
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/widget/AgendaWidgetService$CalendarFactory$a;->c:Landroid/content/BroadcastReceiver$PendingResult;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 96
    .line 97
    .line 98
    return-void
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
