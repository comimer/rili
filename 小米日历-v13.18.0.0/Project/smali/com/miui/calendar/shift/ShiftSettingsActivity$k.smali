.class Lcom/miui/calendar/shift/ShiftSettingsActivity$k;
.super Lcom/miui/calendar/view/i;
.source "ShiftSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/shift/ShiftSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/shift/ShiftSettingsActivity$k$a;
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/miui/calendar/shift/ShiftSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/miui/calendar/shift/ShiftSettingsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    invoke-direct {p0}, Lcom/miui/calendar/view/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/calendar/shift/ShiftSettingsActivity;Lcom/miui/calendar/shift/ShiftSettingsActivity$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;-><init>(Lcom/miui/calendar/shift/ShiftSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->Y(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/miui/calendar/shift/ShiftSchema;->reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return v0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->Y(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Lcom/miui/calendar/shift/ShiftSchema;->reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    return v0
.end method

.method public b(ILandroid/view/View;)Landroid/view/View;
    .locals 8

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->h0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    const v0, 0x7f0d0216

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k$a;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/shift/ShiftSettingsActivity$k$a;-><init>(Lcom/miui/calendar/shift/ShiftSettingsActivity$k;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k$a;

    .line 35
    .line 36
    :goto_0
    iget-object v1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->Y(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Lcom/miui/calendar/shift/ShiftSchema;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v1, v1, Lcom/miui/calendar/shift/ShiftSchema;->reminders:[Lcom/miui/calendar/shift/ShiftReminderSchema;

    .line 43
    .line 44
    aget-object v1, v1, p1

    .line 45
    .line 46
    iget-object v2, v0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k$a;->b:Landroid/widget/TextView;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 49
    .line 50
    const v4, 0x7f120589

    .line 51
    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    new-array v6, v5, [Ljava/lang/Object;

    .line 55
    .line 56
    add-int/2addr p1, v5

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const/4 v7, 0x0

    .line 62
    aput-object p1, v6, v7

    .line 63
    .line 64
    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    iget p1, v1, Lcom/miui/calendar/shift/ShiftReminderSchema;->type:I

    .line 72
    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    iget-object p1, v0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k$a;->c:Landroid/widget/TextView;

    .line 76
    .line 77
    const v1, 0x7f120592

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    iget-object p1, v0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k$a;->c:Landroid/widget/TextView;

    .line 85
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v3, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 92
    .line 93
    invoke-static {v3}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->h0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    iget v4, v1, Lcom/miui/calendar/shift/ShiftReminderSchema;->type:I

    .line 98
    .line 99
    invoke-static {v3, v4}, Lcom/miui/calendar/shift/ShiftReminderSchema$a;->a(Landroid/content/Context;I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v3, " "

    .line 107
    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 112
    .line 113
    invoke-static {v3}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->h0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iget v1, v1, Lcom/miui/calendar/shift/ShiftReminderSchema;->reminderMinutes:I

    .line 118
    .line 119
    invoke-static {v3, v1, v5}, Lcom/miui/calendar/util/s0;->q(Landroid/content/Context;IZ)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    iget-object p1, p0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k;->b:Lcom/miui/calendar/shift/ShiftSettingsActivity;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/miui/calendar/shift/ShiftSettingsActivity;->h0(Lcom/miui/calendar/shift/ShiftSettingsActivity;)Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    const v1, 0x7f070161

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    iget-object v0, v0, Lcom/miui/calendar/shift/ShiftSettingsActivity$k$a;->a:Landroid/view/View;

    .line 151
    .line 152
    invoke-virtual {v0, p1, v7, p1, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 153
    .line 154
    .line 155
    return-object p2
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
