.class Lcom/android/calendar/widget/MonthWidgetService$a;
.super Ljava/lang/Object;
.source "MonthWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/MonthWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/res/Resources;

.field private c:I

.field private d:Ljava/util/Calendar;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field final synthetic g:Lcom/android/calendar/widget/MonthWidgetService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/widget/MonthWidgetService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->g:Lcom/android/calendar/widget/MonthWidgetService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->f:I

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->b:Landroid/content/res/Resources;

    .line 23
    .line 24
    if-eqz p3, :cond_0

    .line 25
    .line 26
    const-string p2, "appWidgetId"

    .line 27
    .line 28
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->f:I

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string p2, "MonthRemoteViewFactory widgetId : "

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget p2, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->f:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "Cal:D:MonthWidgetService"

    .line 54
    .line 55
    invoke-static {p2, p1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
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

.method private a(Ljava/util/Calendar;)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/calendar/widget/MonthWidgetService$a;->b(Ljava/util/Calendar;)Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->l()J

    .line 11
    .line 12
    .line 13
    move-result-wide v3

    .line 14
    invoke-static {v1, v2, v3, v4}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->e:Ljava/util/ArrayList;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->e:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/android/calendar/common/event/schema/Event;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/EventEx;->getStartJulianDay()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-gt v4, p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getEndJulianDay()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-gt p1, v3, :cond_0

    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return v0

    .line 61
    :cond_1
    monitor-exit v1

    .line 62
    const/4 p1, 0x0

    .line 63
    return p1

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p1
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

.method private b(Ljava/util/Calendar;)Lcom/miui/calendar/util/r0;
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/miui/calendar/util/r0;->D(J)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0, p1}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 15
    .line 16
    .line 17
    return-object v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method private c(Ljava/util/Calendar;)I
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget v2, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->f:I

    .line 8
    .line 9
    invoke-static {v1, v2}, Le2/b;->c(Landroid/content/Context;I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, p1}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->g:Lcom/android/calendar/widget/MonthWidgetService;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const v0, 0x7f06040f

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :cond_0
    return v1
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
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->c:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x7

    .line 4
    .line 5
    return v0
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

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RemoteViews;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x7f0d0185

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "Cal:D:MonthWidgetService"

    .line 7
    .line 8
    if-ltz v1, :cond_12

    .line 9
    .line 10
    iget v4, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->c:I

    .line 11
    .line 12
    mul-int/lit8 v4, v4, 0x7

    .line 13
    .line 14
    if-lt v1, v4, :cond_0

    .line 15
    .line 16
    goto/16 :goto_d

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->d:Ljava/util/Calendar;

    .line 23
    .line 24
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 29
    .line 30
    .line 31
    const/4 v5, 0x6

    .line 32
    invoke-virtual {v4, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v4, v1}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    sget v7, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 48
    .line 49
    const/4 v8, 0x2

    .line 50
    invoke-virtual {v6, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    const/4 v9, 0x1

    .line 62
    const/4 v10, 0x0

    .line 63
    if-ne v7, v6, :cond_1

    .line 64
    .line 65
    move v6, v9

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v6, v10

    .line 68
    :goto_0
    if-nez v6, :cond_2

    .line 69
    .line 70
    const-string v1, "is not current month, return null"

    .line 71
    .line 72
    invoke-static {v3, v1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object v2

    .line 76
    :cond_2
    iget v2, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->c:I

    .line 77
    .line 78
    const/4 v7, 0x5

    .line 79
    const/4 v11, 0x4

    .line 80
    if-ne v2, v11, :cond_3

    .line 81
    .line 82
    const v2, 0x7f0d0179

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-ne v2, v7, :cond_4

    .line 87
    .line 88
    const v2, 0x7f0d017d

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const v2, 0x7f0d0181

    .line 93
    .line 94
    .line 95
    :goto_1
    new-instance v12, Landroid/widget/RemoteViews;

    .line 96
    .line 97
    iget-object v13, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    invoke-direct {v12, v13, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    invoke-direct {v0, v4}, Lcom/android/calendar/widget/MonthWidgetService$a;->c(Ljava/util/Calendar;)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v4, v7}, Ljava/util/Calendar;->get(I)I

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    const v13, 0x7f0a01e7

    .line 119
    .line 120
    .line 121
    invoke-virtual {v12, v13, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v12, v13, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    const v7, 0x7f0a0644

    .line 128
    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    const v14, 0x7f080704

    .line 133
    .line 134
    .line 135
    invoke-virtual {v12, v7, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    const v14, 0x7f080702

    .line 140
    .line 141
    .line 142
    invoke-virtual {v12, v7, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 143
    .line 144
    .line 145
    :goto_2
    const-string v15, ""

    .line 146
    .line 147
    const v11, 0x7f0a0703

    .line 148
    .line 149
    .line 150
    if-nez v1, :cond_c

    .line 151
    .line 152
    iget-object v14, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 153
    .line 154
    invoke-static {v14}, Lcom/miui/calendar/util/y;->t(Landroid/content/Context;)Z

    .line 155
    .line 156
    .line 157
    move-result v14

    .line 158
    if-eqz v14, :cond_c

    .line 159
    .line 160
    iget-object v14, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 161
    .line 162
    invoke-static {v14}, Lcom/miui/calendar/util/DaysOffUtils;->g(Landroid/content/Context;)Lcom/miui/calendar/util/DaysOffUtils;

    .line 163
    .line 164
    .line 165
    move-result-object v14

    .line 166
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    invoke-virtual {v14, v13, v5}, Lcom/miui/calendar/util/DaysOffUtils;->e(II)I

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-ne v5, v9, :cond_8

    .line 179
    .line 180
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->b:Landroid/content/res/Resources;

    .line 181
    .line 182
    if-eqz v1, :cond_6

    .line 183
    .line 184
    const v5, 0x7f060408

    .line 185
    .line 186
    .line 187
    goto :goto_3

    .line 188
    :cond_6
    const v5, 0x7f060412

    .line 189
    .line 190
    .line 191
    :goto_3
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->b:Landroid/content/res/Resources;

    .line 196
    .line 197
    iget-object v13, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 198
    .line 199
    invoke-static {v13}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 200
    .line 201
    .line 202
    move-result v13

    .line 203
    if-eqz v13, :cond_7

    .line 204
    .line 205
    const v13, 0x7f120526

    .line 206
    .line 207
    .line 208
    goto :goto_4

    .line 209
    :cond_7
    const v13, 0x7f120525

    .line 210
    .line 211
    .line 212
    :goto_4
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-virtual {v12, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_8
    if-ne v5, v8, :cond_b

    .line 221
    .line 222
    iget-object v2, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->b:Landroid/content/res/Resources;

    .line 223
    .line 224
    if-eqz v1, :cond_9

    .line 225
    .line 226
    const v5, 0x7f060408

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_9
    const v5, 0x7f06041a

    .line 231
    .line 232
    .line 233
    :goto_5
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 234
    .line 235
    .line 236
    move-result v2

    .line 237
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->b:Landroid/content/res/Resources;

    .line 238
    .line 239
    iget-object v13, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 240
    .line 241
    invoke-static {v13}, Lcom/miui/calendar/util/y;->f(Landroid/content/Context;)Z

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    if-eqz v13, :cond_a

    .line 246
    .line 247
    const v13, 0x7f1206ee

    .line 248
    .line 249
    .line 250
    goto :goto_6

    .line 251
    :cond_a
    const v13, 0x7f1206ed

    .line 252
    .line 253
    .line 254
    :goto_6
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v12, v11, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    goto :goto_7

    .line 262
    :cond_b
    invoke-virtual {v12, v11, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    move v9, v10

    .line 266
    :goto_7
    invoke-virtual {v12, v11, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 267
    .line 268
    .line 269
    goto :goto_8

    .line 270
    :cond_c
    invoke-virtual {v12, v11, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 271
    .line 272
    .line 273
    move v9, v10

    .line 274
    :goto_8
    const v2, 0x7f0a0274

    .line 275
    .line 276
    .line 277
    if-nez v1, :cond_e

    .line 278
    .line 279
    invoke-direct {v0, v4}, Lcom/android/calendar/widget/MonthWidgetService$a;->a(Ljava/util/Calendar;)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    if-eqz v5, :cond_e

    .line 284
    .line 285
    if-nez v9, :cond_e

    .line 286
    .line 287
    if-eqz v6, :cond_e

    .line 288
    .line 289
    invoke-virtual {v12, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 290
    .line 291
    .line 292
    iget-object v5, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->b:Landroid/content/res/Resources;

    .line 293
    .line 294
    if-eqz v1, :cond_d

    .line 295
    .line 296
    const v14, 0x7f060408

    .line 297
    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_d
    const v14, 0x7f060404

    .line 301
    .line 302
    .line 303
    :goto_9
    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getColor(I)I

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    iget-object v9, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->b:Landroid/content/res/Resources;

    .line 308
    .line 309
    const v13, 0x7f07069e

    .line 310
    .line 311
    .line 312
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 313
    .line 314
    .line 315
    move-result v9

    .line 316
    mul-int/2addr v9, v8

    .line 317
    invoke-static {v5, v9}, Lcom/miui/calendar/util/x0;->o(II)Landroid/graphics/Bitmap;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v12, v2, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 322
    .line 323
    .line 324
    goto :goto_a

    .line 325
    :cond_e
    const/16 v5, 0x8

    .line 326
    .line 327
    invoke-virtual {v12, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 328
    .line 329
    .line 330
    :goto_a
    const v2, 0x7f0a03ab

    .line 331
    .line 332
    .line 333
    if-nez v1, :cond_10

    .line 334
    .line 335
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 336
    .line 337
    invoke-static {v1}, Lcom/miui/calendar/util/y;->q(Landroid/content/Context;)Z

    .line 338
    .line 339
    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_10

    .line 342
    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .line 347
    .line 348
    const-string v5, "mWidgetId : "

    .line 349
    .line 350
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    iget v5, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->f:I

    .line 354
    .line 355
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-static {v3, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 366
    .line 367
    iget v3, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->f:I

    .line 368
    .line 369
    invoke-static {v1, v3}, Le2/b;->e(Landroid/content/Context;I)I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    invoke-virtual {v12, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 374
    .line 375
    .line 376
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 377
    .line 378
    iget-object v3, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->b:Landroid/content/res/Resources;

    .line 379
    .line 380
    invoke-static {v1, v4, v3}, Lz3/b;->c(Landroid/content/Context;Ljava/util/Calendar;Landroid/content/res/Resources;)Ljava/util/List;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    if-eqz v1, :cond_f

    .line 385
    .line 386
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 387
    .line 388
    .line 389
    move-result v3

    .line 390
    if-lez v3, :cond_f

    .line 391
    .line 392
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, Ljava/lang/CharSequence;

    .line 397
    .line 398
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 399
    .line 400
    .line 401
    move-result v3

    .line 402
    if-nez v3, :cond_f

    .line 403
    .line 404
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    check-cast v1, Ljava/lang/CharSequence;

    .line 409
    .line 410
    invoke-virtual {v12, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    goto :goto_b

    .line 414
    :cond_f
    invoke-virtual {v12, v2, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 415
    .line 416
    .line 417
    goto :goto_b

    .line 418
    :cond_10
    invoke-virtual {v12, v2, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 419
    .line 420
    .line 421
    :goto_b
    iget-object v1, v0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 422
    .line 423
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 424
    .line 425
    .line 426
    move-result-wide v3

    .line 427
    invoke-static {v1, v3, v4}, Lcom/android/calendar/widget/AgendaWidgetProvider;->b(Landroid/content/Context;J)Landroid/content/Intent;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    const v3, 0x7f0a03f7

    .line 432
    .line 433
    .line 434
    invoke-virtual {v12, v3, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 435
    .line 436
    .line 437
    if-eqz v6, :cond_11

    .line 438
    .line 439
    goto :goto_c

    .line 440
    :cond_11
    const/4 v10, 0x4

    .line 441
    :goto_c
    invoke-virtual {v12, v7, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 442
    .line 443
    .line 444
    const v1, 0x7f0a01e7

    .line 445
    .line 446
    .line 447
    invoke-virtual {v12, v1, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v12, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v12, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 454
    .line 455
    .line 456
    return-object v12

    .line 457
    :cond_12
    :goto_d
    new-instance v4, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v5, "getViewAt(): position invalid: "

    .line 463
    .line 464
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    invoke-static {v3, v1}, Lcom/miui/calendar/util/z;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    return-object v2
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

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    return-void
.end method

.method public onDataSetChanged()V
    .locals 9

    .line 1
    const-string v0, "Cal:D:MonthWidgetService"

    .line 2
    .line 3
    const-string v1, "onDataSetChanged()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget v1, Lcom/android/calendar/widget/MonthWidgetProvider;->e:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/util/Date;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->b(Landroid/content/Context;Ljava/util/Date;)Ljava/util/Calendar;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->d:Ljava/util/Calendar;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x5

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/miui/calendar/util/e0;->u(Landroid/content/Context;Ljava/util/Date;)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    iput v0, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->c:I

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->d:Ljava/util/Calendar;

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/android/calendar/widget/MonthWidgetService$a;->b(Ljava/util/Calendar;)Lcom/miui/calendar/util/r0;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->a:Landroid/content/Context;

    .line 54
    .line 55
    const/4 v2, 0x1

    .line 56
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->l()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    invoke-static {v3, v4, v5, v6}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget v4, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->c:I

    .line 69
    .line 70
    mul-int/lit8 v4, v4, 0x7

    .line 71
    .line 72
    invoke-static {v1, v3, v4}, Ls1/e;->d(Landroid/content/Context;II)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v3, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->e:Ljava/util/ArrayList;

    .line 77
    .line 78
    monitor-enter v3

    .line 79
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->e:Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Lcom/android/calendar/common/event/schema/Event;

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getStartTimeMillis()J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    cmp-long v5, v5, v7

    .line 109
    .line 110
    if-lez v5, :cond_1

    .line 111
    .line 112
    iget-object v5, p0, Lcom/android/calendar/widget/MonthWidgetService$a;->e:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    monitor-exit v3

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw v0
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
    .locals 0

    return-void
.end method
