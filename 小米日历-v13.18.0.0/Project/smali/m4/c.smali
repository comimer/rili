.class public Lm4/c;
.super Lm4/k;
.source "FlightSmsModel.java"


# instance fields
.field private g:Lcom/android/calendar/common/event/schema/FlightEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lm4/k;-><init>(Landroid/content/Context;Lcom/miui/calendar/sms/SmartMessage;Ljava/lang/String;)V

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
.method protected b()Z
    .locals 6

    .line 1
    const-string v0, "Cal:D:FlightSmsModel"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "travel_info"

    .line 5
    .line 6
    invoke-virtual {p0, v2}, Lm4/h;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/String;

    .line 28
    .line 29
    new-instance v4, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 30
    .line 31
    invoke-direct {v4}, Lcom/android/calendar/common/event/schema/FlightEvent;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-virtual {v4, v3, v5}, Lcom/android/calendar/common/event/schema/FlightEvent;->fillEpInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v3, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/android/calendar/common/event/schema/FlightEvent;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    const-string v2, "hasSaved(): has saved"

    .line 47
    .line 48
    invoke-static {v0, v2}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    return v0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    const-string v3, "hasSaved()"

    .line 55
    .line 56
    invoke-static {v0, v3, v2}, Lcom/miui/calendar/util/z;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return v1
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

.method protected c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getTravelType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    const-string v3, "Cal:D:FlightSmsModel"

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getTravelType()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v0, v4, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getTravelType()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v4, 0x3

    .line 29
    if-eq v0, v4, :cond_0

    .line 30
    .line 31
    const-string v0, "isResultValid(): travelType INVALID"

    .line 32
    .line 33
    invoke-static {v3, v0}, Lcom/miui/calendar/util/z;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return v2

    .line 37
    :cond_0
    iget-object v0, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepCity()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrCity()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    const-string v0, "isResultValid(): depDate INVALID"

    .line 75
    .line 76
    invoke-static {v3, v0}, Lcom/miui/calendar/util/z;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :cond_2
    iget-object v0, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    const-string v0, "isResultValid(): flightNum INVALID"

    .line 93
    .line 94
    invoke-static {v3, v0}, Lcom/miui/calendar/util/z;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return v2

    .line 98
    :cond_3
    return v1

    .line 99
    :cond_4
    :goto_0
    const-string v0, "isResultValid(): city info INVALID"

    .line 100
    .line 101
    invoke-static {v3, v0}, Lcom/miui/calendar/util/z;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v2
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

.method protected d()V
    .locals 3

    .line 1
    invoke-super {p0}, Lm4/k;->d()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 10
    .line 11
    iget-object v1, p0, Lm4/h;->d:Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/common/event/schema/FlightEvent;->fillEpInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
    .line 22
.end method

.method protected f()Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v14, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xf0

    .line 9
    .line 10
    const/4 v15, 0x1

    .line 11
    invoke-static {v1, v15}, Lcom/android/calendar/common/event/schema/Reminder;->valueOf(II)Lcom/android/calendar/common/event/schema/Reminder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lm4/h;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepCity()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget-object v1, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getDepAirport()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget-object v1, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrCity()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-object v1, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getArrAirport()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v7

    .line 44
    iget-object v1, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/FlightEvent;->getFlightNum()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-static/range {v2 .. v8}, Lx3/b;->d(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    iget-object v1, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepDate()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/TravelEvent;->getDepTime()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Lcom/miui/calendar/event/travel/a;->p(Ljava/lang/String;Ljava/lang/String;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    const-wide/16 v16, -0x1

    .line 72
    .line 73
    cmp-long v1, v4, v16

    .line 74
    .line 75
    const-string v2, "Cal:D:FlightSmsModel"

    .line 76
    .line 77
    const/16 v18, 0x0

    .line 78
    .line 79
    if-nez v1, :cond_0

    .line 80
    .line 81
    const-string v1, "saveEvent(): startMillis is -1, return"

    .line 82
    .line 83
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v18

    .line 87
    :cond_0
    iget-object v1, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrDate()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v3, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 94
    .line 95
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/TravelEvent;->getArrTime()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v1, v3}, Lcom/miui/calendar/event/travel/a;->p(Ljava/lang/String;Ljava/lang/String;)J

    .line 100
    .line 101
    .line 102
    move-result-wide v6

    .line 103
    cmp-long v1, v6, v16

    .line 104
    .line 105
    if-nez v1, :cond_1

    .line 106
    .line 107
    const-string v1, "saveEventIfNeeded(): endMillis is -1"

    .line 108
    .line 109
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-wide/32 v1, 0x36ee80

    .line 113
    .line 114
    .line 115
    add-long/2addr v1, v4

    .line 116
    move-wide v6, v1

    .line 117
    :cond_1
    iget-object v1, v0, Lm4/h;->a:Landroid/content/Context;

    .line 118
    .line 119
    const-wide/16 v2, -0x1

    .line 120
    .line 121
    const/4 v8, 0x0

    .line 122
    const/4 v10, 0x0

    .line 123
    iget-object v11, v0, Lm4/c;->g:Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 124
    .line 125
    invoke-virtual {v11}, Lcom/android/calendar/common/event/schema/FlightEvent;->getDepAirport()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    const/16 v12, 0xb

    .line 130
    .line 131
    const/4 v13, 0x1

    .line 132
    invoke-virtual/range {p0 .. p0}, Lm4/k;->h()Ljava/util/HashMap;

    .line 133
    .line 134
    .line 135
    move-result-object v19

    .line 136
    move/from16 v20, v15

    .line 137
    .line 138
    move-object/from16 v15, v19

    .line 139
    .line 140
    invoke-static/range {v1 .. v15}, Lcom/android/calendar/event/e0;->h(Landroid/content/Context;JJJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/util/ArrayList;Ljava/util/HashMap;)J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    cmp-long v1, v1, v16

    .line 145
    .line 146
    if-eqz v1, :cond_2

    .line 147
    .line 148
    move/from16 v15, v20

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_2
    move/from16 v15, v18

    .line 152
    .line 153
    :goto_0
    const-string v2, "\u98de\u673a\u7968"

    .line 154
    .line 155
    invoke-virtual {v0, v2, v15}, Lm4/h;->e(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    if-eqz v1, :cond_3

    .line 159
    .line 160
    move/from16 v15, v20

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move/from16 v15, v18

    .line 164
    .line 165
    :goto_1
    return v15
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
