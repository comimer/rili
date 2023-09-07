.class Lcom/android/calendar/event/q1$b;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/q1;->F0()V
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
    iput-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

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
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/calendar/event/q1;->y(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/event/schema/Event;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, "Cal:D:EditEventView"

    .line 10
    .line 11
    const-string p2, "mAllDayCheckBox.onCheckedChanged(): model is NULL"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/miui/calendar/util/z;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-string p1, "edit_event_click_all_day"

    .line 18
    .line 19
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/android/calendar/event/q1;->L(Lcom/android/calendar/event/q1;Z)Z

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/android/calendar/event/q1;->k(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/util/r0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 38
    .line 39
    invoke-static {p2}, Lcom/android/calendar/event/q1;->r(Lcom/android/calendar/event/q1;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/android/calendar/event/q1;->n(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/util/r0;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/miui/calendar/util/r0;->h()Ljava/util/Calendar;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 61
    .line 62
    invoke-static {p2}, Lcom/android/calendar/event/q1;->r(Lcom/android/calendar/event/q1;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/android/calendar/event/q1;->K(Lcom/android/calendar/event/q1;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-static {p1, p2}, Lcom/android/calendar/event/q1;->D(Lcom/android/calendar/event/q1;Z)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/android/calendar/event/q1;->v(Lcom/android/calendar/event/q1;)Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object p2, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 89
    .line 90
    invoke-static {p2}, Lcom/android/calendar/event/q1;->y(Lcom/android/calendar/event/q1;)Lcom/android/calendar/common/event/schema/Event;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object v0, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/android/calendar/event/q1;->K(Lcom/android/calendar/event/q1;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {p1, p2, v0}, Lcom/android/calendar/event/j;->m(Landroid/content/Context;Lcom/android/calendar/common/event/schema/Event;Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/android/calendar/event/q1;->F(Lcom/android/calendar/event/q1;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/calendar/event/q1$b;->a:Lcom/android/calendar/event/q1;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/android/calendar/event/q1;->G(Lcom/android/calendar/event/q1;)V

    .line 111
    .line 112
    .line 113
    return-void
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
