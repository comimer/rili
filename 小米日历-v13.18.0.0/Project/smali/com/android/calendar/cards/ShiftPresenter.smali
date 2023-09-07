.class public Lcom/android/calendar/cards/ShiftPresenter;
.super Lcom/android/calendar/cards/b;
.source "ShiftPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/cards/ShiftPresenter$a;,
        Lcom/android/calendar/cards/ShiftPresenter$ShiftCardExtraSchema;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/cards/b<",
        "Lcom/android/calendar/cards/ShiftPresenter$a;",
        ">;"
    }
.end annotation


# instance fields
.field f:Landroid/content/Context;

.field private g:Lcom/android/calendar/cards/ShiftPresenter$a;

.field private h:Lcom/android/calendar/cards/ShiftPresenter$ShiftCardExtraSchema;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/android/calendar/cards/t;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/cards/b;-><init>(Lcom/android/calendar/cards/t;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "Cal:D:ShiftPresenter"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/calendar/cards/ShiftPresenter;->i:Ljava/lang/String;

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/android/calendar/cards/ShiftPresenter;->j:Z

    .line 10
    .line 11
    invoke-static {}, Lcom/android/calendar/application/CalendarApplication;->e()Lcom/android/calendar/application/CalendarApplication;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/calendar/cards/ShiftPresenter;->f:Landroid/content/Context;

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static synthetic k(Lcom/android/calendar/cards/ShiftPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/cards/ShiftPresenter;->n()V

    return-void
.end method

.method private synthetic n()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/cards/ShiftPresenter;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/calendar/cards/ShiftPresenter;->g:Lcom/android/calendar/cards/ShiftPresenter$a;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/calendar/cards/ShiftPresenter;->f:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Lk4/d;->c(Landroid/content/Context;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lcom/android/calendar/cards/ShiftPresenter$a;->b:Lcom/miui/calendar/shift/ShiftSchema;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method bridge synthetic b()Lcom/android/calendar/cards/m1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/ShiftPresenter;->l()Lcom/android/calendar/cards/q1;

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

    const/16 v0, 0x35

    return v0
.end method

.method bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/cards/ShiftPresenter;->m()Lcom/android/calendar/cards/ShiftPresenter$a;

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
    iget-object v0, p0, Lcom/android/calendar/cards/ShiftPresenter;->g:Lcom/android/calendar/cards/ShiftPresenter$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/calendar/cards/ShiftPresenter$a;->b:Lcom/miui/calendar/shift/ShiftSchema;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
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

.method h()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/calendar/cards/ShiftPresenter$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/cards/ShiftPresenter$a;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/calendar/cards/ShiftPresenter;->g:Lcom/android/calendar/cards/ShiftPresenter$a;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/calendar/cards/ShiftPresenter;->f:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lk4/d;->c(Landroid/content/Context;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lcom/android/calendar/cards/ShiftPresenter$a;->b:Lcom/miui/calendar/shift/ShiftSchema;

    .line 15
    .line 16
    sget-object v0, Lcom/android/calendar/cards/CardHelper;->b:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 33
    .line 34
    iget v2, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->showType:I

    .line 35
    .line 36
    add-int/lit8 v2, v2, 0x14

    .line 37
    .line 38
    const/16 v3, 0x35

    .line 39
    .line 40
    if-ne v2, v3, :cond_0

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/calendar/cards/ShiftPresenter;->g:Lcom/android/calendar/cards/ShiftPresenter$a;

    .line 43
    .line 44
    iput-object v1, v2, Lcom/android/calendar/cards/ShiftPresenter$a;->a:Lcom/miui/calendar/card/schema/CustomCardSchema;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/miui/calendar/card/schema/CustomCardSchema;->extra:Lcom/google/gson/JsonObject;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-class v2, Lcom/android/calendar/cards/ShiftPresenter$ShiftCardExtraSchema;

    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/miui/calendar/util/x;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/android/calendar/cards/ShiftPresenter$ShiftCardExtraSchema;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/calendar/cards/ShiftPresenter;->h:Lcom/android/calendar/cards/ShiftPresenter$ShiftCardExtraSchema;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/calendar/cards/ShiftPresenter;->f:Landroid/content/Context;

    .line 63
    .line 64
    const/4 v2, 0x1

    .line 65
    invoke-static {v1, v2}, Lk4/d;->k(Landroid/content/Context;Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/cards/ShiftPresenter;->h:Lcom/android/calendar/cards/ShiftPresenter$ShiftCardExtraSchema;

    .line 70
    .line 71
    iget-wide v0, v0, Lcom/android/calendar/cards/ShiftPresenter$ShiftCardExtraSchema;->configVersion:J

    .line 72
    .line 73
    iget-boolean v2, p0, Lcom/android/calendar/cards/ShiftPresenter;->j:Z

    .line 74
    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    iget-object v2, p0, Lcom/android/calendar/cards/ShiftPresenter;->g:Lcom/android/calendar/cards/ShiftPresenter$a;

    .line 78
    .line 79
    iget-object v2, v2, Lcom/android/calendar/cards/ShiftPresenter$a;->b:Lcom/miui/calendar/shift/ShiftSchema;

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    iget-wide v2, v2, Lcom/miui/calendar/shift/ShiftSchema;->version:J

    .line 84
    .line 85
    cmp-long v2, v0, v2

    .line 86
    .line 87
    if-lez v2, :cond_2

    .line 88
    .line 89
    iget-object v2, p0, Lcom/android/calendar/cards/ShiftPresenter;->i:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v4, "local config version is "

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v4, p0, Lcom/android/calendar/cards/ShiftPresenter;->g:Lcom/android/calendar/cards/ShiftPresenter$a;

    .line 102
    .line 103
    iget-object v4, v4, Lcom/android/calendar/cards/ShiftPresenter$a;->b:Lcom/miui/calendar/shift/ShiftSchema;

    .line 104
    .line 105
    iget-wide v4, v4, Lcom/miui/calendar/shift/ShiftSchema;->version:J

    .line 106
    .line 107
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v4, ", server config version is "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, ", need sync"

    .line 119
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v2, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/calendar/cards/ShiftPresenter;->f:Landroid/content/Context;

    .line 131
    .line 132
    new-instance v1, Lcom/android/calendar/cards/r1;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/android/calendar/cards/r1;-><init>(Lcom/android/calendar/cards/ShiftPresenter;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v0, v1}, Lk4/d;->i(Landroid/content/Context;Lk4/d$a;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/android/calendar/cards/b;->g()V

    .line 142
    .line 143
    .line 144
    :goto_1
    return-void
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

.method l()Lcom/android/calendar/cards/q1;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/calendar/cards/q1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/cards/b;->d:Ljava/util/Calendar;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/calendar/cards/q1;-><init>(Ljava/util/Calendar;)V

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

.method m()Lcom/android/calendar/cards/ShiftPresenter$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/cards/ShiftPresenter;->g:Lcom/android/calendar/cards/ShiftPresenter$a;

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
