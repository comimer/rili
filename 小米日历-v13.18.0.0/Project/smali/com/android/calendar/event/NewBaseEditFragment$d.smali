.class Lcom/android/calendar/event/NewBaseEditFragment$d;
.super Ljava/lang/Object;
.source "NewBaseEditFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/NewBaseEditFragment;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/calendar/event/NewBaseEditFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/NewBaseEditFragment;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 v0, 0x1

    .line 3
    if-nez p2, :cond_2

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->a:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move p1, v0

    .line 13
    :goto_0
    iput p1, p2, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_5

    .line 16
    .line 17
    iget-object p1, p2, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-boolean p2, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->a:Z

    .line 24
    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/EventEx;->getSyncId()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalSyncId(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getEx()Lcom/android/calendar/common/event/schema/EventEx;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p2, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 53
    .line 54
    iget-object p2, p2, Lcom/android/calendar/event/NewBaseEditFragment;->c:Lcom/android/calendar/common/event/schema/Event;

    .line 55
    .line 56
    invoke-virtual {p2}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {p1, v0, v1}, Lcom/android/calendar/common/event/schema/EventEx;->setOriginalId(J)V

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 v1, 0x2

    .line 65
    if-ne p2, v0, :cond_4

    .line 66
    .line 67
    iget-object p2, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 68
    .line 69
    iget-boolean v0, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->a:Z

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    move p1, v1

    .line 74
    :cond_3
    iput p1, p2, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    if-ne p2, v1, :cond_5

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 80
    .line 81
    iput v1, p1, Lcom/android/calendar/event/NewBaseEditFragment;->i:I

    .line 82
    .line 83
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/calendar/event/NewBaseEditFragment$d;->b:Lcom/android/calendar/event/NewBaseEditFragment;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/android/calendar/event/NewBaseEditFragment;->P()V

    .line 86
    .line 87
    .line 88
    return-void
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
