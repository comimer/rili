.class Lcom/miui/calendar/repeats/a$h;
.super Ljava/lang/Object;
.source "CustomRepeatFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/calendar/repeats/a;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/repeats/a;


# direct methods
.method constructor <init>(Lcom/miui/calendar/repeats/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/repeats/a$h;->a:Lcom/miui/calendar/repeats/a;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/repeats/a$h;->a:Lcom/miui/calendar/repeats/a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/miui/calendar/repeats/a;->i(Lcom/miui/calendar/repeats/a;)Lmiuix/appcompat/widget/Spinner;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 p2, 0x2

    .line 12
    if-ne p2, p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/miui/calendar/repeats/a$h;->a:Lcom/miui/calendar/repeats/a;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/miui/calendar/repeats/a;->m(Lcom/miui/calendar/repeats/a;)Landroid/widget/RadioButton;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/miui/calendar/repeats/a$h;->a:Lcom/miui/calendar/repeats/a;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/miui/calendar/repeats/a;->x(Lcom/miui/calendar/repeats/a;)Landroid/widget/RadioButton;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const/4 p2, 0x1

    .line 33
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p2, 0x3

    .line 38
    if-ne p2, p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/miui/calendar/repeats/a$h;->a:Lcom/miui/calendar/repeats/a;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/miui/calendar/repeats/a;->o(Lcom/miui/calendar/repeats/a;)Lmiuix/slidingwidget/widget/SlidingButton;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/miui/calendar/repeats/a$h;->a:Lcom/miui/calendar/repeats/a;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/miui/calendar/repeats/a;->o(Lcom/miui/calendar/repeats/a;)Lmiuix/slidingwidget/widget/SlidingButton;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    const/4 p2, 0x0

    .line 59
    invoke-virtual {p1, p2}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
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
