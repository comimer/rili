.class Lcom/android/calendar/widget/NearEventWidgetService$a;
.super Ljava/lang/Object;
.source "NearEventWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/NearEventWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/util/Calendar;

.field private d:I

.field private e:Ljava/util/Calendar;

.field private f:I

.field private g:Z

.field final synthetic h:Lcom/android/calendar/widget/NearEventWidgetService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/widget/NearEventWidgetService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->h:Lcom/android/calendar/widget/NearEventWidgetService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    const/4 p1, -0x1

    .line 11
    const-string p2, "appWidgetId"

    .line 12
    .line 13
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 18
    .line 19
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string p2, "NearEventFactory appWidgetId:"

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget p2, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "Cal:D:NearEventWidgetService"

    .line 39
    .line 40
    invoke-static {p2, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
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


# virtual methods
.method public getCount()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getCount() week count:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Cal:D:NearEventWidgetService"

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->b:I

    .line 26
    .line 27
    mul-int/lit8 v0, v0, 0x7

    .line 28
    .line 29
    return v0
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

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    const-string v0, "Cal:D:NearEventWidgetService"

    .line 2
    .line 3
    const-string v1, "getLoadingView()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Landroid/widget/RemoteViews;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const v2, 0x7f0d0185

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "===> getViewAt() pos : "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "Cal:D:NearEventWidgetService"

    .line 23
    .line 24
    invoke-static {v3, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-ltz v1, :cond_f

    .line 28
    .line 29
    iget v2, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->b:I

    .line 30
    .line 31
    const/4 v4, 0x7

    .line 32
    mul-int/2addr v2, v4

    .line 33
    if-lt v1, v2, :cond_0

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    iget-object v5, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->c:Ljava/util/Calendar;

    .line 42
    .line 43
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    invoke-virtual {v2, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 48
    .line 49
    .line 50
    const/4 v5, 0x6

    .line 51
    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v2, v1}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    const/4 v7, 0x2

    .line 67
    const/4 v8, 0x0

    .line 68
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    const/4 v7, 0x1

    .line 80
    if-ne v9, v6, :cond_1

    .line 81
    .line 82
    move v6, v7

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    move v6, v8

    .line 85
    :goto_0
    if-nez v6, :cond_2

    .line 86
    .line 87
    const-string v1, "is not current month, return null"

    .line 88
    .line 89
    invoke-static {v3, v1}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Landroid/widget/RemoteViews;

    .line 93
    .line 94
    iget-object v2, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const v3, 0x7f0d0266

    .line 101
    .line 102
    .line 103
    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    return-object v1

    .line 107
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    new-instance v9, Landroid/widget/RemoteViews;

    .line 114
    .line 115
    iget-object v10, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    const v11, 0x7f0d0265

    .line 122
    .line 123
    .line 124
    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_3
    if-eq v6, v4, :cond_5

    .line 129
    .line 130
    if-ne v6, v7, :cond_4

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    new-instance v9, Landroid/widget/RemoteViews;

    .line 134
    .line 135
    iget-object v10, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 136
    .line 137
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    const v11, 0x7f0d0264

    .line 142
    .line 143
    .line 144
    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_5
    :goto_1
    new-instance v9, Landroid/widget/RemoteViews;

    .line 149
    .line 150
    iget-object v10, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 151
    .line 152
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v10

    .line 156
    const v11, 0x7f0d0267

    .line 157
    .line 158
    .line 159
    invoke-direct {v9, v10, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 160
    .line 161
    .line 162
    :goto_2
    const/4 v10, 0x5

    .line 163
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    .line 164
    .line 165
    .line 166
    move-result v11

    .line 167
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v11

    .line 171
    const v13, 0x7f0a042f

    .line 172
    .line 173
    .line 174
    iget-object v12, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 175
    .line 176
    invoke-static {v12}, Lf2/l;->f(Landroid/content/Context;)Z

    .line 177
    .line 178
    .line 179
    move-result v12

    .line 180
    if-nez v12, :cond_9

    .line 181
    .line 182
    iget v12, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->b:I

    .line 183
    .line 184
    const/4 v14, 0x4

    .line 185
    if-ne v12, v14, :cond_7

    .line 186
    .line 187
    iget-object v5, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 188
    .line 189
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    const v8, 0x7f070955

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 197
    .line 198
    .line 199
    move-result v8

    .line 200
    :cond_6
    :goto_3
    move v15, v8

    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :cond_7
    if-ne v12, v10, :cond_8

    .line 204
    .line 205
    iget-object v5, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 206
    .line 207
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    const v8, 0x7f070957

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 215
    .line 216
    .line 217
    move-result v8

    .line 218
    goto :goto_3

    .line 219
    :cond_8
    if-ne v12, v5, :cond_6

    .line 220
    .line 221
    iget-object v5, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 222
    .line 223
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    const v8, 0x7f070959

    .line 228
    .line 229
    .line 230
    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 231
    .line 232
    .line 233
    move-result v8

    .line 234
    goto :goto_3

    .line 235
    :cond_9
    iget-object v5, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 236
    .line 237
    new-instance v10, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    const-string v12, "preferences_key_widget_max_height"

    .line 243
    .line 244
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    iget v12, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 248
    .line 249
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v10

    .line 256
    invoke-static {v5, v10, v8}, Lf2/k;->a(Landroid/content/Context;Ljava/lang/String;I)I

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    int-to-float v5, v5

    .line 261
    new-instance v8, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v10, "oldMaxHeight : "

    .line 267
    .line 268
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    const-string v10, " appWidgetId : "

    .line 275
    .line 276
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget v10, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 280
    .line 281
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    invoke-static {v3, v8}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-object v8, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 292
    .line 293
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    const v12, 0x7f0708ed

    .line 298
    .line 299
    .line 300
    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 301
    .line 302
    .line 303
    move-result v10

    .line 304
    int-to-float v10, v10

    .line 305
    invoke-static {v8, v10}, Lcom/miui/calendar/util/DeviceUtils;->P(Landroid/content/Context;F)I

    .line 306
    .line 307
    .line 308
    move-result v8

    .line 309
    iget-object v10, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 310
    .line 311
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    const v14, 0x7f070937

    .line 316
    .line 317
    .line 318
    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 319
    .line 320
    .line 321
    move-result v12

    .line 322
    int-to-float v12, v12

    .line 323
    invoke-static {v10, v12}, Lcom/miui/calendar/util/DeviceUtils;->P(Landroid/content/Context;F)I

    .line 324
    .line 325
    .line 326
    move-result v10

    .line 327
    mul-int/lit8 v12, v8, 0x2

    .line 328
    .line 329
    int-to-float v12, v12

    .line 330
    sub-float/2addr v5, v12

    .line 331
    const/high16 v12, 0x41800000    # 16.0f

    .line 332
    .line 333
    sub-float/2addr v5, v12

    .line 334
    iget v12, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->b:I

    .line 335
    .line 336
    mul-int v14, v10, v12

    .line 337
    .line 338
    int-to-float v14, v14

    .line 339
    sub-float/2addr v5, v14

    .line 340
    int-to-float v12, v12

    .line 341
    div-float/2addr v5, v12

    .line 342
    iget-object v12, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 343
    .line 344
    const/4 v14, 0x0

    .line 345
    invoke-static {v14, v5}, Ljava/lang/Math;->max(FF)F

    .line 346
    .line 347
    .line 348
    move-result v14

    .line 349
    invoke-static {v12, v14}, Lcom/miui/calendar/util/DeviceUtils;->e(Landroid/content/Context;F)I

    .line 350
    .line 351
    .line 352
    move-result v12

    .line 353
    new-instance v14, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v15, "padding:"

    .line 359
    .line 360
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v15, " paddingDp:"

    .line 367
    .line 368
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    const-string v5, " text size:"

    .line 375
    .line 376
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v5, " topMargin:"

    .line 383
    .line 384
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-static {v3, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    move v15, v12

    .line 398
    :goto_4
    const/4 v14, 0x0

    .line 399
    const/16 v16, 0x0

    .line 400
    .line 401
    const/16 v17, 0x0

    .line 402
    .line 403
    move-object v12, v9

    .line 404
    const v5, 0x7f0a066c

    .line 405
    .line 406
    .line 407
    invoke-virtual/range {v12 .. v17}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 408
    .line 409
    .line 410
    new-instance v8, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    const-string v10, "dayString:"

    .line 416
    .line 417
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v8

    .line 427
    invoke-static {v3, v8}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {v9, v5, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 431
    .line 432
    .line 433
    if-eqz v1, :cond_a

    .line 434
    .line 435
    const v3, 0x7f060584

    .line 436
    .line 437
    .line 438
    iget-object v4, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 439
    .line 440
    invoke-virtual {v4, v3}, Landroid/content/Context;->getColor(I)I

    .line 441
    .line 442
    .line 443
    move-result v3

    .line 444
    invoke-virtual {v9, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 445
    .line 446
    .line 447
    goto :goto_6

    .line 448
    :cond_a
    iget-boolean v3, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->g:Z

    .line 449
    .line 450
    if-nez v3, :cond_d

    .line 451
    .line 452
    if-eq v6, v4, :cond_c

    .line 453
    .line 454
    if-ne v6, v7, :cond_b

    .line 455
    .line 456
    goto :goto_5

    .line 457
    :cond_b
    iget-object v3, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 458
    .line 459
    const v4, 0x7f06057b

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    invoke-virtual {v9, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 467
    .line 468
    .line 469
    goto :goto_6

    .line 470
    :cond_c
    :goto_5
    iget-object v3, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 471
    .line 472
    const v4, 0x7f060582

    .line 473
    .line 474
    .line 475
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    .line 476
    .line 477
    .line 478
    move-result v3

    .line 479
    invoke-virtual {v9, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 480
    .line 481
    .line 482
    :cond_d
    :goto_6
    if-eqz v1, :cond_e

    .line 483
    .line 484
    const v1, 0x7f08070f

    .line 485
    .line 486
    .line 487
    invoke-static {v9, v5, v1}, Lcom/android/calendar/widget/NearEventWidgetService;->a(Landroid/widget/RemoteViews;II)V

    .line 488
    .line 489
    .line 490
    goto :goto_7

    .line 491
    :cond_e
    const v1, 0x7f08070e

    .line 492
    .line 493
    .line 494
    invoke-static {v9, v5, v1}, Lcom/android/calendar/widget/NearEventWidgetService;->a(Landroid/widget/RemoteViews;II)V

    .line 495
    .line 496
    .line 497
    :goto_7
    iget-object v1, v0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 498
    .line 499
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 500
    .line 501
    .line 502
    move-result-wide v2

    .line 503
    invoke-static {v1, v2, v3}, Lf2/d;->b(Landroid/content/Context;J)Landroid/content/Intent;

    .line 504
    .line 505
    .line 506
    move-result-object v1

    .line 507
    const v2, 0x7f0a042f

    .line 508
    .line 509
    .line 510
    invoke-virtual {v9, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 511
    .line 512
    .line 513
    return-object v9

    .line 514
    :cond_f
    :goto_8
    const/4 v1, 0x0

    .line 515
    return-object v1
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

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 7

    .line 1
    const-string v0, "Cal:D:NearEventWidgetService"

    .line 2
    .line 3
    const-string v1, "onCreate()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {v1}, Lf2/l;->f(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->g:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget v2, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    const-string v2, "appWidgetMaxWidth"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const-string v3, "appWidgetMinWidth"

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    const-string v4, "appWidgetMaxHeight"

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string v5, "appWidgetMinHeight"

    .line 49
    .line 50
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v6, "maxHeight:"

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v6, " minWidth:"

    .line 68
    .line 69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v0, v5}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 83
    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v6, "preferences_key_widget_max_width"

    .line 90
    .line 91
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v6, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 95
    .line 96
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-static {v0, v5, v2}, Lf2/k;->e(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v5, "preferences_key_widget_min_width"

    .line 114
    .line 115
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v5, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 119
    .line 120
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v0, v2, v3}, Lf2/k;->e(Landroid/content/Context;Ljava/lang/String;I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v3, "preferences_key_widget_max_height"

    .line 138
    .line 139
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v3, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v0, v2, v4}, Lf2/k;->e(Landroid/content/Context;Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 155
    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v3, "preferences_key_widget_min_height"

    .line 162
    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget v3, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->f:I

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v0, v2, v1}, Lf2/k;->e(Landroid/content/Context;Ljava/lang/String;I)V

    .line 176
    .line 177
    .line 178
    :cond_0
    return-void
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

.method public onDataSetChanged()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/Date;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->e:Ljava/util/Calendar;

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->d:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lf2/l;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->c:Ljava/util/Calendar;

    .line 34
    .line 35
    const/4 v2, 0x5

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    move v0, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->a:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->u(Landroid/content/Context;Ljava/util/Date;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :goto_0
    iput v0, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->b:I

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "onDataSetChanged current month days:"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/calendar/widget/NearEventWidgetService$a;->e:Ljava/util/Calendar;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const-string v1, "Cal:D:NearEventWidgetService"

    .line 72
    .line 73
    invoke-static {v1, v0}, Lcom/miui/calendar/util/z;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-void
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

.method public onDestroy()V
    .locals 2

    .line 1
    const-string v0, "Cal:D:NearEventWidgetService"

    .line 2
    .line 3
    const-string v1, "onDestroy()"

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
