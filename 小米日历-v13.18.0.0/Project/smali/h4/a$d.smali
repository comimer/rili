.class Lh4/a$d;
.super Ljava/lang/Object;
.source "CustomReminderTimePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/a;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh4/a;


# direct methods
.method constructor <init>(Lh4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/a$d;->a:Lh4/a;

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
    .locals 6

    .line 1
    iget-object p1, p0, Lh4/a$d;->a:Lh4/a;

    .line 2
    .line 3
    invoke-static {p1}, Lh4/a;->p(Lh4/a;)Lh4/a$e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    iget-object p1, p0, Lh4/a$d;->a:Lh4/a;

    .line 10
    .line 11
    invoke-static {p1}, Lh4/a;->q(Lh4/a;)[Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lh4/a$d;->a:Lh4/a;

    .line 16
    .line 17
    invoke-static {v0}, Lh4/a;->r(Lh4/a;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    aget-object p1, p1, v0

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-object v0, p0, Lh4/a$d;->a:Lh4/a;

    .line 32
    .line 33
    invoke-static {v0}, Lh4/a;->s(Lh4/a;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    add-int/2addr v0, v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eq p1, v1, :cond_2

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    if-eq p1, v3, :cond_1

    .line 48
    .line 49
    const/4 v3, 0x3

    .line 50
    if-eq p1, v3, :cond_0

    .line 51
    .line 52
    move v3, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    mul-int/lit16 v3, v0, 0x5a0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    mul-int/lit8 v3, v0, 0x3c

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v3, v0

    .line 61
    :goto_0
    iget-object v4, p0, Lh4/a$d;->a:Lh4/a;

    .line 62
    .line 63
    invoke-static {v4}, Lh4/a;->p(Lh4/a;)Lh4/a$e;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v4, p1, v0, v3}, Lh4/a$e;->a(III)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object p1, p0, Lh4/a$d;->a:Lh4/a;

    .line 74
    .line 75
    invoke-virtual {p1}, Lmiuix/appcompat/app/l;->dismiss()V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object p1, p0, Lh4/a$d;->a:Lh4/a;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const v0, 0x7f12019b

    .line 90
    .line 91
    .line 92
    new-array v3, v1, [Ljava/lang/Object;

    .line 93
    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object v5, p0, Lh4/a$d;->a:Lh4/a;

    .line 100
    .line 101
    invoke-static {v5}, Lh4/a;->s(Lh4/a;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    add-int/2addr v5, v1

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ""

    .line 114
    .line 115
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lh4/a$d;->a:Lh4/a;

    .line 119
    .line 120
    invoke-static {v1}, Lh4/a;->r(Lh4/a;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedValues()[Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    iget-object v5, p0, Lh4/a$d;->a:Lh4/a;

    .line 129
    .line 130
    invoke-static {v5}, Lh4/a;->r(Lh4/a;)Lmiuix/pickerwidget/widget/NumberPicker;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v5}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    aget-object v1, v1, v5

    .line 139
    .line 140
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    aput-object v1, v3, v2

    .line 148
    .line 149
    invoke-static {p1, v0, v3}, Lcom/miui/calendar/util/t0;->g(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_1
    return-void
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
