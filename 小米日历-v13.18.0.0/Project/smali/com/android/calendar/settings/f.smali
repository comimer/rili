.class public Lcom/android/calendar/settings/f;
.super Lmiuix/preference/j;
.source "PermissionDescriptionPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field D:Lmiuix/preference/TextPreference;

.field E:Lmiuix/preference/TextPreference;

.field F:Lmiuix/preference/TextPreference;

.field G:Lmiuix/preference/TextPreference;

.field H:Lmiuix/preference/TextPreference;

.field y:Lmiuix/preference/TextPreference;

.field z:Lmiuix/preference/TextPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/preference/j;-><init>()V

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

.method public static synthetic J(Lcom/android/calendar/settings/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/calendar/settings/f;->O()V

    return-void
.end method

.method private static K(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
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

.method private L()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/preference/g;->m()Landroidx/preference/PreferenceScreen;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "key_access_calendar"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lmiuix/preference/TextPreference;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/calendar/settings/f;->y:Lmiuix/preference/TextPreference;

    .line 14
    .line 15
    const-string v1, "key_read_contacts"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lmiuix/preference/TextPreference;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/android/calendar/settings/f;->z:Lmiuix/preference/TextPreference;

    .line 24
    .line 25
    const-string v1, "key_read_write_storage"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lmiuix/preference/TextPreference;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/calendar/settings/f;->D:Lmiuix/preference/TextPreference;

    .line 34
    .line 35
    const-string v1, "key_read_phone_state"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lmiuix/preference/TextPreference;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/android/calendar/settings/f;->E:Lmiuix/preference/TextPreference;

    .line 44
    .line 45
    const-string v1, "key_read_notice_manager"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lmiuix/preference/TextPreference;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/android/calendar/settings/f;->F:Lmiuix/preference/TextPreference;

    .line 54
    .line 55
    const-string v1, "key_read_image_video"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lmiuix/preference/TextPreference;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/calendar/settings/f;->G:Lmiuix/preference/TextPreference;

    .line 64
    .line 65
    const-string v1, "key_read_audio"

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->T0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lmiuix/preference/TextPreference;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/android/calendar/settings/f;->H:Lmiuix/preference/TextPreference;

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/calendar/settings/f;->y:Lmiuix/preference/TextPreference;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/calendar/settings/f;->z:Lmiuix/preference/TextPreference;

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/android/calendar/settings/f;->D:Lmiuix/preference/TextPreference;

    .line 86
    .line 87
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/android/calendar/settings/f;->E:Lmiuix/preference/TextPreference;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/android/calendar/settings/f;->F:Lmiuix/preference/TextPreference;

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/calendar/settings/f;->G:Lmiuix/preference/TextPreference;

    .line 101
    .line 102
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/calendar/settings/f;->H:Lmiuix/preference/TextPreference;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/calendar/settings/f;->y:Lmiuix/preference/TextPreference;

    .line 111
    .line 112
    const v1, 0x7f12048e

    .line 113
    .line 114
    .line 115
    const v2, 0x7f120495

    .line 116
    .line 117
    .line 118
    if-eqz v0, :cond_1

    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    const-string v4, "android.permission.READ_CALENDAR"

    .line 125
    .line 126
    invoke-static {v3, v4}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_0

    .line 131
    .line 132
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/android/calendar/settings/f;->y:Lmiuix/preference/TextPreference;

    .line 145
    .line 146
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/settings/f;->z:Lmiuix/preference/TextPreference;

    .line 150
    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    const-string v4, "android.permission.READ_CONTACTS"

    .line 158
    .line 159
    invoke-static {v3, v4}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    if-eqz v3, :cond_2

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    :goto_1
    invoke-virtual {v0, v3}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/calendar/settings/f;->z:Lmiuix/preference/TextPreference;

    .line 178
    .line 179
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/settings/f;->E:Lmiuix/preference/TextPreference;

    .line 183
    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 191
    .line 192
    invoke-static {v3, v4}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-eqz v3, :cond_4

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    goto :goto_2

    .line 203
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :goto_2
    invoke-virtual {v0, v3}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/calendar/settings/f;->E:Lmiuix/preference/TextPreference;

    .line 211
    .line 212
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->E0(Landroidx/preference/Preference$d;)V

    .line 213
    .line 214
    .line 215
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 216
    .line 217
    const/16 v3, 0x21

    .line 218
    .line 219
    const/4 v4, 0x0

    .line 220
    if-lt v0, v3, :cond_c

    .line 221
    .line 222
    iget-object v0, p0, Lcom/android/calendar/settings/f;->G:Lmiuix/preference/TextPreference;

    .line 223
    .line 224
    if-eqz v0, :cond_7

    .line 225
    .line 226
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    .line 231
    .line 232
    invoke-static {v3, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_6

    .line 237
    .line 238
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    .line 243
    .line 244
    invoke-static {v3, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-eqz v3, :cond_6

    .line 249
    .line 250
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    goto :goto_3

    .line 255
    :cond_6
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    :goto_3
    invoke-virtual {v0, v3}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_7
    iget-object v0, p0, Lcom/android/calendar/settings/f;->H:Lmiuix/preference/TextPreference;

    .line 263
    .line 264
    if-eqz v0, :cond_9

    .line 265
    .line 266
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    const-string v5, "android.permission.READ_MEDIA_AUDIO"

    .line 271
    .line 272
    invoke-static {v3, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-eqz v3, :cond_8

    .line 277
    .line 278
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    goto :goto_4

    .line 283
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    :goto_4
    invoke-virtual {v0, v3}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    :cond_9
    iget-object v0, p0, Lcom/android/calendar/settings/f;->F:Lmiuix/preference/TextPreference;

    .line 291
    .line 292
    if-eqz v0, :cond_b

    .line 293
    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    const-string v5, "android.permission.POST_NOTIFICATIONS"

    .line 299
    .line 300
    invoke-static {v3, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_a

    .line 305
    .line 306
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    goto :goto_5

    .line 311
    :cond_a
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    :goto_5
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_b
    iget-object v0, p0, Lcom/android/calendar/settings/f;->D:Lmiuix/preference/TextPreference;

    .line 319
    .line 320
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->L0(Z)V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_c
    iget-object v0, p0, Lcom/android/calendar/settings/f;->D:Lmiuix/preference/TextPreference;

    .line 325
    .line 326
    if-eqz v0, :cond_e

    .line 327
    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 333
    .line 334
    invoke-static {v3, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    if-eqz v3, :cond_d

    .line 339
    .line 340
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    goto :goto_6

    .line 345
    :cond_d
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    :goto_6
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/settings/f;->F:Lmiuix/preference/TextPreference;

    .line 353
    .line 354
    if-eqz v0, :cond_f

    .line 355
    .line 356
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->L0(Z)V

    .line 357
    .line 358
    .line 359
    :cond_f
    iget-object v0, p0, Lcom/android/calendar/settings/f;->G:Lmiuix/preference/TextPreference;

    .line 360
    .line 361
    if-eqz v0, :cond_10

    .line 362
    .line 363
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->L0(Z)V

    .line 364
    .line 365
    .line 366
    :cond_10
    iget-object v0, p0, Lcom/android/calendar/settings/f;->H:Lmiuix/preference/TextPreference;

    .line 367
    .line 368
    if-eqz v0, :cond_11

    .line 369
    .line 370
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->L0(Z)V

    .line 371
    .line 372
    .line 373
    :cond_11
    :goto_7
    return-void
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

.method private O()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "extra_pkgname"

    .line 9
    .line 10
    const-string v2, "com.android.calendar"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 16
    .line 17
    .line 18
    return-void
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public M(Landroid/content/Context;Lmiuix/preference/j;ILcom/miui/calendar/util/z0$i;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    packed-switch p3, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    :pswitch_0
    goto :goto_0

    .line 19
    :pswitch_1
    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_2
    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :pswitch_3
    const-string v2, "android.permission.READ_PHONE_STATE"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :pswitch_4
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :pswitch_5
    const-string v3, "android.permission.READ_CONTACTS"

    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    const v3, 0x7f1204d1

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :pswitch_6
    const-string v3, "android.permission.READ_CALENDAR"

    .line 65
    .line 66
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    const v3, 0x7f1204c9

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-ge v3, v4, :cond_1

    .line 90
    .line 91
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p1, v4}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    if-eqz v4, :cond_0

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Ljava/lang/String;

    .line 108
    .line 109
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_0

    .line 117
    .line 118
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    check-cast v4, Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_3

    .line 135
    .line 136
    if-nez p4, :cond_2

    .line 137
    .line 138
    return-void

    .line 139
    :cond_2
    invoke-interface {p4}, Lcom/miui/calendar/util/z0$i;->a()V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    new-array p1, p1, [Ljava/lang/String;

    .line 148
    .line 149
    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, [Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void

    .line 159
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

.method public N()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/calendar/settings/f;->y:Lmiuix/preference/TextPreference;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "android.permission.READ_CALENDAR"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const v2, 0x7f12048e

    .line 14
    .line 15
    .line 16
    const v3, 0x7f120495

    .line 17
    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/calendar/settings/f;->z:Lmiuix/preference/TextPreference;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v4, "android.permission.READ_CONTACTS"

    .line 40
    .line 41
    invoke-static {v1, v4}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 60
    .line 61
    const/16 v1, 0x21

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    if-lt v0, v1, :cond_4

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/calendar/settings/f;->G:Lmiuix/preference/TextPreference;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v5, "android.permission.READ_MEDIA_IMAGES"

    .line 73
    .line 74
    invoke-static {v1, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v5, "android.permission.READ_MEDIA_VIDEO"

    .line 85
    .line 86
    invoke-static {v1, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    :goto_2
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/android/calendar/settings/f;->H:Lmiuix/preference/TextPreference;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v5, "android.permission.READ_MEDIA_AUDIO"

    .line 111
    .line 112
    invoke-static {v1, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    goto :goto_3

    .line 123
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    :goto_3
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/android/calendar/settings/f;->D:Lmiuix/preference/TextPreference;

    .line 131
    .line 132
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->L0(Z)V

    .line 133
    .line 134
    .line 135
    goto :goto_5

    .line 136
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/settings/f;->D:Lmiuix/preference/TextPreference;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 143
    .line 144
    invoke-static {v1, v5}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    goto :goto_4

    .line 155
    :cond_5
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    :goto_4
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/android/calendar/settings/f;->G:Lmiuix/preference/TextPreference;

    .line 163
    .line 164
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->L0(Z)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/calendar/settings/f;->H:Lmiuix/preference/TextPreference;

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->L0(Z)V

    .line 170
    .line 171
    .line 172
    :goto_5
    iget-object v0, p0, Lcom/android/calendar/settings/f;->E:Lmiuix/preference/TextPreference;

    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v4, "android.permission.READ_PHONE_STATE"

    .line 179
    .line 180
    invoke-static {v1, v4}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_6

    .line 185
    .line 186
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    goto :goto_6

    .line 191
    :cond_6
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    :goto_6
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/android/calendar/settings/f;->F:Lmiuix/preference/TextPreference;

    .line 199
    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    .line 205
    .line 206
    invoke-static {v1, v4}, Lcom/android/calendar/settings/f;->K(Landroid/content/Context;Ljava/lang/String;)Z

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-eqz v1, :cond_7

    .line 211
    .line 212
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    goto :goto_7

    .line 217
    :cond_7
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    :goto_7
    invoke-virtual {v0, v1}, Lmiuix/preference/TextPreference;->U0(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    return-void
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
.end method

.method public d(Landroidx/preference/Preference;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroidx/preference/Preference;->u()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, -0x1

    .line 15
    sparse-switch v0, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v0, "key_read_write_storage"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v3, 0x6

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v0, "key_read_audio"

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x5

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v0, "key_read_phone_state"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v3, 0x4

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v0, "key_read_contacts"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    const/4 v3, 0x3

    .line 62
    goto :goto_0

    .line 63
    :sswitch_4
    const-string v0, "key_read_image_video"

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const/4 v3, 0x2

    .line 73
    goto :goto_0

    .line 74
    :sswitch_5
    const-string v0, "key_read_notice_manager"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-nez p1, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    move v3, v2

    .line 84
    goto :goto_0

    .line 85
    :sswitch_6
    const-string v0, "key_access_calendar"

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_6

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    move v3, v1

    .line 95
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_0
    const/16 v1, 0x66

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :pswitch_1
    const/16 v1, 0x6a

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_2
    const/16 v1, 0x67

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_3
    const/16 v1, 0x65

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_4
    const/16 v1, 0x69

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lo1/i;->j(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    return v2

    .line 122
    :pswitch_6
    const/16 v1, 0x64

    .line 123
    .line 124
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    new-instance v0, Lcom/android/calendar/settings/e;

    .line 129
    .line 130
    invoke-direct {v0, p0}, Lcom/android/calendar/settings/e;-><init>(Lcom/android/calendar/settings/f;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p1, p0, v1, v0}, Lcom/android/calendar/settings/f;->M(Landroid/content/Context;Lmiuix/preference/j;ILcom/miui/calendar/util/z0$i;)V

    .line 134
    .line 135
    .line 136
    return v2

    .line 137
    :sswitch_data_0
    .sparse-switch
        -0x61a76227 -> :sswitch_6
        -0x1bcdced1 -> :sswitch_5
        -0x1b401ab2 -> :sswitch_4
        -0x6170104 -> :sswitch_3
        0x24528f37 -> :sswitch_2
        0x5ad9a5cd -> :sswitch_1
        0x69921512 -> :sswitch_0
    .end sparse-switch

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f150011

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroidx/preference/g;->i(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/calendar/settings/f;->L()V

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

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    array-length p2, p3

    .line 5
    const-string v0, "Cal:D:PermDescription"

    .line 6
    .line 7
    if-lez p2, :cond_0

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    aget p2, p3, p2

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    const-string p1, "onRequestPermissionsResult granted"

    .line 15
    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p2, "onRequestPermissionsResult denied"

    .line 21
    .line 22
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    :pswitch_0
    goto :goto_0

    .line 29
    :pswitch_1
    const-string p1, "android.permission.READ_MEDIA_AUDIO"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/android/calendar/settings/f;->O()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    const-string p1, "android.permission.READ_MEDIA_IMAGES"

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    const-string p1, "android.permission.READ_MEDIA_VIDEO"

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/android/calendar/settings/f;->O()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :pswitch_3
    const-string p1, "android.permission.READ_PHONE_STATE"

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/android/calendar/settings/f;->O()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :pswitch_4
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 74
    .line 75
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_1

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/android/calendar/settings/f;->O()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :pswitch_5
    const-string p1, "android.permission.READ_CONTACTS"

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_1

    .line 92
    .line 93
    invoke-direct {p0}, Lcom/android/calendar/settings/f;->O()V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    .line 98
    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    const-class p3, Lcom/android/calendar/settings/NoPermissionCalendarActivity;

    .line 104
    .line 105
    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 109
    .line 110
    .line 111
    :cond_1
    :goto_0
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
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
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/calendar/settings/f;->N()V

    .line 5
    .line 6
    .line 7
    return-void
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

.method public q(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
