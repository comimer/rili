.class Lcom/android/calendar/widget/MonthWidgetEventService$a;
.super Ljava/lang/Object;
.source "MonthWidgetEventService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/widget/MonthWidgetEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/calendar/common/event/schema/Event;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field final synthetic d:Lcom/android/calendar/widget/MonthWidgetEventService;


# direct methods
.method public constructor <init>(Lcom/android/calendar/widget/MonthWidgetEventService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->d:Lcom/android/calendar/widget/MonthWidgetEventService;

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
    iput-object p1, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->c:I

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->a:Landroid/content/Context;

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    const-string p2, "appWidgetId"

    .line 21
    .line 22
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->c:I

    .line 27
    .line 28
    :cond_0
    return-void
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
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 5

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Landroid/widget/RemoteViews;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f0d0189

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    const v1, 0x7f0a02d4

    .line 20
    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v2, 0x8

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v2, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->a:Landroid/content/Context;

    .line 35
    .line 36
    iget v3, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->c:I

    .line 37
    .line 38
    invoke-static {v2, v3}, Le2/b;->c(Landroid/content/Context;I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 43
    .line 44
    .line 45
    const v1, 0x7f0a027e

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 49
    .line 50
    .line 51
    const v3, 0x7f0a027d

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v3, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->b:Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-ge p1, v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->b:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/android/calendar/common/event/schema/Event;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->a:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getTitle()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {v2, v4}, Lcom/android/calendar/event/e0;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->a:Landroid/content/Context;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->d:Lcom/android/calendar/widget/MonthWidgetEventService;

    .line 89
    .line 90
    invoke-static {v2}, Lcom/android/calendar/common/Utils;->U(Landroid/content/Context;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-static {v1, p1, v2, v4}, Lcom/miui/calendar/util/e0;->e(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;Ljava/lang/String;Ljava/util/Calendar;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->a:Landroid/content/Context;

    .line 106
    .line 107
    invoke-static {v1, p1}, Lcom/android/calendar/common/Utils;->b0(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    const-string v2, "extra_key_event_type"

    .line 116
    .line 117
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    const p1, 0x7f0a027b

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    return-object v0
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

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

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
    iget-object v0, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/miui/calendar/util/r0;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->M()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->a:Landroid/content/Context;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->y(Z)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    invoke-virtual {v0}, Lcom/miui/calendar/util/r0;->l()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    invoke-static {v3, v4, v5, v6}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v1, v3, v2}, Ls1/e;->d(Landroid/content/Context;II)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v3, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->b:Ljava/util/ArrayList;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/calendar/common/event/schema/Event;

    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/android/calendar/common/event/schema/Event;->getEndTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    invoke-virtual {v0, v2}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 57
    .line 58
    .line 59
    move-result-wide v7

    .line 60
    cmp-long v5, v5, v7

    .line 61
    .line 62
    if-lez v5, :cond_0

    .line 63
    .line 64
    iget-object v5, p0, Lcom/android/calendar/widget/MonthWidgetEventService$a;->b:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    monitor-exit v3

    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw v0
    .line 75
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
