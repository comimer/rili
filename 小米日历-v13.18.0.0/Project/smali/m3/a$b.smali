.class public Lm3/a$b;
.super Ljava/lang/Object;
.source "CalendarNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lm3/a$a;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Landroid/app/PendingIntent;

.field private j:Landroid/app/PendingIntent;

.field private k:Landroid/app/PendingIntent;

.field private l:Landroid/net/Uri;

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0806b9

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lm3/a$b;->c:I

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


# virtual methods
.method public a(Lm3/a$a;)Lm3/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/a$b;->d:Lm3/a$a;

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

.method public b()Lm3/a;
    .locals 3

    .line 1
    new-instance v0, Lm3/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lm3/a;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lm3/a$b;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const v2, 0x7f1203c4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lm3/a$b;->b:Ljava/lang/String;

    .line 34
    .line 35
    :cond_0
    iget-object v1, p0, Lm3/a$b;->a:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0, v1}, Lm3/a;->a(Lm3/a;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lm3/a$b;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lm3/a;->c(Lm3/a;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lm3/a$b;->c:I

    .line 46
    .line 47
    invoke-static {v0, v1}, Lm3/a;->g(Lm3/a;I)I

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lm3/a$b;->d:Lm3/a$a;

    .line 51
    .line 52
    invoke-static {v0, v1}, Lm3/a;->h(Lm3/a;Lm3/a$a;)Lm3/a$a;

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lm3/a$b;->i:Landroid/app/PendingIntent;

    .line 56
    .line 57
    invoke-static {v0, v1}, Lm3/a;->i(Lm3/a;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lm3/a$b;->j:Landroid/app/PendingIntent;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lm3/a;->j(Lm3/a;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lm3/a$b;->k:Landroid/app/PendingIntent;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lm3/a;->k(Lm3/a;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lm3/a$b;->l:Landroid/net/Uri;

    .line 71
    .line 72
    invoke-static {v0, v1}, Lm3/a;->l(Lm3/a;Landroid/net/Uri;)Landroid/net/Uri;

    .line 73
    .line 74
    .line 75
    iget-boolean v1, p0, Lm3/a$b;->m:Z

    .line 76
    .line 77
    invoke-static {v0, v1}, Lm3/a;->m(Lm3/a;Z)Z

    .line 78
    .line 79
    .line 80
    iget-boolean v1, p0, Lm3/a$b;->g:Z

    .line 81
    .line 82
    invoke-static {v0, v1}, Lm3/a;->n(Lm3/a;Z)Z

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lm3/a$b;->f:I

    .line 86
    .line 87
    invoke-static {v0, v1}, Lm3/a;->b(Lm3/a;I)I

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Lm3/a$b;->e:Z

    .line 91
    .line 92
    invoke-static {v0, v1}, Lm3/a;->d(Lm3/a;Z)Z

    .line 93
    .line 94
    .line 95
    iget v1, p0, Lm3/a$b;->n:I

    .line 96
    .line 97
    invoke-static {v0, v1}, Lm3/a;->e(Lm3/a;I)I

    .line 98
    .line 99
    .line 100
    iget-boolean v1, p0, Lm3/a$b;->h:Z

    .line 101
    .line 102
    invoke-static {v0, v1}, Lm3/a;->f(Lm3/a;Z)Z

    .line 103
    .line 104
    .line 105
    return-object v0
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

.method public c(Z)Lm3/a$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm3/a$b;->e:Z

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

.method public d(Landroid/app/PendingIntent;)Lm3/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/a$b;->i:Landroid/app/PendingIntent;

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

.method public e(Ljava/lang/String;)Lm3/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/a$b;->b:Ljava/lang/String;

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

.method public f(Ljava/lang/String;)Lm3/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/a$b;->a:Ljava/lang/String;

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

.method public g(Landroid/app/PendingIntent;)Lm3/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/a$b;->j:Landroid/app/PendingIntent;

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

.method public h(Z)Lm3/a$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm3/a$b;->g:Z

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

.method public i(I)Lm3/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lm3/a$b;->f:I

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

.method public j(Landroid/app/PendingIntent;)Lm3/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/a$b;->k:Landroid/app/PendingIntent;

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

.method public k(Z)Lm3/a$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm3/a$b;->h:Z

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

.method public l(I)Lm3/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lm3/a$b;->n:I

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

.method public m(Z)Lm3/a$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm3/a$b;->m:Z

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

.method public n(Landroid/net/Uri;)Lm3/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lm3/a$b;->l:Landroid/net/Uri;

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
