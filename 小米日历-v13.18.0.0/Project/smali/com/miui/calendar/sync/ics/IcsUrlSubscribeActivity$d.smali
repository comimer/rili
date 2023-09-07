.class public final Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;
.super Ljava/lang/Object;
.source "IcsUrlSubscribeActivity.kt"

# interfaces
.implements Lcom/miui/calendar/sync/ics/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;->q0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d",
        "Lcom/miui/calendar/sync/ics/a$b;",
        "Lkotlin/u;",
        "a",
        "c",
        "b",
        "app_chinaNormalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
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


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, "IcsUrlSubscribeFragment"

    .line 2
    .line 3
    const-string v1, "onStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
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

.method public b()V
    .locals 3

    .line 1
    const-string v0, "IcsUrlSubscribeFragment"

    .line 2
    .line 3
    const-string v1, "onError"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 9
    .line 10
    const v1, 0x7f120659

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/miui/calendar/sync/ics/a;->b0()Lcom/miui/calendar/sync/ics/a$e;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/miui/calendar/sync/ics/a;->c0()Lcom/miui/calendar/view/x;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
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

.method public c()V
    .locals 3

    .line 1
    const-string v0, "IcsUrlSubscribeFragment"

    .line 2
    .line 3
    const-string v1, "onSuccess"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "key_import_by_url_success"

    .line 9
    .line 10
    invoke-static {v1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/miui/calendar/sync/ics/a;->b0()Lcom/miui/calendar/sync/ics/a$e;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/miui/calendar/sync/ics/a;->c0()Lcom/miui/calendar/view/x;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v2, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->b:I

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/miui/calendar/view/x;->E(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "thread:"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/miui/calendar/sync/ics/a;->c0()Lcom/miui/calendar/view/x;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {v0}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 77
    .line 78
    const v1, 0x7f12065a

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const/4 v2, 0x0

    .line 86
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->G0(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity$d;->a:Lcom/miui/calendar/sync/ics/IcsUrlSubscribeActivity;

    .line 99
    .line 100
    invoke-virtual {v0}, Lmiuix/appcompat/app/m;->finish()V

    .line 101
    .line 102
    .line 103
    return-void
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
