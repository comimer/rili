.class Lcom/android/calendar/event/q1$f;
.super Ljava/lang/Object;
.source "NewEditEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

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
    .locals 3

    .line 1
    const-string p1, "edit_event_click_repeats"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/util/g0;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/calendar/event/q1;->f(Lcom/android/calendar/event/q1;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    new-instance p1, Landroid/content/Intent;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/calendar/event/q1;->v(Lcom/android/calendar/event/q1;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-class v1, Lcom/miui/calendar/repeats/RepeatActivity;

    .line 23
    .line 24
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/calendar/event/q1;->k(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/util/r0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x1

    .line 34
    invoke-virtual {v0, v1}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    const-string v2, "extra_event_time"

    .line 39
    .line 40
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/calendar/event/q1;->r(Lcom/android/calendar/event/q1;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v1, "extra_repeat_time_zone"

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const-string v1, "extra_repeat_selection"

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/calendar/event/q1;->I(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/repeats/RepeatSchema;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/android/calendar/event/q1;->I(Lcom/android/calendar/event/q1;)Lcom/miui/calendar/repeats/RepeatSchema;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0}, Lcom/miui/calendar/repeats/RepeatSchema;->toJsonString(Lcom/miui/calendar/repeats/RepeatSchema;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "extra_custom_repeat_json"

    .line 86
    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/android/calendar/event/q1;->v(Lcom/android/calendar/event/q1;)Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/event/q1$f;->a:Lcom/android/calendar/event/q1;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/android/calendar/event/q1;->y:Lmiuix/appcompat/widget/Spinner;

    .line 103
    .line 104
    invoke-virtual {p1}, Lmiuix/appcompat/widget/Spinner;->performClick()Z

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
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
