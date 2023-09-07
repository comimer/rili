.class Lcom/android/calendar/common/ShareView$b;
.super Ljava/lang/Object;
.source "ShareView.java"

# interfaces
.implements Lcom/android/calendar/common/u$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/common/ShareView;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/common/ShareView;


# direct methods
.method constructor <init>(Lcom/android/calendar/common/ShareView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

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

.method public static synthetic c(Lcom/android/calendar/common/ShareView$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/common/ShareView$b;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->w(Lcom/android/calendar/common/ShareView;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/ShareView;->E(Ljava/io/File;)V

    .line 8
    .line 9
    .line 10
    return-void
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
.method public a(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->w(Lcom/android/calendar/common/ShareView;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "calendar_channel"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 22
    .line 23
    invoke-static {v2}, Lcom/android/calendar/common/ShareView;->y(Lcom/android/calendar/common/ShareView;)Ljava/util/HashMap;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->w(Lcom/android/calendar/common/ShareView;)Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/android/calendar/common/ShareView;->y(Lcom/android/calendar/common/ShareView;)Ljava/util/HashMap;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "history_share"

    .line 47
    .line 48
    invoke-static {v2, v1}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 52
    .line 53
    invoke-static {v1, p1, v0}, Lcom/android/calendar/common/ShareView;->z(Lcom/android/calendar/common/ShareView;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
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

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->w(Lcom/android/calendar/common/ShareView;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->y(Lcom/android/calendar/common/ShareView;)Ljava/util/HashMap;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/android/calendar/common/ShareView;->x(Lcom/android/calendar/common/ShareView;)Landroid/content/Context;

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
    const v2, 0x7f12052b

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "calendar_channel"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->x(Lcom/android/calendar/common/ShareView;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "images"

    .line 45
    .line 46
    invoke-static {v1}, Lcom/miui/calendar/util/z0;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->x(Lcom/android/calendar/common/ShareView;)Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/android/calendar/common/ShareView;->x(Lcom/android/calendar/common/ShareView;)Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/calendar/common/ShareActivity;

    .line 69
    .line 70
    const/4 v2, 0x1

    .line 71
    new-instance v3, Lcom/android/calendar/common/w;

    .line 72
    .line 73
    invoke-direct {v3, p0}, Lcom/android/calendar/common/w;-><init>(Lcom/android/calendar/common/ShareView$b;)V

    .line 74
    .line 75
    .line 76
    invoke-static {v0, v1, v2, v3}, Lcom/miui/calendar/util/z0;->J(Landroid/content/Context;Landroid/app/Activity;ILcom/miui/calendar/util/z0$i;)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->y(Lcom/android/calendar/common/ShareView;)Ljava/util/HashMap;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v1, "history_share"

    .line 87
    .line 88
    invoke-static {v1, v0}, Lcom/miui/calendar/util/g0;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/android/calendar/common/ShareView$b;->a:Lcom/android/calendar/common/ShareView;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/android/calendar/common/ShareView;->w(Lcom/android/calendar/common/ShareView;)Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/android/calendar/common/ShareView;->E(Ljava/io/File;)V

    .line 98
    .line 99
    .line 100
    return-void
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
