.class public abstract Lcom/android/calendar/event/NewBaseEditFragment;
.super Landroidx/fragment/app/Fragment;
.source "NewBaseEditFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/NewBaseEditFragment$f;,
        Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;,
        Lcom/android/calendar/event/NewBaseEditFragment$h;,
        Lcom/android/calendar/event/NewBaseEditFragment$g;,
        Lcom/android/calendar/event/NewBaseEditFragment$i;
    }
.end annotation


# instance fields
.field protected D:Landroid/database/Cursor;

.field protected E:I

.field private F:Z

.field protected G:I

.field protected H:I

.field protected I:Z

.field private a:I

.field private b:Lcom/android/calendar/event/j;

.field protected c:Lcom/android/calendar/common/event/schema/Event;

.field protected d:Lcom/android/calendar/common/event/schema/Event;

.field private e:Lcom/android/calendar/common/event/schema/Event;

.field protected f:Lmiuix/appcompat/app/a;

.field private g:Lcom/android/calendar/event/NewBaseEditFragment$i;

.field private h:Lmiuix/appcompat/app/l;

.field i:I

.field protected j:Lcom/android/calendar/common/j;

.field private k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

.field private l:Landroid/net/Uri;

.field protected m:J

.field protected n:J

.field protected o:Ljava/lang/String;

.field protected p:Landroid/content/Context;

.field protected final q:Lcom/android/calendar/event/NewBaseEditFragment$h;

.field private r:Lmiuix/appcompat/app/l;

.field private v:Lmiuix/appcompat/app/l;

.field protected w:Z

.field private x:Z

.field private y:Landroid/view/inputmethod/InputMethodManager;

.field protected z:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x80000000

    .line 5
    .line 6
    iput v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->a:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 10
    .line 11
    new-instance v1, Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/calendar/event/NewBaseEditFragment$h;-><init>(Lcom/android/calendar/event/NewBaseEditFragment;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->w:Z

    .line 20
    .line 21
    iput-boolean v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->x:Z

    .line 22
    .line 23
    const/4 v2, -0x1

    .line 24
    iput v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->F:Z

    .line 27
    .line 28
    const v2, 0x7f12052d

    .line 29
    .line 30
    .line 31
    iput v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->G:I

    .line 32
    .line 33
    const v2, 0x7f120139

    .line 34
    .line 35
    .line 36
    iput v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->H:I

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->I:Z

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;->z(Landroid/content/Intent;)Lcom/android/calendar/common/j;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 49
    .line 50
    .line 51
    return-void
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

.method private A()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->l:Landroid/net/Uri;

    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->m:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->n:J

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 11
    .line 12
    if-eqz v2, :cond_3

    .line 13
    .line 14
    iget-wide v3, v2, Lcom/android/calendar/common/j;->a:J

    .line 15
    .line 16
    cmp-long v0, v3, v0

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 21
    .line 22
    invoke-virtual {v0, v3, v4}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 28
    .line 29
    iget-wide v1, v1, Lcom/android/calendar/common/j;->a:J

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->l:Landroid/net/Uri;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 39
    .line 40
    iget-wide v1, v2, Lcom/android/calendar/common/j;->f:J

    .line 41
    .line 42
    const-wide/16 v3, 0x10

    .line 43
    .line 44
    cmp-long v1, v1, v3

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/Event;->setAllDay(Z)V

    .line 52
    .line 53
    .line 54
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/calendar/common/j;->b:Ljava/util/Calendar;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    iput-wide v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->m:J

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/android/calendar/common/j;->c:Ljava/util/Calendar;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    iput-wide v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->n:J

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 80
    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    iget-wide v2, v2, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->id:J

    .line 84
    .line 85
    cmp-long v0, v2, v0

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 90
    .line 91
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 97
    .line 98
    iget-wide v1, v1, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->id:J

    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->l:Landroid/net/Uri;

    .line 105
    .line 106
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 107
    .line 108
    iget-wide v1, v0, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->start:J

    .line 109
    .line 110
    iput-wide v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->m:J

    .line 111
    .line 112
    iget-wide v0, v0, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->end:J

    .line 113
    .line 114
    iput-wide v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->n:J

    .line 115
    .line 116
    :cond_5
    :goto_2
    return-void
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

.method private C()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setTimezone(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v0, v1, v2}, Lcom/android/calendar/event/j;->m(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-string v1, "title"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/android/calendar/common/event/schema/Event;->setTitle(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 43
    .line 44
    const-string v1, "eventLocation"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/android/calendar/common/event/schema/Event;->setLocation(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 58
    .line 59
    const-string v1, "description"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Lcom/android/calendar/common/event/schema/Event;->setDescription(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 73
    .line 74
    const-string v1, "rrule"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setRrule(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 96
    .line 97
    const-string v1, "rdate"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_5

    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setRdate(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 119
    .line 120
    const-string v1, "android.intent.extra.EMAIL"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_7

    .line 131
    .line 132
    const-string v1, "[ ,;]"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    array-length v1, v0

    .line 139
    :goto_0
    if-ge v2, v1, :cond_7

    .line 140
    .line 141
    aget-object v3, v0, v2

    .line 142
    .line 143
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-nez v4, :cond_6

    .line 148
    .line 149
    const-string v4, "@"

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_6

    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    iget-object v4, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 162
    .line 163
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getAttendeeList()Ljava/util/LinkedHashMap;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    if-nez v4, :cond_6

    .line 176
    .line 177
    iget-object v4, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 178
    .line 179
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getAttendeeList()Ljava/util/LinkedHashMap;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    new-instance v5, Lcom/android/calendar/common/event/schema/Attendee;

    .line 188
    .line 189
    const-string v6, ""

    .line 190
    .line 191
    invoke-direct {v5, v6, v3}, Lcom/android/calendar/common/event/schema/Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v3, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 201
    .line 202
    const-string v1, "emailMessageId"

    .line 203
    .line 204
    const-wide/16 v2, -0x1

    .line 205
    .line 206
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 207
    .line 208
    .line 209
    move-result-wide v0

    .line 210
    cmp-long v4, v0, v2

    .line 211
    .line 212
    const-string v5, "Cal:D:BaseEditFragment"

    .line 213
    .line 214
    if-eqz v4, :cond_8

    .line 215
    .line 216
    iget-object v4, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 217
    .line 218
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v4, v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setEmailMessageId(J)V

    .line 223
    .line 224
    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .line 229
    .line 230
    const-string v6, "from intent emailMessageId="

    .line 231
    .line 232
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v5, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    :cond_8
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->z:Landroid/content/Intent;

    .line 246
    .line 247
    const-string v1, "emailMessageTimeStamp"

    .line 248
    .line 249
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 250
    .line 251
    .line 252
    move-result-wide v0

    .line 253
    cmp-long v2, v0, v2

    .line 254
    .line 255
    if-eqz v2, :cond_9

    .line 256
    .line 257
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 258
    .line 259
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 260
    .line 261
    .line 262
    move-result-object v2

    .line 263
    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setEmailMessageTimeStamp(J)V

    .line 264
    .line 265
    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v3, "from intent emailMessageTimeStamp="

    .line 272
    .line 273
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v5, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    :cond_9
    return-void
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
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
    .line 1042
    .line 1043
    .line 1044
    .line 1045
    .line 1046
    .line 1047
    .line 1048
    .line 1049
    .line 1050
    .line 1051
    .line 1052
    .line 1053
    .line 1054
    .line 1055
    .line 1056
    .line 1057
    .line 1058
    .line 1059
    .line 1060
    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
.end method

.method private static synthetic G(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
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

.method private I()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canModifyEvent()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canRespond()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->canAddReminders()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 44
    .line 45
    .line 46
    move-result-wide v4

    .line 47
    cmp-long v0, v4, v1

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->R()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->S()V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_3

    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->R()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_b

    .line 93
    .line 94
    iget v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 95
    .line 96
    const/4 v4, 0x3

    .line 97
    if-nez v0, :cond_3

    .line 98
    .line 99
    iput v4, p0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 100
    .line 101
    :cond_3
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->D()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_c

    .line 106
    .line 107
    instance-of v0, p0, Lcom/android/calendar/event/o1;

    .line 108
    .line 109
    const-string v5, "NewEditEventFragment"

    .line 110
    .line 111
    if-eqz v0, :cond_4

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    instance-of v0, p0, Lcom/android/calendar/event/z0;

    .line 115
    .line 116
    if-eqz v0, :cond_5

    .line 117
    .line 118
    const-string v5, "NewEditBirthdayFragment"

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_5
    instance-of v0, p0, Lcom/android/calendar/event/q0;

    .line 122
    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    const-string v5, "NewEditAnniversaryFragment"

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_6
    instance-of v0, p0, Lcom/android/calendar/event/m1;

    .line 129
    .line 130
    if-eqz v0, :cond_7

    .line 131
    .line 132
    const-string v5, "NewEditCountdownFragment"

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_7
    instance-of v0, p0, Lcom/android/calendar/event/s1;

    .line 136
    .line 137
    if-eqz v0, :cond_8

    .line 138
    .line 139
    const-string v5, "NewEditTrainArriveStationFragment"

    .line 140
    .line 141
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 144
    .line 145
    .line 146
    move-result-wide v6

    .line 147
    cmp-long v0, v6, v1

    .line 148
    .line 149
    const/4 v1, 0x0

    .line 150
    if-nez v0, :cond_9

    .line 151
    .line 152
    move v0, v3

    .line 153
    goto :goto_2

    .line 154
    :cond_9
    move v0, v1

    .line 155
    :goto_2
    if-eqz v0, :cond_a

    .line 156
    .line 157
    const/4 v0, 0x2

    .line 158
    new-array v0, v0, [Ljava/lang/String;

    .line 159
    .line 160
    const-string v2, "type"

    .line 161
    .line 162
    aput-object v2, v0, v1

    .line 163
    .line 164
    aput-object v5, v0, v3

    .line 165
    .line 166
    const-string v1, "create_new_event_done"

    .line 167
    .line 168
    invoke-static {v1, v0}, Lcom/miui/calendar/util/g0;->f(Ljava/lang/String;[Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_a
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 172
    .line 173
    invoke-virtual {v0, v4}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    .line 179
    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 183
    .line 184
    invoke-virtual {v0, v3}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 188
    .line 189
    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    .line 190
    .line 191
    .line 192
    :cond_c
    :goto_3
    return-void
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

.method private S()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v7, Ljava/util/ArrayList;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iget-object v1, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    iget-object v1, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const/4 v6, 0x0

    .line 36
    move-object v1, v7

    .line 37
    invoke-static/range {v1 .. v6}, Lcom/android/calendar/event/j;->q(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    new-instance v8, Lcom/android/calendar/common/a;

    .line 45
    .line 46
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v8, v1, v0}, Lcom/android/calendar/common/a;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x0

    .line 55
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const-wide/16 v9, 0x0

    .line 62
    .line 63
    move-object v1, v8

    .line 64
    move-object v5, v7

    .line 65
    move-wide v6, v9

    .line 66
    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/common/a;->m(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 70
    .line 71
    iget-object v2, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    iget-object v1, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-lez v1, :cond_1

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v2, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 101
    .line 102
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->hasAlarm()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eq v1, v2, :cond_2

    .line 111
    .line 112
    new-instance v12, Landroid/content/ContentValues;

    .line 113
    .line 114
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v2, "hasAlarm"

    .line 122
    .line 123
    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    .line 128
    const/4 v13, 0x0

    .line 129
    const/4 v14, 0x0

    .line 130
    const-wide/16 v15, 0x0

    .line 131
    .line 132
    invoke-virtual/range {v8 .. v16}, Lcom/android/calendar/common/a;->q(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;J)V

    .line 133
    .line 134
    .line 135
    :cond_2
    iget-object v1, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const v2, 0x7f12052d

    .line 142
    .line 143
    .line 144
    invoke-static {v1, v2}, Lcom/miui/calendar/util/t0;->f(Landroid/content/Context;I)V

    .line 145
    .line 146
    .line 147
    return-void
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

.method private U(I)V
    .locals 3

    .line 1
    const-string v0, "Cal:D:BaseEditFragment"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "setModelIfDone(): queryType:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->a:I

    .line 25
    .line 26
    not-int p1, p1

    .line 27
    and-int/2addr p1, v0

    .line 28
    iput p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->a:I

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->e:Lcom/android/calendar/common/event/schema/Event;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    const-string p1, "Cal:D:BaseEditFragment"

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "setModelIfDone(): mRestoreModel:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->e:Lcom/android/calendar/common/event/schema/Event;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->e:Lcom/android/calendar/common/event/schema/Event;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 63
    .line 64
    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;->O(Z)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const-string p1, "Cal:D:BaseEditFragment"

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "setModelIfDone(): model:"

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;->O(Z)V

    .line 94
    .line 95
    .line 96
    :cond_1
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    throw p1
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

.method private V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/android/calendar/event/NewBaseEditFragment$b;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/android/calendar/event/NewBaseEditFragment$b;-><init>(Lcom/android/calendar/event/NewBaseEditFragment;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lo1/i;->k(Landroid/content/Context;Lo1/i$d;)V

    .line 12
    .line 13
    .line 14
    return-void
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic i(Landroid/database/Cursor;)V
    .locals 0

    invoke-static {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->G(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;->u(Landroid/database/Cursor;)V

    .line 2
    .line 3
    .line 4
    return-void
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

.method static synthetic k(Lcom/android/calendar/event/NewBaseEditFragment;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->l:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic l(Lcom/android/calendar/event/NewBaseEditFragment;)Lcom/android/calendar/event/NewBaseEditFragment$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->g:Lcom/android/calendar/event/NewBaseEditFragment$i;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic m(Lcom/android/calendar/event/NewBaseEditFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;->U(I)V

    .line 2
    .line 3
    .line 4
    return-void
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

.method static synthetic n(Lcom/android/calendar/event/NewBaseEditFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->F:Z

    .line 2
    .line 3
    return p0
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

.method static synthetic o(Lcom/android/calendar/event/NewBaseEditFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->F:Z

    .line 2
    .line 3
    return p1
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

.method static synthetic p(Lcom/android/calendar/event/NewBaseEditFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->x:Z

    .line 2
    .line 3
    return p0
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

.method static synthetic q(Lcom/android/calendar/event/NewBaseEditFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->x:Z

    .line 2
    .line 3
    return p1
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

.method static synthetic r(Lcom/android/calendar/event/NewBaseEditFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->I()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method static synthetic s(Lcom/android/calendar/event/NewBaseEditFragment;)Lcom/android/calendar/event/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->b:Lcom/android/calendar/event/j;

    .line 2
    .line 3
    return-object p0
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

.method static synthetic t(Lcom/android/calendar/event/NewBaseEditFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->y:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    return-object p0
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

.method private u(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/event/g0;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/android/calendar/event/g0;-><init>(Landroid/database/Cursor;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
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

.method private v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/calendar/event/NewBaseEditFragment$f;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 17
    .line 18
    const v3, 0x7f0d0060

    .line 19
    .line 20
    .line 21
    iget v4, p0, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/NewBaseEditFragment$f;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/widget/ListView;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    const v2, 0x7f080699

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/miui/calendar/view/h;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 45
    .line 46
    invoke-direct {v0, v2, v1}, Lcom/miui/calendar/view/h;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    const/4 v2, -0x1

    .line 50
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Lcom/android/calendar/event/NewBaseEditFragment$c;

    .line 58
    .line 59
    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/NewBaseEditFragment$c;-><init>(Lcom/android/calendar/event/NewBaseEditFragment;Lcom/miui/calendar/view/h;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
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

.method private z(Landroid/content/Intent;)Lcom/android/calendar/common/j;
    .locals 14

    .line 1
    new-instance v0, Lcom/android/calendar/common/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/common/j;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "getEventInfoFromIntent(): uri:"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "Cal:D:BaseEditFragment"

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v4, -0x1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 56
    const-string v2, "getEventInfoFromIntent(): no event id, create new event"

    .line 57
    .line 58
    invoke-static {v3, v2, v1}, Lcom/miui/calendar/util/z;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    move-wide v1, v4

    .line 62
    :goto_0
    const-string v3, "allDay"

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 70
    .line 71
    .line 72
    move-result-wide v7

    .line 73
    const-string v9, "beginTime"

    .line 74
    .line 75
    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    if-eqz v10, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1, v9, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    :cond_1
    const-string v9, "endTime"

    .line 86
    .line 87
    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    if-eqz v10, :cond_2

    .line 92
    .line 93
    invoke-virtual {p1, v9, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    .line 94
    .line 95
    .line 96
    move-result-wide v9

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    move-wide v9, v4

    .line 99
    :goto_1
    cmp-long v11, v9, v4

    .line 100
    .line 101
    const-string v12, "UTC"

    .line 102
    .line 103
    if-eqz v11, :cond_4

    .line 104
    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    iput-object v11, v0, Lcom/android/calendar/common/j;->c:Ljava/util/Calendar;

    .line 110
    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    invoke-virtual {v11, v13}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v11, v0, Lcom/android/calendar/common/j;->c:Ljava/util/Calendar;

    .line 121
    .line 122
    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 123
    .line 124
    .line 125
    :cond_4
    cmp-long v4, v7, v4

    .line 126
    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    iput-object v4, v0, Lcom/android/calendar/common/j;->b:Ljava/util/Calendar;

    .line 134
    .line 135
    if-eqz v3, :cond_5

    .line 136
    .line 137
    invoke-static {v12}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 142
    .line 143
    .line 144
    :cond_5
    iget-object v4, v0, Lcom/android/calendar/common/j;->b:Ljava/util/Calendar;

    .line 145
    .line 146
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 147
    .line 148
    .line 149
    :cond_6
    iput-wide v1, v0, Lcom/android/calendar/common/j;->a:J

    .line 150
    .line 151
    if-eqz v3, :cond_7

    .line 152
    .line 153
    const-wide/16 v1, 0x10

    .line 154
    .line 155
    iput-wide v1, v0, Lcom/android/calendar/common/j;->f:J

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_7
    const-wide/16 v1, 0x0

    .line 159
    .line 160
    iput-wide v1, v0, Lcom/android/calendar/common/j;->f:J

    .line 161
    .line 162
    :goto_2
    const-string v1, "reminder_state"

    .line 163
    .line 164
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_8

    .line 169
    .line 170
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    iput v1, v0, Lcom/android/calendar/common/j;->g:I

    .line 175
    .line 176
    :cond_8
    const-string v1, "reminder"

    .line 177
    .line 178
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_9

    .line 183
    .line 184
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    iput v1, v0, Lcom/android/calendar/common/j;->h:I

    .line 189
    .line 190
    :cond_9
    const-string v1, "use_miui_calendar"

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_a

    .line 197
    .line 198
    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    iput-boolean v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->I:Z

    .line 203
    .line 204
    :cond_a
    const-string v1, "title"

    .line 205
    .line 206
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-eqz v2, :cond_b

    .line 211
    .line 212
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    iput-object v1, v0, Lcom/android/calendar/common/j;->i:Ljava/lang/String;

    .line 217
    .line 218
    :cond_b
    const-string v1, "rrule"

    .line 219
    .line 220
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-eqz v2, :cond_c

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    iput-object v1, v0, Lcom/android/calendar/common/j;->j:Ljava/lang/String;

    .line 231
    .line 232
    :cond_c
    const-string v1, "location"

    .line 233
    .line 234
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_d

    .line 239
    .line 240
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iput-object v1, v0, Lcom/android/calendar/common/j;->l:Ljava/lang/String;

    .line 245
    .line 246
    :cond_d
    const-string v1, "description"

    .line 247
    .line 248
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_e

    .line 253
    .line 254
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iput-object v1, v0, Lcom/android/calendar/common/j;->k:Ljava/lang/String;

    .line 259
    .line 260
    :cond_e
    const-string v1, "ep"

    .line 261
    .line 262
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_f

    .line 267
    .line 268
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    check-cast v1, Ljava/util/HashMap;

    .line 273
    .line 274
    iput-object v1, v0, Lcom/android/calendar/common/j;->m:Ljava/util/HashMap;

    .line 275
    .line 276
    :cond_f
    const-string v1, "key_clip_text"

    .line 277
    .line 278
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_10

    .line 283
    .line 284
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->o:Ljava/lang/String;

    .line 289
    .line 290
    :cond_10
    return-object v0
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


# virtual methods
.method protected abstract B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method E()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getOriginalStart()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    cmp-long v0, v2, v4

    .line 28
    .line 29
    if-nez v0, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getOriginalEnd()J

    .line 38
    .line 39
    .line 40
    move-result-wide v2

    .line 41
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getEnd()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    cmp-long v0, v2, v4

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getAttendeeList()Ljava/util/LinkedHashMap;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 71
    .line 72
    return v1

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    return v0

    .line 80
    :cond_3
    :goto_0
    return v1
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

.method protected abstract F()Z
.end method

.method public abstract H()Lcom/android/calendar/common/event/schema/Event;
.end method

.method public J(I)Z
    .locals 6

    .line 1
    const v0, 0x7f0a005b

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v0, :cond_6

    .line 6
    .line 7
    const v0, 0x7f0a0061

    .line 8
    .line 9
    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const v0, 0x7f0a0276

    .line 13
    .line 14
    .line 15
    if-eq p1, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->X()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_a

    .line 24
    .line 25
    const-string p1, "edit_event_click_calendar_selector"

    .line 26
    .line 27
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->v()V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_1

    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    const-string p1, "Cal:D:BaseEditFragment"

    .line 40
    .line 41
    const-string v0, "onActionBarItemSelected(): model is NULL"

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/android/calendar/settings/j;->m(Landroid/content/Context;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 56
    .line 57
    invoke-static {p1}, Lo1/i;->a(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_4

    .line 62
    .line 63
    :cond_3
    instance-of p1, p0, Lcom/android/calendar/event/o1;

    .line 64
    .line 65
    if-eqz p1, :cond_5

    .line 66
    .line 67
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-nez p1, :cond_4

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->V()V

    .line 104
    .line 105
    .line 106
    return v1

    .line 107
    :cond_4
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->I()V

    .line 108
    .line 109
    .line 110
    goto/16 :goto_1

    .line 111
    .line 112
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->V()V

    .line 113
    .line 114
    .line 115
    return v1

    .line 116
    :cond_6
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->F()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_7

    .line 121
    .line 122
    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->r:Lmiuix/appcompat/app/l;

    .line 124
    .line 125
    new-instance v0, Lmiuix/appcompat/app/l$b;

    .line 126
    .line 127
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 128
    .line 129
    iget-object v3, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 130
    .line 131
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Landroid/content/Context;

    .line 139
    .line 140
    invoke-direct {v0, v2}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 141
    .line 142
    .line 143
    const v2, 0x7f120198

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 147
    .line 148
    .line 149
    const v2, 0x1010355

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/l$b;->j(I)Lmiuix/appcompat/app/l$b;

    .line 153
    .line 154
    .line 155
    const v2, 0x104000a

    .line 156
    .line 157
    .line 158
    new-instance v3, Lcom/android/calendar/event/NewBaseEditFragment$g;

    .line 159
    .line 160
    invoke-direct {v3, p0}, Lcom/android/calendar/event/NewBaseEditFragment$g;-><init>(Lcom/android/calendar/event/NewBaseEditFragment;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/l$b;->z(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 164
    .line 165
    .line 166
    const/high16 v2, 0x1040000

    .line 167
    .line 168
    invoke-virtual {v0, v2, p1}, Lmiuix/appcompat/app/l$b;->r(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->a()Lmiuix/appcompat/app/l;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->r:Lmiuix/appcompat/app/l;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_7
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 182
    .line 183
    if-eqz p1, :cond_8

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 186
    .line 187
    .line 188
    move-result-wide v2

    .line 189
    const-wide/16 v4, -0x1

    .line 190
    .line 191
    cmp-long p1, v2, v4

    .line 192
    .line 193
    if-eqz p1, :cond_8

    .line 194
    .line 195
    const/4 p1, 0x0

    .line 196
    goto :goto_0

    .line 197
    :cond_8
    move p1, v1

    .line 198
    :goto_0
    if-eqz p1, :cond_9

    .line 199
    .line 200
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 201
    .line 202
    invoke-static {p1}, Lcom/android/calendar/event/k;->b(Landroid/content/Context;)Z

    .line 203
    .line 204
    .line 205
    move-result p1

    .line 206
    if-eqz p1, :cond_9

    .line 207
    .line 208
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 209
    .line 210
    new-instance v0, Lcom/android/calendar/event/NewBaseEditFragment$a;

    .line 211
    .line 212
    invoke-direct {v0, p0}, Lcom/android/calendar/event/NewBaseEditFragment$a;-><init>(Lcom/android/calendar/event/NewBaseEditFragment;)V

    .line 213
    .line 214
    .line 215
    invoke-static {p1, v0}, Lcom/android/calendar/event/k;->c(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_9
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 220
    .line 221
    invoke-virtual {p1, v1}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 225
    .line 226
    invoke-virtual {p1}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    .line 227
    .line 228
    .line 229
    :cond_a
    :goto_1
    return v1
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

.method protected K()V
    .locals 0

    return-void
.end method

.method protected L()V
    .locals 0

    return-void
.end method

.method protected M()V
    .locals 0

    return-void
.end method

.method protected N()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmiuix/appcompat/app/m;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lmiuix/appcompat/app/m;->finish()V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/miui/calendar/util/DeviceUtils;->L()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public abstract O(Z)V
.end method

.method protected P()V
    .locals 0

    return-void
.end method

.method public Q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getUri()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/calendar/event/NewBaseEditFragment;->x(Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    return v1
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

.method public R()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getUri()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/android/calendar/event/NewBaseEditFragment;->x(Z)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    return v0
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

.method public T(Landroid/database/Cursor;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 2
    .line 3
    const v0, 0x1040009

    .line 4
    .line 5
    .line 6
    const v1, 0x7f1203c7

    .line 7
    .line 8
    .line 9
    const v2, 0x1010355

    .line 10
    .line 11
    .line 12
    const v3, 0x7f1203c8

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_9

    .line 16
    .line 17
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :cond_0
    instance-of p1, p0, Lcom/android/calendar/event/q0;

    .line 26
    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    instance-of p1, p0, Lcom/android/calendar/event/m1;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    instance-of p1, p0, Lcom/android/calendar/event/z0;

    .line 34
    .line 35
    if-eqz p1, :cond_7

    .line 36
    .line 37
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 38
    .line 39
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x0

    .line 43
    move v4, p1

    .line 44
    :goto_0
    iget-object v5, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 45
    .line 46
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-ge v4, v5, :cond_5

    .line 51
    .line 52
    iget-object v5, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 53
    .line 54
    const-string v6, "account_type"

    .line 55
    .line 56
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    iget-object v6, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 61
    .line 62
    const-string v7, "calendar_displayName"

    .line 63
    .line 64
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    iget-object v7, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 69
    .line 70
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object v7, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 75
    .line 76
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const-string v7, "com.xiaomi"

    .line 81
    .line 82
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    if-eqz v7, :cond_2

    .line 87
    .line 88
    const-string v7, "calendar_displayname_xiaomi"

    .line 89
    .line 90
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-nez v7, :cond_3

    .line 95
    .line 96
    :cond_2
    const-string v7, "LOCAL"

    .line 97
    .line 98
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-eqz v5, :cond_4

    .line 103
    .line 104
    const-string v5, "calendar_displayname_local"

    .line 105
    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    :cond_3
    const/4 p1, 0x1

    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iget-object v5, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 115
    .line 116
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 117
    .line 118
    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    :goto_1
    if-nez p1, :cond_6

    .line 123
    .line 124
    new-instance p1, Lmiuix/appcompat/app/l$b;

    .line 125
    .line 126
    iget-object v4, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 127
    .line 128
    invoke-direct {p1, v4}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/l$b;->j(I)Lmiuix/appcompat/app/l$b;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const v3, 0x7f1203c6

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/l$b;->m(I)Lmiuix/appcompat/app/l$b;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2, v1, p0}, Lmiuix/appcompat/app/l$b;->z(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v1, v0, p0}, Lmiuix/appcompat/app/l$b;->r(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/l$b;->v(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/l$b;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Lmiuix/appcompat/app/l$b;->J()Lmiuix/appcompat/app/l;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->v:Lmiuix/appcompat/app/l;

    .line 162
    .line 163
    :cond_6
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 164
    .line 165
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 166
    .line 167
    .line 168
    :cond_7
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->X()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_8

    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->L()V

    .line 175
    .line 176
    .line 177
    :cond_8
    return-void

    .line 178
    :cond_9
    :goto_2
    new-instance p1, Lmiuix/appcompat/app/l$b;

    .line 179
    .line 180
    iget-object v4, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 181
    .line 182
    invoke-direct {p1, v4}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v3, v2}, Lmiuix/appcompat/app/l$b;->j(I)Lmiuix/appcompat/app/l$b;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const v3, 0x7f1203c5

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/l$b;->m(I)Lmiuix/appcompat/app/l$b;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-virtual {v2, v1, p0}, Lmiuix/appcompat/app/l$b;->z(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1, v0, p0}, Lmiuix/appcompat/app/l$b;->r(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/l$b;->v(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/l$b;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lmiuix/appcompat/app/l$b;->J()Lmiuix/appcompat/app/l;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->v:Lmiuix/appcompat/app/l;

    .line 216
    .line 217
    return-void
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

.method protected W()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->l:Landroid/net/Uri;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v2

    .line 13
    :goto_0
    iget-wide v3, p0, Lcom/android/calendar/event/NewBaseEditFragment;->n:J

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/android/calendar/event/NewBaseEditFragment;->m:J

    .line 16
    .line 17
    cmp-long v7, v3, v5

    .line 18
    .line 19
    if-ltz v7, :cond_1

    .line 20
    .line 21
    const-wide/16 v7, 0x0

    .line 22
    .line 23
    cmp-long v3, v3, v7

    .line 24
    .line 25
    if-nez v3, :cond_2

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :cond_1
    invoke-static {v5, v6}, Lcom/android/calendar/event/j;->h(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iput-wide v3, p0, Lcom/android/calendar/event/NewBaseEditFragment;->n:J

    .line 34
    .line 35
    :cond_2
    const-string v3, "Cal:D:BaseEditFragment"

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setCalendarAccessLevel(I)V

    .line 46
    .line 47
    .line 48
    const/16 v0, 0xf

    .line 49
    .line 50
    iput v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->a:I

    .line 51
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "startQuery: uri for event is "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->l:Landroid/net/Uri;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/android/calendar/event/NewBaseEditFragment;->g:Lcom/android/calendar/event/NewBaseEditFragment$i;

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    const/4 v6, 0x0

    .line 82
    iget-object v7, p0, Lcom/android/calendar/event/NewBaseEditFragment;->l:Landroid/net/Uri;

    .line 83
    .line 84
    sget-object v8, Lcom/android/calendar/event/j;->e:[Ljava/lang/String;

    .line 85
    .line 86
    const/4 v9, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v11, 0x0

    .line 89
    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    const/16 v0, 0x8

    .line 94
    .line 95
    iput v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->a:I

    .line 96
    .line 97
    const-string v0, "startQuery: Editing a new event."

    .line 98
    .line 99
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iget-wide v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->m:J

    .line 109
    .line 110
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-wide v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->n:J

    .line 120
    .line 121
    invoke-virtual {v0, v2, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setSelfAttendeeStatus(I)V

    .line 131
    .line 132
    .line 133
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->g:Lcom/android/calendar/event/NewBaseEditFragment$i;

    .line 134
    .line 135
    const/16 v3, 0x8

    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 139
    .line 140
    sget-object v6, Lcom/android/calendar/event/j;->h:[Ljava/lang/String;

    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    const/4 v9, 0x0

    .line 144
    const-string v7, "calendar_access_level>=500 AND visible=1"

    .line 145
    .line 146
    invoke-virtual/range {v2 .. v9}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 v0, 0x3

    .line 150
    iput v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->P()V

    .line 153
    .line 154
    .line 155
    :goto_1
    return-void
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

.method public abstract X()Z
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/android/calendar/event/j;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/android/calendar/event/j;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->b:Lcom/android/calendar/event/j;

    .line 12
    .line 13
    new-instance v0, Lcom/android/calendar/event/NewBaseEditFragment$i;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, p0, v1}, Lcom/android/calendar/event/NewBaseEditFragment$i;-><init>(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/content/ContentResolver;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->g:Lcom/android/calendar/event/NewBaseEditFragment$i;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->H()Lcom/android/calendar/common/event/schema/Event;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/calendar/settings/j;->h(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/event/schema/Event;->setNeedAlarm(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->C()V

    .line 45
    .line 46
    .line 47
    const-string v0, "input_method"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->y:Landroid/view/inputmethod/InputMethodManager;

    .line 56
    .line 57
    return-void
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->v:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->v:Lmiuix/appcompat/app/l;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 3
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    invoke-virtual {p1}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 5
    new-instance p2, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    const-class v1, Lcom/miui/calendar/sync/NewEventImportActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6
    iget-object p2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;->J(I)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    const-string v0, "key_model"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/calendar/common/event/schema/Event;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->e:Lcom/android/calendar/common/event/schema/Event;

    .line 21
    .line 22
    :cond_0
    const-string v0, "key_edit_state"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iput v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 35
    .line 36
    :cond_1
    const-string v0, "key_event"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 51
    .line 52
    :cond_2
    return-void
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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/calendar/event/NewBaseEditFragment;->B(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
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
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->h:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->h:Lmiuix/appcompat/app/l;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->r:Lmiuix/appcompat/app/l;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->r:Lmiuix/appcompat/app/l;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 25
    .line 26
    .line 27
    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 28
    .line 29
    .line 30
    return-void
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

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    return-void
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/calendar/event/NewBaseEditFragment;->J(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
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

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->Q()Z

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 5
    .line 6
    const-string v1, "key_model"

    .line 7
    .line 8
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 12
    .line 13
    const-string v1, "key_edit_state"

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-direct {v0, v1}, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;-><init>(Lcom/android/calendar/event/NewBaseEditFragment$a;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 35
    .line 36
    iget-wide v2, v1, Lcom/android/calendar/common/j;->a:J

    .line 37
    .line 38
    iput-wide v2, v0, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->id:J

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/calendar/common/j;->b:Ljava/util/Calendar;

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    iput-wide v1, v0, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->start:J

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->j:Lcom/android/calendar/common/j;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/calendar/common/j;->c:Ljava/util/Calendar;

    .line 53
    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v2

    .line 62
    iput-wide v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;->end:J

    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->k:Lcom/android/calendar/event/NewBaseEditFragment$EventBundle;

    .line 65
    .line 66
    const-string v1, "key_event"

    .line 67
    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 69
    .line 70
    .line 71
    return-void
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

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lmiuix/appcompat/app/m;

    .line 9
    .line 10
    invoke-virtual {p1}, Lmiuix/appcompat/app/m;->J()Lmiuix/appcompat/app/a;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->f:Lmiuix/appcompat/app/a;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/calendar/event/NewBaseEditFragment;->W()V

    .line 17
    .line 18
    .line 19
    return-void
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

.method protected w()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getSyncId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/EventEx;->isFirstEventInSeries()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    if-eqz v1, :cond_2

    .line 43
    .line 44
    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v3, 0x3

    .line 48
    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 49
    .line 50
    :goto_0
    iget-object v5, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 51
    .line 52
    const v6, 0x7f12034d

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    aput-object v5, v3, v2

    .line 60
    .line 61
    move v2, v4

    .line 62
    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 63
    .line 64
    iget-object v5, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 65
    .line 66
    const v6, 0x7f12034b

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    aput-object v5, v3, v2

    .line 74
    .line 75
    if-nez v1, :cond_3

    .line 76
    .line 77
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 78
    .line 79
    const v2, 0x7f12034c

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    aput-object v1, v3, v4

    .line 87
    .line 88
    :cond_3
    iget-object v1, p0, Lcom/android/calendar/event/NewBaseEditFragment;->h:Lmiuix/appcompat/app/l;

    .line 89
    .line 90
    if-eqz v1, :cond_4

    .line 91
    .line 92
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_4

    .line 97
    .line 98
    return-void

    .line 99
    :cond_4
    new-instance v1, Lmiuix/appcompat/app/l$b;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    .line 102
    .line 103
    invoke-direct {v1, v2}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    const v2, 0x7f12019f

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v2, Lcom/android/calendar/event/NewBaseEditFragment$d;

    .line 114
    .line 115
    invoke-direct {v2, p0, v0}, Lcom/android/calendar/event/NewBaseEditFragment$d;-><init>(Lcom/android/calendar/event/NewBaseEditFragment;Z)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3, v2}, Lmiuix/appcompat/app/l$b;->l([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->J()Lmiuix/appcompat/app/l;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->h:Lmiuix/appcompat/app/l;

    .line 127
    .line 128
    new-instance v1, Lcom/android/calendar/event/NewBaseEditFragment$e;

    .line 129
    .line 130
    invoke-direct {v1, p0}, Lcom/android/calendar/event/NewBaseEditFragment$e;-><init>(Lcom/android/calendar/event/NewBaseEditFragment;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 134
    .line 135
    .line 136
    :cond_5
    return-void
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

.method public abstract x(Z)Z
.end method

.method protected y()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/NewBaseEditFragment;->f:Lmiuix/appcompat/app/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->m()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
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
