.class Lcom/android/calendar/event/NewBaseEditFragment$i;
.super Landroid/content/AsyncQueryHandler;
.source "NewBaseEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/NewBaseEditFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/NewBaseEditFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

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
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    if-nez v2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object v3

    check-cast v3, Lmiuix/appcompat/app/m;

    if-eqz v3, :cond_1b

    .line 2
    invoke-virtual {v3}, Lmiuix/appcompat/app/m;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_a

    :cond_1
    const-wide/16 v3, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x2

    const-string v7, "Cal:D:BaseEditFragment"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_12

    if-eq v0, v6, :cond_b

    if-eq v0, v5, :cond_9

    const/16 v5, 0x8

    if-eq v0, v5, :cond_2

    .line 3
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    goto/16 :goto_9

    :cond_2
    const-string v0, "onQueryComplete(): TOKEN_CALENDARS"

    .line 4
    invoke-static {v7, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarId()J

    move-result-wide v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v10, v3

    const-string v3, "onQueryComplete(): move to pos "

    if-nez v0, :cond_5

    .line 6
    :try_start_1
    invoke-static/range {p3 .. p3}, Lcom/android/calendar/common/Utils;->Q0(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onQueryComplete: setting cursor with "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " calendars"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v4, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v6, v4, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/calendar/common/Utils;->o(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v6

    iput v6, v4, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    .line 11
    iget-object v4, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-virtual {v4, v0}, Lcom/android/calendar/event/NewBaseEditFragment;->T(Landroid/database/Cursor;)V

    .line 12
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget v4, v0, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    .line 13
    iget-object v4, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    invoke-static {v4, v6}, Lcom/android/calendar/common/Utils;->o(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v4

    iput v4, v0, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    .line 14
    :cond_3
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget v4, v0, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    if-ltz v4, :cond_4

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed when creating event, cursor.getCount():"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 16
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 18
    :cond_5
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-static {v0, v2}, Lcom/android/calendar/event/j;->s(Lcom/android/calendar/common/event/schema/Event;Landroid/database/Cursor;)Z

    .line 19
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-static {v0, v2}, Lcom/android/calendar/event/j;->s(Lcom/android/calendar/common/event/schema/Event;Landroid/database/Cursor;)Z

    .line 20
    invoke-static/range {p3 .. p3}, Lcom/android/calendar/common/Utils;->Q0(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 21
    iget-object v4, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v6, v4, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 22
    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarId()J

    move-result-wide v10

    .line 23
    invoke-static {v0, v10, v11}, Lcom/android/calendar/common/Utils;->n(Landroid/database/Cursor;J)I

    move-result v6

    iput v6, v4, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    .line 24
    iget-object v4, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-virtual {v4, v0}, Lcom/android/calendar/event/NewBaseEditFragment;->T(Landroid/database/Cursor;)V

    .line 25
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v4, v0, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    iget v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->E:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed when editing event, cursor.getCount():"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->D:Landroid/database/Cursor;

    .line 27
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_6
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->p(Lcom/android/calendar/event/NewBaseEditFragment;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->n(Lcom/android/calendar/event/NewBaseEditFragment;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-static {v0}, Lcom/android/calendar/event/j;->f(Lcom/android/calendar/common/event/schema/Event;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 30
    :cond_7
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v8}, Lcom/android/calendar/event/NewBaseEditFragment;->q(Lcom/android/calendar/event/NewBaseEditFragment;Z)Z

    new-array v0, v9, [Ljava/lang/String;

    .line 31
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 32
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    .line 33
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v3}, Lcom/android/calendar/event/NewBaseEditFragment;->l(Lcom/android/calendar/event/NewBaseEditFragment;)Lcom/android/calendar/event/NewBaseEditFragment$i;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    sget-object v13, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lcom/android/calendar/event/j;->h:[Ljava/lang/String;

    const-string v15, "_id=?"

    const/16 v17, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v17}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :cond_8
    :goto_0
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    .line 35
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v5}, Lcom/android/calendar/event/NewBaseEditFragment;->m(Lcom/android/calendar/event/NewBaseEditFragment;I)V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    .line 36
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v3, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    .line 37
    throw v0

    :cond_9
    const-string v0, "onQueryComplete(): TOKEN_REMINDERS"

    .line 38
    invoke-static {v7, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :goto_1
    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 41
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 42
    invoke-static {v0, v3}, Lcom/android/calendar/common/event/schema/Reminder;->valueOf(II)Lcom/android/calendar/common/event/schema/Reminder;

    move-result-object v0

    .line 43
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/calendar/common/event/schema/EventEx;->addReminder(Lcom/android/calendar/common/event/schema/Reminder;)V

    .line 44
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/calendar/common/event/schema/EventEx;->addReminder(Lcom/android/calendar/common/event/schema/Reminder;)V

    goto :goto_1

    .line 45
    :cond_a
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 46
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    .line 48
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v5}, Lcom/android/calendar/event/NewBaseEditFragment;->m(Lcom/android/calendar/event/NewBaseEditFragment;I)V

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    .line 49
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v3, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    .line 50
    throw v0

    :cond_b
    const-string v0, "onQueryComplete(): TOKEN_ATTENDEES"

    .line 51
    invoke-static {v7, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :try_start_3
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    move v3, v9

    goto :goto_2

    :cond_c
    move v3, v8

    :goto_2
    invoke-static {v0, v3}, Lcom/android/calendar/event/NewBaseEditFragment;->o(Lcom/android/calendar/event/NewBaseEditFragment;Z)Z

    .line 53
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 54
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x3

    .line 57
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v6, :cond_f

    if-eqz v3, :cond_d

    .line 58
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizer(Ljava/lang/String;)V

    .line 59
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    iget-object v10, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v10, v10, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/EventEx;->getOwnerAccount()Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 61
    invoke-virtual {v7, v10}, Lcom/android/calendar/common/event/schema/EventEx;->setIsOrganizer(Z)V

    .line 62
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizer(Ljava/lang/String;)V

    .line 63
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    iget-object v10, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v10, v10, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/EventEx;->getOwnerAccount()Ljava/lang/String;

    move-result-object v10

    .line 64
    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 65
    invoke-virtual {v7, v10}, Lcom/android/calendar/common/event/schema/EventEx;->setIsOrganizer(Z)V

    .line 66
    :cond_d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 67
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    iget-object v10, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v10, v10, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/EventEx;->getOrganizer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizerDisplayName(Ljava/lang/String;)V

    .line 68
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    iget-object v10, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v10, v10, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/calendar/common/event/schema/EventEx;->getOrganizer()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizerDisplayName(Ljava/lang/String;)V

    goto :goto_4

    .line 69
    :cond_e
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizerDisplayName(Ljava/lang/String;)V

    .line 70
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setOrganizerDisplayName(Ljava/lang/String;)V

    :cond_f
    :goto_4
    if-eqz v3, :cond_10

    .line 71
    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/EventEx;->getOwnerAccount()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v7, v7, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 72
    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/calendar/common/event/schema/EventEx;->getOwnerAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 73
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 74
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setOwnerAttendeeId(I)V

    .line 75
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/calendar/common/event/schema/EventEx;->setSelfAttendeeStatus(I)V

    .line 76
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v3, v3, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/calendar/common/event/schema/EventEx;->setOwnerAttendeeId(I)V

    .line 77
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/calendar/common/event/schema/EventEx;->setSelfAttendeeStatus(I)V

    goto/16 :goto_3

    .line 78
    :cond_10
    new-instance v7, Lcom/android/calendar/common/event/schema/Attendee;

    invoke-direct {v7, v0, v3}, Lcom/android/calendar/common/event/schema/Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v7, v4}, Lcom/android/calendar/common/event/schema/Attendee;->setStatus(I)V

    .line 80
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/calendar/common/event/schema/EventEx;->addAttendee(Lcom/android/calendar/common/event/schema/Attendee;)V

    .line 81
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/calendar/common/event/schema/EventEx;->addAttendee(Lcom/android/calendar/common/event/schema/Attendee;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_3

    .line 82
    :cond_11
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    .line 83
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v6}, Lcom/android/calendar/event/NewBaseEditFragment;->m(Lcom/android/calendar/event/NewBaseEditFragment;I)V

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    .line 84
    iget-object v3, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v3, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    .line 85
    throw v0

    :cond_12
    const-string v0, "onQueryComplete(): TOKEN_EVENT"

    .line 86
    invoke-static {v7, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 88
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    .line 89
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    invoke-virtual {v0, v9}, Lcom/android/calendar/event/NewBaseEditFragment$h;->a(I)V

    .line 90
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iput-boolean v8, v0, Lcom/android/calendar/event/NewBaseEditFragment;->w:Z

    .line 91
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->q:Lcom/android/calendar/event/NewBaseEditFragment$h;

    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment$h;->run()V

    return-void

    .line 92
    :cond_13
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-virtual {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->H()Lcom/android/calendar/common/event/schema/Event;

    move-result-object v7

    iput-object v7, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    .line 93
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-static {v0, v2}, Lcom/android/calendar/event/j;->t(Lcom/android/calendar/common/event/schema/Event;Landroid/database/Cursor;)V

    .line 94
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-static {v0, v2}, Lcom/android/calendar/event/j;->t(Lcom/android/calendar/common/event/schema/Event;Landroid/database/Cursor;)V

    .line 95
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    .line 96
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v2}, Lcom/android/calendar/event/NewBaseEditFragment;->k(Lcom/android/calendar/event/NewBaseEditFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setUri(Ljava/lang/String;)V

    .line 97
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v2}, Lcom/android/calendar/event/NewBaseEditFragment;->k(Lcom/android/calendar/event/NewBaseEditFragment;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setUri(Ljava/lang/String;)V

    .line 98
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-wide v10, v2, Lcom/android/calendar/event/NewBaseEditFragment;->m:J

    invoke-virtual {v0, v10, v11}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalStart(J)V

    .line 99
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-wide v10, v2, Lcom/android/calendar/event/NewBaseEditFragment;->n:J

    invoke-virtual {v0, v10, v11}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalEnd(J)V

    .line 100
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-wide v10, v2, Lcom/android/calendar/event/NewBaseEditFragment;->m:J

    iget-object v2, v2, Lcom/android/calendar/event/NewBaseEditFragment;->d:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getStart()J

    move-result-wide v12

    cmp-long v2, v10, v12

    if-nez v2, :cond_14

    move v2, v9

    goto :goto_5

    :cond_14
    move v2, v8

    :goto_5
    invoke-virtual {v0, v2}, Lcom/android/calendar/common/event/schema/EventEx;->setFirstEventInSeries(Z)V

    .line 101
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-wide v10, v2, Lcom/android/calendar/event/NewBaseEditFragment;->m:J

    invoke-virtual {v0, v10, v11}, Lcom/android/calendar/common/event/schema/EventEx;->setStart(J)V

    .line 102
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-wide v10, v2, Lcom/android/calendar/event/NewBaseEditFragment;->n:J

    invoke-virtual {v0, v10, v11}, Lcom/android/calendar/common/event/schema/EventEx;->setEnd(J)V

    .line 103
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    move-result-wide v10

    .line 104
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->hasAttendeeData()Z

    move-result v0

    if-eqz v0, :cond_15

    cmp-long v0, v10, v3

    if-eqz v0, :cond_15

    .line 105
    sget-object v15, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    new-array v0, v9, [Ljava/lang/String;

    .line 106
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 107
    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v2}, Lcom/android/calendar/event/NewBaseEditFragment;->l(Lcom/android/calendar/event/NewBaseEditFragment;)Lcom/android/calendar/event/NewBaseEditFragment$i;

    move-result-object v12

    const/4 v13, 0x2

    const/4 v14, 0x0

    sget-object v16, Lcom/android/calendar/event/j;->j:[Ljava/lang/String;

    const/16 v19, 0x0

    const-string v17, "event_id=? AND attendeeEmail IS NOT NULL"

    move-object/from16 v18, v0

    invoke-virtual/range {v12 .. v19}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 108
    :cond_15
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v6}, Lcom/android/calendar/event/NewBaseEditFragment;->m(Lcom/android/calendar/event/NewBaseEditFragment;I)V

    .line 109
    :goto_6
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->hasAlarm()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 110
    sget-object v15, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    new-array v0, v9, [Ljava/lang/String;

    .line 111
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 112
    iget-object v2, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v2}, Lcom/android/calendar/event/NewBaseEditFragment;->l(Lcom/android/calendar/event/NewBaseEditFragment;)Lcom/android/calendar/event/NewBaseEditFragment$i;

    move-result-object v12

    const/4 v13, 0x4

    const/4 v14, 0x0

    sget-object v16, Lcom/android/calendar/event/j;->f:[Ljava/lang/String;

    const/16 v19, 0x0

    const-string v17, "event_id=?"

    move-object/from16 v18, v0

    invoke-virtual/range {v12 .. v19}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 113
    :cond_16
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v5}, Lcom/android/calendar/event/NewBaseEditFragment;->m(Lcom/android/calendar/event/NewBaseEditFragment;I)V

    .line 114
    :goto_7
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0}, Lcom/android/calendar/event/NewBaseEditFragment;->l(Lcom/android/calendar/event/NewBaseEditFragment;)Lcom/android/calendar/event/NewBaseEditFragment$i;

    move-result-object v10

    const/16 v11, 0x8

    const/4 v12, 0x0

    sget-object v13, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v14, Lcom/android/calendar/event/j;->h:[Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v15, "calendar_access_level>=500 AND visible=1"

    invoke-virtual/range {v10 .. v17}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    iget-object v2, v0, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    instance-of v3, v2, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    if-eqz v3, :cond_17

    .line 116
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    check-cast v2, Lcom/android/calendar/common/event/schema/BirthdayEvent;

    invoke-static {v0, v2}, Ls1/b;->c(Landroid/content/Context;Lcom/android/calendar/common/event/schema/BirthdayEvent;)V

    goto :goto_8

    .line 117
    :cond_17
    instance-of v3, v2, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    if-eqz v3, :cond_18

    .line 118
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    check-cast v2, Lcom/android/calendar/common/event/schema/AnniversaryEvent;

    invoke-static {v0, v2}, Ls1/a;->f(Landroid/content/Context;Lcom/android/calendar/common/event/schema/AnniversaryEvent;)V

    goto :goto_8

    .line 119
    :cond_18
    instance-of v3, v2, Lcom/android/calendar/common/event/schema/CountdownEvent;

    if-eqz v3, :cond_19

    .line 120
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    check-cast v2, Lcom/android/calendar/common/event/schema/CountdownEvent;

    invoke-static {v0, v2}, Ls1/c;->f(Landroid/content/Context;Lcom/android/calendar/common/event/schema/CountdownEvent;)V

    goto :goto_8

    .line 121
    :cond_19
    instance-of v3, v2, Lcom/android/calendar/common/event/schema/TrainEvent;

    if-eqz v3, :cond_1a

    .line 122
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    check-cast v2, Lcom/android/calendar/common/event/schema/TrainEvent;

    invoke-static {v0, v2}, Ls1/i;->c(Landroid/content/Context;Lcom/android/calendar/common/event/schema/TrainEvent;)V

    goto :goto_8

    .line 123
    :cond_1a
    iget-object v0, v0, Lcom/android/calendar/event/NewBaseEditFragment;->p:Landroid/content/Context;

    invoke-static {v0, v2}, Ls1/e;->i(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;)V

    .line 124
    :goto_8
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v9}, Lcom/android/calendar/event/NewBaseEditFragment;->m(Lcom/android/calendar/event/NewBaseEditFragment;I)V

    :goto_9
    return-void

    .line 125
    :cond_1b
    :goto_a
    iget-object v0, v1, Lcom/android/calendar/event/NewBaseEditFragment$i;->a:Lcom/android/calendar/event/NewBaseEditFragment;

    invoke-static {v0, v2}, Lcom/android/calendar/event/NewBaseEditFragment;->j(Lcom/android/calendar/event/NewBaseEditFragment;Landroid/database/Cursor;)V

    return-void
.end method
