.class public Lcom/android/calendar/widget/a;
.super Ljava/lang/Object;
.source "AgendaWidgetModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/widget/a$a;,
        Lcom/android/calendar/widget/a$b;,
        Lcom/android/calendar/widget/a$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/widget/a$c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/widget/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/calendar/widget/a$a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/Context;

.field public final g:J

.field public final h:I

.field final i:I

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/android/calendar/widget/a;->g:J

    .line 9
    .line 10
    new-instance v2, Lcom/miui/calendar/util/r0;

    .line 11
    .line 12
    invoke-direct {v2, p2}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->M()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->l()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iput p2, p0, Lcom/android/calendar/widget/a;->h:I

    .line 27
    .line 28
    add-int/lit8 p2, p2, 0x7

    .line 29
    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 31
    .line 32
    iput p2, p0, Lcom/android/calendar/widget/a;->i:I

    .line 33
    .line 34
    new-instance p2, Ljava/util/ArrayList;

    .line 35
    .line 36
    const/16 v0, 0x32

    .line 37
    .line 38
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 42
    .line 43
    new-instance p2, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p2, p0, Lcom/android/calendar/widget/a;->c:Ljava/util/List;

    .line 49
    .line 50
    new-instance p2, Ljava/util/ArrayList;

    .line 51
    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lcom/android/calendar/widget/a;->e:Ljava/util/List;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 60
    .line 61
    return-void
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
.end method

.method private c(ILcom/miui/calendar/util/r0;)Lcom/android/calendar/widget/a$a;
    .locals 9

    .line 1
    invoke-virtual {p2, p1}, Lcom/miui/calendar/util/r0;->G(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v3

    .line 5
    iget p2, p0, Lcom/android/calendar/widget/a;->h:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    add-int/2addr p2, v0

    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 12
    .line 13
    const v6, 0x7f120065

    .line 14
    .line 15
    .line 16
    new-array v7, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v8, 0x0

    .line 19
    const v5, 0x80010

    .line 20
    .line 21
    .line 22
    move-object v0, p2

    .line 23
    move-wide v1, v3

    .line 24
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    aput-object v0, v7, v8

    .line 33
    .line 34
    invoke-virtual {p2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const v5, 0x80012

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 43
    .line 44
    move-wide v1, v3

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    :goto_0
    new-instance v0, Lcom/android/calendar/widget/a$a;

    .line 50
    .line 51
    invoke-direct {v0, p1, p2}, Lcom/android/calendar/widget/a$a;-><init>(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v0
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
.end method

.method private d(JZJJIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/calendar/widget/a$b;
    .locals 13

    move-object v1, p0

    move/from16 v0, p3

    move/from16 v2, p18

    .line 1
    new-instance v3, Lcom/android/calendar/widget/a$b;

    invoke-direct {v3}, Lcom/android/calendar/widget/a$b;-><init>()V

    .line 2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x65

    const-string v6, " "

    if-eq v2, v5, :cond_5

    const/16 v5, 0xc9

    const v7, 0x7f1201c7

    if-eq v2, v5, :cond_3

    const/16 v5, 0xca

    if-eq v2, v5, :cond_1

    :cond_0
    :goto_0
    move-wide v5, p1

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-object v2, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const v2, 0x80081

    .line 4
    iget-object v7, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    move-wide/from16 v8, p4

    move-wide/from16 v10, p4

    move v12, v2

    invoke-static/range {v7 .. v12}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v7, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    move-wide/from16 v8, p6

    move-wide/from16 v10, p6

    invoke-static/range {v7 .. v12}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget-boolean v2, v1, Lcom/android/calendar/widget/a;->b:Z

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/calendar/widget/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 11
    iget-object v2, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const v2, 0x80081

    .line 12
    iget-object v7, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    move-wide/from16 v8, p4

    move-wide/from16 v10, p4

    move v12, v2

    invoke-static/range {v7 .. v12}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v5

    .line 13
    iget-object v7, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    move-wide/from16 v8, p6

    move-wide/from16 v10, p6

    invoke-static/range {v7 .. v12}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "&"

    .line 15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v2, v1, Lcom/android/calendar/widget/a;->b:Z

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/calendar/widget/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_6

    const v10, 0x80010

    .line 19
    iget-object v5, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-static/range {v5 .. v10}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    const v2, 0x80001

    .line 20
    iget-object v5, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v2, 0x80081

    :cond_7
    move/from16 v5, p8

    move/from16 v7, p9

    if-le v7, v5, :cond_8

    or-int/lit8 v2, v2, 0x10

    :cond_8
    move v12, v2

    .line 21
    iget-object v7, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    invoke-static/range {v7 .. v12}, Lcom/android/calendar/common/Utils;->p(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v2, v1, Lcom/android/calendar/widget/a;->b:Z

    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/calendar/widget/a;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 24
    :goto_1
    iput-wide v5, v3, Lcom/android/calendar/widget/a$b;->h:J

    move-wide/from16 v5, p4

    .line 25
    iput-wide v5, v3, Lcom/android/calendar/widget/a$b;->i:J

    move-wide/from16 v5, p6

    .line 26
    iput-wide v5, v3, Lcom/android/calendar/widget/a$b;->j:J

    .line 27
    iput-boolean v0, v3, Lcom/android/calendar/widget/a$b;->k:Z

    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/calendar/widget/a$b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    .line 29
    iput v2, v3, Lcom/android/calendar/widget/a$b;->a:I

    move/from16 v0, p12

    .line 30
    iput v0, v3, Lcom/android/calendar/widget/a$b;->l:I

    move/from16 v0, p13

    .line 31
    iput v0, v3, Lcom/android/calendar/widget/a$b;->g:I

    move-object/from16 v0, p14

    .line 32
    iput-object v0, v3, Lcom/android/calendar/widget/a$b;->m:Ljava/lang/String;

    move-object/from16 v0, p15

    .line 33
    iput-object v0, v3, Lcom/android/calendar/widget/a$b;->n:Ljava/lang/String;

    move-object/from16 v0, p16

    .line 34
    iput-object v0, v3, Lcom/android/calendar/widget/a$b;->o:Ljava/lang/String;

    const/4 v4, -0x1

    .line 35
    :try_start_0
    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v4, v0, 0xff

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventType change error"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Cal:D:AgendaWidgetModel"

    invoke-static {v5, v0}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_2
    iput v4, v3, Lcom/android/calendar/widget/a$b;->p:I

    .line 38
    iget-object v0, v1, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    move-object/from16 v4, p10

    invoke-static {v0, v4}, Lcom/android/calendar/event/e0;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/calendar/widget/a$b;->f:Ljava/lang/String;

    .line 39
    iput v2, v3, Lcom/android/calendar/widget/a$b;->e:I

    .line 40
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 41
    iput v2, v3, Lcom/android/calendar/widget/a$b;->c:I

    move-object/from16 v2, p11

    .line 42
    iput-object v2, v3, Lcom/android/calendar/widget/a$b;->d:Ljava/lang/String;

    goto :goto_3

    :cond_9
    const/16 v0, 0x8

    .line 43
    iput v0, v3, Lcom/android/calendar/widget/a$b;->c:I

    :goto_3
    return-object v3
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 35

    .line 1
    move-object/from16 v15, p0

    .line 2
    .line 3
    move-object/from16 v14, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    new-instance v13, Lcom/miui/calendar/util/r0;

    .line 8
    .line 9
    invoke-direct {v13, v0}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v12, Ljava/util/ArrayList;

    .line 13
    .line 14
    const/4 v11, 0x7

    .line 15
    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const/4 v10, 0x0

    .line 19
    move v1, v10

    .line 20
    :goto_0
    if-ge v1, v11, :cond_0

    .line 21
    .line 22
    new-instance v2, Ljava/util/LinkedList;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->M()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/miui/calendar/util/r0;->j()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v9, 0x1

    .line 45
    xor-int/2addr v1, v9

    .line 46
    iput-boolean v1, v15, Lcom/android/calendar/widget/a;->b:Z

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-static/range {p2 .. p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v13}, Lcom/miui/calendar/util/r0;->k()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    move v1, v9

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move v1, v10

    .line 63
    :goto_1
    invoke-virtual {v0, v1, v10}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, v15, Lcom/android/calendar/widget/a;->a:Ljava/lang/String;

    .line 68
    .line 69
    :cond_2
    const/4 v0, -0x1

    .line 70
    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 71
    .line 72
    .line 73
    iget-object v0, v15, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_9

    .line 84
    .line 85
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const/4 v1, 0x5

    .line 90
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 91
    .line 92
    .line 93
    move-result-wide v1

    .line 94
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    if-eqz v3, :cond_3

    .line 99
    .line 100
    move v6, v9

    .line 101
    goto :goto_3

    .line 102
    :cond_3
    move v6, v10

    .line 103
    :goto_3
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 104
    .line 105
    .line 106
    move-result-wide v3

    .line 107
    const/4 v5, 0x2

    .line 108
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    .line 109
    .line 110
    .line 111
    move-result-wide v9

    .line 112
    const/4 v5, 0x3

    .line 113
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v19

    .line 117
    const/4 v5, 0x4

    .line 118
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v20

    .line 122
    const/4 v5, 0x6

    .line 123
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 128
    .line 129
    .line 130
    move-result v21

    .line 131
    const/16 v5, 0x8

    .line 132
    .line 133
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 134
    .line 135
    .line 136
    move-result v22

    .line 137
    const/16 v5, 0x9

    .line 138
    .line 139
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 140
    .line 141
    .line 142
    move-result v23

    .line 143
    const/16 v5, 0xa

    .line 144
    .line 145
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v24

    .line 149
    const/16 v5, 0xb

    .line 150
    .line 151
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    const/16 v5, 0xc

    .line 155
    .line 156
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v25

    .line 160
    const/16 v5, 0xd

    .line 161
    .line 162
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v26

    .line 166
    const/16 v5, 0xe

    .line 167
    .line 168
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v27

    .line 172
    if-eqz v6, :cond_4

    .line 173
    .line 174
    invoke-static {v13, v3, v4, v8}, Lcom/android/calendar/common/Utils;->f(Lcom/miui/calendar/util/r0;JLjava/lang/String;)J

    .line 175
    .line 176
    .line 177
    move-result-wide v3

    .line 178
    invoke-static {v13, v9, v10, v8}, Lcom/android/calendar/common/Utils;->f(Lcom/miui/calendar/util/r0;JLjava/lang/String;)J

    .line 179
    .line 180
    .line 181
    move-result-wide v9

    .line 182
    :cond_4
    move-wide v4, v3

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v11, "buildFromCursor(): Row #"

    .line 189
    .line 190
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v0, " allDay:"

    .line 197
    .line 198
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, " start:"

    .line 205
    .line 206
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v0, " end:"

    .line 213
    .line 214
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    const-string v0, " eventId:"

    .line 221
    .line 222
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const-string v3, "Cal:D:AgendaWidgetModel"

    .line 233
    .line 234
    invoke-static {v3, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    move-object/from16 v28, v12

    .line 238
    .line 239
    iget-wide v11, v15, Lcom/android/calendar/widget/a;->g:J

    .line 240
    .line 241
    cmp-long v0, v9, v11

    .line 242
    .line 243
    if-gez v0, :cond_5

    .line 244
    .line 245
    :goto_4
    move-object/from16 v12, v28

    .line 246
    .line 247
    const/4 v9, 0x1

    .line 248
    const/4 v10, 0x0

    .line 249
    const/4 v11, 0x7

    .line 250
    goto/16 :goto_2

    .line 251
    .line 252
    :cond_5
    iget v0, v15, Lcom/android/calendar/widget/a;->i:I

    .line 253
    .line 254
    if-le v7, v0, :cond_6

    .line 255
    .line 256
    goto :goto_4

    .line 257
    :cond_6
    iget-object v0, v15, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 260
    .line 261
    .line 262
    move-result v12

    .line 263
    iget-object v11, v15, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 264
    .line 265
    const/16 v18, 0x65

    .line 266
    .line 267
    move-object/from16 v0, p0

    .line 268
    .line 269
    move v3, v6

    .line 270
    move/from16 v29, v6

    .line 271
    .line 272
    move/from16 p2, v7

    .line 273
    .line 274
    move-wide v6, v9

    .line 275
    move-object/from16 v30, v8

    .line 276
    .line 277
    move/from16 v8, p2

    .line 278
    .line 279
    const/4 v10, 0x1

    .line 280
    move/from16 v9, v21

    .line 281
    .line 282
    move-object/from16 v10, v19

    .line 283
    .line 284
    move-object/from16 v31, v11

    .line 285
    .line 286
    const/16 v19, 0x7

    .line 287
    .line 288
    move-object/from16 v11, v20

    .line 289
    .line 290
    move/from16 v33, v12

    .line 291
    .line 292
    move-object/from16 v32, v28

    .line 293
    .line 294
    move/from16 v12, v22

    .line 295
    .line 296
    move-object/from16 v34, v13

    .line 297
    .line 298
    move/from16 v13, v23

    .line 299
    .line 300
    move-object/from16 v14, v24

    .line 301
    .line 302
    move-object/from16 v15, v25

    .line 303
    .line 304
    move-object/from16 v16, v26

    .line 305
    .line 306
    move-object/from16 v17, v27

    .line 307
    .line 308
    invoke-direct/range {v0 .. v18}, Lcom/android/calendar/widget/a;->d(JZJJIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/calendar/widget/a$b;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    move-object/from16 v1, v31

    .line 313
    .line 314
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-object/from16 v0, p0

    .line 318
    .line 319
    iget v7, v0, Lcom/android/calendar/widget/a;->h:I

    .line 320
    .line 321
    move/from16 v1, p2

    .line 322
    .line 323
    if-ge v1, v7, :cond_7

    .line 324
    .line 325
    move v1, v7

    .line 326
    :cond_7
    sub-int/2addr v1, v7

    .line 327
    move-object/from16 v2, v32

    .line 328
    .line 329
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Ljava/util/LinkedList;

    .line 334
    .line 335
    new-instance v3, Lcom/android/calendar/widget/a$c;

    .line 336
    .line 337
    move/from16 v4, v33

    .line 338
    .line 339
    const/4 v5, 0x1

    .line 340
    invoke-direct {v3, v5, v4}, Lcom/android/calendar/widget/a$c;-><init>(II)V

    .line 341
    .line 342
    .line 343
    if-eqz v29, :cond_8

    .line 344
    .line 345
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_8
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    :goto_5
    move-object/from16 v14, p1

    .line 353
    .line 354
    move-object v15, v0

    .line 355
    move-object v12, v2

    .line 356
    move v9, v5

    .line 357
    move/from16 v11, v19

    .line 358
    .line 359
    move-object/from16 v8, v30

    .line 360
    .line 361
    move-object/from16 v13, v34

    .line 362
    .line 363
    const/4 v10, 0x0

    .line 364
    goto/16 :goto_2

    .line 365
    .line 366
    :cond_9
    move v5, v9

    .line 367
    move-object v2, v12

    .line 368
    move-object/from16 v34, v13

    .line 369
    .line 370
    move-object v0, v15

    .line 371
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    const/4 v10, 0x0

    .line 376
    :goto_6
    if-ge v10, v1, :cond_e

    .line 377
    .line 378
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    check-cast v3, Ljava/util/LinkedList;

    .line 383
    .line 384
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-nez v10, :cond_a

    .line 389
    .line 390
    if-nez v4, :cond_a

    .line 391
    .line 392
    iput-boolean v5, v0, Lcom/android/calendar/widget/a;->j:Z

    .line 393
    .line 394
    :cond_a
    const/4 v6, 0x0

    .line 395
    :goto_7
    if-ge v6, v4, :cond_d

    .line 396
    .line 397
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    check-cast v7, Lcom/android/calendar/widget/a$c;

    .line 402
    .line 403
    add-int/lit8 v8, v1, -0x1

    .line 404
    .line 405
    if-eq v10, v8, :cond_c

    .line 406
    .line 407
    add-int/lit8 v8, v4, -0x1

    .line 408
    .line 409
    if-ge v6, v8, :cond_b

    .line 410
    .line 411
    goto :goto_8

    .line 412
    :cond_b
    const/4 v8, 0x0

    .line 413
    goto :goto_9

    .line 414
    :cond_c
    :goto_8
    move v8, v5

    .line 415
    :goto_9
    iput-boolean v8, v7, Lcom/android/calendar/widget/a$c;->c:Z

    .line 416
    .line 417
    add-int/lit8 v6, v6, 0x1

    .line 418
    .line 419
    goto :goto_7

    .line 420
    :cond_d
    add-int/lit8 v10, v10, 0x1

    .line 421
    .line 422
    goto :goto_6

    .line 423
    :cond_e
    iget v1, v0, Lcom/android/calendar/widget/a;->h:I

    .line 424
    .line 425
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    const/4 v10, 0x0

    .line 430
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    if-eqz v3, :cond_12

    .line 435
    .line 436
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    check-cast v3, Ljava/util/LinkedList;

    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 443
    .line 444
    .line 445
    move-result v4

    .line 446
    if-nez v4, :cond_10

    .line 447
    .line 448
    iget v4, v0, Lcom/android/calendar/widget/a;->h:I

    .line 449
    .line 450
    if-eq v1, v4, :cond_f

    .line 451
    .line 452
    move-object/from16 v4, v34

    .line 453
    .line 454
    invoke-direct {v0, v1, v4}, Lcom/android/calendar/widget/a;->c(ILcom/miui/calendar/util/r0;)Lcom/android/calendar/widget/a$a;

    .line 455
    .line 456
    .line 457
    move-result-object v5

    .line 458
    iget-object v6, v0, Lcom/android/calendar/widget/a;->e:Ljava/util/List;

    .line 459
    .line 460
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    iget-object v7, v0, Lcom/android/calendar/widget/a;->e:Ljava/util/List;

    .line 465
    .line 466
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    iget-object v5, v0, Lcom/android/calendar/widget/a;->c:Ljava/util/List;

    .line 470
    .line 471
    new-instance v7, Lcom/android/calendar/widget/a$c;

    .line 472
    .line 473
    const/4 v8, 0x0

    .line 474
    invoke-direct {v7, v8, v6}, Lcom/android/calendar/widget/a$c;-><init>(II)V

    .line 475
    .line 476
    .line 477
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    goto :goto_b

    .line 481
    :cond_f
    move-object/from16 v4, v34

    .line 482
    .line 483
    const/4 v8, 0x0

    .line 484
    :goto_b
    iget-object v5, v0, Lcom/android/calendar/widget/a;->c:Ljava/util/List;

    .line 485
    .line 486
    invoke-interface {v5, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 487
    .line 488
    .line 489
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 490
    .line 491
    .line 492
    move-result v3

    .line 493
    add-int/2addr v10, v3

    .line 494
    goto :goto_c

    .line 495
    :cond_10
    move-object/from16 v4, v34

    .line 496
    .line 497
    const/4 v8, 0x0

    .line 498
    :goto_c
    add-int/lit8 v1, v1, 0x1

    .line 499
    .line 500
    const/16 v3, 0x14

    .line 501
    .line 502
    if-lt v10, v3, :cond_11

    .line 503
    .line 504
    goto :goto_d

    .line 505
    :cond_11
    move-object/from16 v34, v4

    .line 506
    .line 507
    goto :goto_a

    .line 508
    :cond_12
    :goto_d
    return-void
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
.end method

.method public b(Ljava/util/List;Ljava/lang/String;I)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v10, p2

    .line 4
    .line 5
    new-instance v9, Lcom/miui/calendar/util/r0;

    .line 6
    .line 7
    invoke-direct {v9, v10}, Lcom/miui/calendar/util/r0;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v8, 0x0

    .line 11
    iput-boolean v8, v11, Lcom/android/calendar/widget/a;->b:Z

    .line 12
    .line 13
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v19

    .line 17
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_7

    .line 22
    .line 23
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/calendar/common/event/schema/Event;

    .line 28
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_0

    .line 46
    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v1

    .line 55
    invoke-static {v9, v1, v2, v10}, Lcom/android/calendar/common/Utils;->f(Lcom/miui/calendar/util/r0;JLjava/lang/String;)J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    const-wide/32 v5, 0x5265c00

    .line 60
    .line 61
    .line 62
    add-long/2addr v1, v5

    .line 63
    invoke-static {v9, v1, v2, v10}, Lcom/android/calendar/common/Utils;->f(Lcom/miui/calendar/util/r0;JLjava/lang/String;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    move-wide v6, v1

    .line 68
    goto :goto_1

    .line 69
    :cond_0
    cmp-long v1, v1, v5

    .line 70
    .line 71
    if-lez v1, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    move-wide v6, v5

    .line 75
    :goto_1
    move-wide v4, v3

    .line 76
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 81
    .line 82
    .line 83
    invoke-static {v1}, Lt1/d;->b(Ljava/util/Calendar;)I

    .line 84
    .line 85
    .line 86
    move-result v15

    .line 87
    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Lt1/d;->b(Ljava/util/Calendar;)I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v2, "buildFromEventList(): allDay:"

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v2, " start:"

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v2

    .line 120
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, " end:"

    .line 124
    .line 125
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v2, " startDay:"

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v2, " endDay:"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v2, " eventId:"

    .line 152
    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 157
    .line 158
    .line 159
    move-result-wide v2

    .line 160
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v2, " title:"

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v2, " location:"

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v2, "Cal:D:AgendaWidgetModel"

    .line 192
    .line 193
    invoke-static {v2, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    const/4 v3, 0x7

    .line 205
    if-eq v2, v3, :cond_6

    .line 206
    .line 207
    const/16 v3, 0x8

    .line 208
    .line 209
    const-string v12, " | "

    .line 210
    .line 211
    const-string v13, "\u00b7"

    .line 212
    .line 213
    if-eq v2, v3, :cond_4

    .line 214
    .line 215
    const/16 v3, 0x9

    .line 216
    .line 217
    if-eq v2, v3, :cond_2

    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getLocation()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    move-object v10, v1

    .line 228
    move-object/from16 v21, v2

    .line 229
    .line 230
    move-object/from16 v20, v9

    .line 231
    .line 232
    :goto_2
    const/16 v18, 0x0

    .line 233
    .line 234
    goto/16 :goto_5

    .line 235
    .line 236
    :cond_2
    move-object v2, v0

    .line 237
    check-cast v2, Lcom/android/calendar/common/event/schema/CountdownEvent;

    .line 238
    .line 239
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->calDays(Ljava/util/Calendar;)I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-nez v3, :cond_3

    .line 244
    .line 245
    iget-object v3, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 246
    .line 247
    const v8, 0x7f120138

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    move-object/from16 v20, v9

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_3
    iget-object v8, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 258
    .line 259
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    move-object/from16 v20, v9

    .line 264
    .line 265
    const/4 v9, 0x1

    .line 266
    new-array v9, v9, [Ljava/lang/Object;

    .line 267
    .line 268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v17

    .line 272
    const/16 v18, 0x0

    .line 273
    .line 274
    aput-object v17, v9, v18

    .line 275
    .line 276
    const v10, 0x7f100033

    .line 277
    .line 278
    .line 279
    invoke-virtual {v8, v10, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v3

    .line 283
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getContent()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v3

    .line 305
    iget-object v8, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 306
    .line 307
    const v9, 0x7f120137

    .line 308
    .line 309
    .line 310
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    new-instance v9, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    iget-object v8, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 326
    .line 327
    invoke-virtual {v2, v8, v1}, Lcom/android/calendar/common/event/schema/CountdownEvent;->getDateString(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    move-object/from16 v21, v1

    .line 339
    .line 340
    move-object v10, v3

    .line 341
    goto :goto_2

    .line 342
    :cond_4
    move-object/from16 v20, v9

    .line 343
    .line 344
    move-object v2, v0

    .line 345
    check-cast v2, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    .line 346
    .line 347
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calAnniversary(Ljava/util/Calendar;)I

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    if-lez v3, :cond_5

    .line 352
    .line 353
    iget-object v1, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 354
    .line 355
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    const v8, 0x7f100015

    .line 360
    .line 361
    .line 362
    const/4 v9, 0x1

    .line 363
    new-array v9, v9, [Ljava/lang/Object;

    .line 364
    .line 365
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v10

    .line 369
    const/16 v18, 0x0

    .line 370
    .line 371
    aput-object v10, v9, v18

    .line 372
    .line 373
    invoke-virtual {v1, v8, v3, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    goto :goto_4

    .line 378
    :cond_5
    const/4 v9, 0x1

    .line 379
    const/16 v18, 0x0

    .line 380
    .line 381
    invoke-virtual {v2, v1}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->calDays(Ljava/util/Calendar;)I

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    iget-object v3, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 386
    .line 387
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 388
    .line 389
    .line 390
    move-result-object v3

    .line 391
    const v8, 0x7f100012

    .line 392
    .line 393
    .line 394
    new-array v9, v9, [Ljava/lang/Object;

    .line 395
    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    .line 398
    .line 399
    move-result-object v10

    .line 400
    aput-object v10, v9, v18

    .line 401
    .line 402
    invoke-virtual {v3, v8, v1, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getContent()Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v8

    .line 415
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    iget-object v3, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 429
    .line 430
    const v8, 0x7f120072

    .line 431
    .line 432
    .line 433
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    new-instance v8, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    iget-object v3, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 449
    .line 450
    invoke-virtual {v2, v3}, Lcom/android/calendar/common/event/schema/AnniversaryEvent;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    move-object v10, v1

    .line 462
    move-object/from16 v21, v2

    .line 463
    .line 464
    goto :goto_5

    .line 465
    :cond_6
    move/from16 v18, v8

    .line 466
    .line 467
    move-object/from16 v20, v9

    .line 468
    .line 469
    move-object v1, v0

    .line 470
    check-cast v1, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 471
    .line 472
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    iget-object v3, v11, Lcom/android/calendar/widget/a;->f:Landroid/content/Context;

    .line 477
    .line 478
    invoke-virtual {v1, v3}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getDateString(Landroid/content/Context;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    move-object/from16 v21, v1

    .line 483
    .line 484
    move-object v10, v2

    .line 485
    :goto_5
    iget-object v9, v11, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 488
    .line 489
    .line 490
    move-result-wide v1

    .line 491
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->isAllDay()Z

    .line 492
    .line 493
    .line 494
    move-result v3

    .line 495
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getColor()I

    .line 496
    .line 497
    .line 498
    move-result v12

    .line 499
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 500
    .line 501
    .line 502
    move-result-object v8

    .line 503
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getSelfAttendeeStatus()I

    .line 504
    .line 505
    .line 506
    move-result v13

    .line 507
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getDescription()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v8

    .line 511
    move/from16 v22, v14

    .line 512
    .line 513
    move-object v14, v8

    .line 514
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 515
    .line 516
    .line 517
    move-result-object v8

    .line 518
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getAccountName()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v8

    .line 522
    move/from16 v23, v15

    .line 523
    .line 524
    move-object v15, v8

    .line 525
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 526
    .line 527
    .line 528
    move-result-object v8

    .line 529
    invoke-virtual {v8}, Lcom/android/calendar/common/event/schema/EventEx;->getAccountType()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v16

    .line 533
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getHasExtendedProperties()I

    .line 538
    .line 539
    .line 540
    move-result v0

    .line 541
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v17

    .line 545
    move-object/from16 v0, p0

    .line 546
    .line 547
    move/from16 v24, v18

    .line 548
    .line 549
    move/from16 v8, v23

    .line 550
    .line 551
    move-object/from16 v25, v9

    .line 552
    .line 553
    move/from16 v9, v22

    .line 554
    .line 555
    move-object/from16 v11, v21

    .line 556
    .line 557
    move/from16 v18, p3

    .line 558
    .line 559
    invoke-direct/range {v0 .. v18}, Lcom/android/calendar/widget/a;->d(JZJJIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/calendar/widget/a$b;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    move-object/from16 v1, v25

    .line 564
    .line 565
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    move-object/from16 v11, p0

    .line 569
    .line 570
    move-object/from16 v10, p2

    .line 571
    .line 572
    move-object/from16 v9, v20

    .line 573
    .line 574
    move/from16 v8, v24

    .line 575
    .line 576
    goto/16 :goto_0

    .line 577
    .line 578
    :cond_7
    return-void
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\nAgendaWidgetModel [eventInfos="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/calendar/widget/a;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
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
