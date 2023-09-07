.class Lcom/android/calendar/event/q1$i;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/q1;->l0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/event/q1;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/q1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/q1$i;->a:Lcom/android/calendar/event/q1;

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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/q1$i;->a:Lcom/android/calendar/event/q1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/event/q1;->y(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/event/schema/Event;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "Cal:D:EditEventView"

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "mRemindersRow.onClick(): model is NULL"

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p1, "edit_event_click_reminder"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/calendar/event/q1$i;->a:Lcom/android/calendar/event/q1;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/android/calendar/event/q1;->v(Lcom/android/calendar/event/q1;)Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-class v2, Lcom/android/calendar/event/NewEditReminderActivity;

    .line 34
    .line 35
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/calendar/event/q1$i;->a:Lcom/android/calendar/event/q1;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/android/calendar/event/q1;->y(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/event/schema/Event;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Lcom/android/calendar/common/event/schema/EventEx;->getReminders()Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/android/calendar/common/event/schema/Reminder;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/android/calendar/common/event/schema/Reminder;->getMinutes()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v3, "prepareReminders(): reminderMinutes:"

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v0, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "extra_reminders"

    .line 106
    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/android/calendar/event/q1$i;->a:Lcom/android/calendar/event/q1;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/android/calendar/event/q1;->K(Lcom/android/calendar/event/q1;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    const-string v1, "extra_allday"

    .line 117
    .line 118
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/calendar/event/q1$i;->a:Lcom/android/calendar/event/q1;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/android/calendar/event/q1;->y(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/event/schema/Event;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/EventEx;->getCalendarMaxReminders()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const-string v1, "extra_max_reminders"

    .line 136
    .line 137
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/android/calendar/event/q1$i;->a:Lcom/android/calendar/event/q1;

    .line 141
    .line 142
    invoke-static {v0}, Lcom/android/calendar/event/q1;->v(Lcom/android/calendar/event/q1;)Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 147
    .line 148
    .line 149
    return-void
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
