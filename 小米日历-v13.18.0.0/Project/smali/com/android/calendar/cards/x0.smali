.class public Lcom/android/calendar/cards/x0;
.super Lcom/android/calendar/cards/b;
.source "HolidayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/x0$b;,
        Lcom/android/calendar/cards/x0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/android/calendar/cards/x0$b;",
        ">;"
    }
.end annotation


# instance fields
.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/calendar/holiday/model/HolidaySchema;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/miui/calendar/holiday/model/HolidayBriefSchema;",
            ">;"
        }
    .end annotation
.end field

.field public h:Z

.field i:Landroid/content/Context;

.field j:Lcom/android/calendar/cards/x0$b;


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 9
    .line 10
    new-instance p1, Lcom/android/calendar/cards/x0$b;

    .line 11
    .line 12
    invoke-direct {p1}, Lcom/android/calendar/cards/x0$b;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/android/calendar/cards/x0;->j:Lcom/android/calendar/cards/x0$b;

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private m()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/calendar/holiday/model/HolidaySchema;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/calendar/settings/j;->i(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "Cal:D:HolidayPresenter"

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {}, Lz3/d;->i()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v1, v3}, Lcom/miui/calendar/util/y;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v0}, Lz3/d;->h(Landroid/content/Context;)Lz3/d;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 42
    .line 43
    const/16 v6, 0xf

    .line 44
    .line 45
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    int-to-long v6, v1

    .line 50
    add-long/2addr v4, v6

    .line 51
    invoke-virtual {v0, v4, v5}, Lz3/d;->g(J)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ge v1, v4, :cond_3

    .line 61
    .line 62
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Lcom/miui/calendar/holiday/model/HolidaySchema;

    .line 67
    .line 68
    iget v4, v4, Lcom/miui/calendar/holiday/model/HolidaySchema;->hide:I

    .line 69
    .line 70
    if-ne v4, v3, :cond_0

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "doInBackground() "

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Lcom/miui/calendar/holiday/model/HolidaySchema;

    .line 87
    .line 88
    iget-object v5, v5, Lcom/miui/calendar/holiday/model/HolidaySchema;->name:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v5, " needn\'t show"

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v2, v4}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    add-int/lit8 v1, v1, -0x1

    .line 109
    .line 110
    :cond_0
    add-int/2addr v1, v3

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const-string v1, "doInBackground(): The current language does not match the language in the cache"

    .line 113
    .line 114
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {v1}, Lz3/d;->h(Landroid/content/Context;)Lz3/d;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v3}, Lz3/d;->o(Z)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    const-string v1, "doInBackground(): holiday display setting OFF, will NOT load"

    .line 128
    .line 129
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_3
    :goto_1
    return-object v0
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


# virtual methods
.method bridge synthetic b()Lcom/android/calendar/cards/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/x0;->k()Lcom/android/calendar/cards/w0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/x0;->l()Lcom/android/calendar/cards/x0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
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

.method e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/x0;->j:Lcom/android/calendar/cards/x0$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/cards/x0$b;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/calendar/cards/x0;->j:Lcom/android/calendar/cards/x0$b;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/calendar/cards/x0$b;->b:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
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
.end method

.method h()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/cards/x0;->m()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/calendar/cards/x0;->f:Ljava/util/List;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/calendar/cards/x0;->h:Z

    .line 9
    .line 10
    invoke-static {}, Lz3/g;->g()Lz3/g;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-virtual {v0, v1, v2, v3}, Lz3/g;->f(Landroid/content/Context;J)Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/calendar/cards/x0;->g:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/miui/calendar/util/z0;->n(Landroid/content/Context;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string v0, "GMT+8"

    .line 37
    .line 38
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lz3/g;->g()Lz3/g;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v3

    .line 86
    new-instance v0, Lcom/android/calendar/cards/x0$c;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-direct {v0, p0, v5}, Lcom/android/calendar/cards/x0$c;-><init>(Lcom/android/calendar/cards/x0;Lcom/android/calendar/cards/x0$a;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2, v3, v4, v0}, Lz3/g;->d(Landroid/content/Context;JLz3/g$d;)V

    .line 93
    .line 94
    .line 95
    :cond_0
    return-void
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

.method public i()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/calendar/cards/b;->i()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lz3/g;->g()Lz3/g;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/calendar/cards/x0;->i:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lz3/g;->j(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
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

.method k()Lcom/android/calendar/cards/w0;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/cards/w0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/w0;-><init>(Ljava/util/Calendar;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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

.method l()Lcom/android/calendar/cards/x0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/x0;->j:Lcom/android/calendar/cards/x0$b;

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
