.class public Lcom/android/calendar/event/l;
.super Ljava/lang/Object;
.source "EditResponseHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:I

.field private c:Lmiuix/appcompat/app/l;

.field private d:Landroid/content/DialogInterface$OnClickListener;

.field private e:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/calendar/event/l;->b:I

    .line 6
    .line 7
    new-instance v0, Lcom/android/calendar/event/l$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/android/calendar/event/l$a;-><init>(Lcom/android/calendar/event/l;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/calendar/event/l;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/calendar/event/l;->a:Landroid/app/Activity;

    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method static synthetic a(Lcom/android/calendar/event/l;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/l;->b:I

    .line 2
    .line 3
    return p1
    .line 4
    .line 5
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

.method static synthetic b(Lcom/android/calendar/event/l;)Lmiuix/appcompat/app/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/calendar/event/l;->c:Lmiuix/appcompat/app/l;

    .line 2
    .line 3
    return-object p0
    .line 4
    .line 5
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


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/calendar/event/l;->b:I

    .line 2
    .line 3
    return v0
    .line 4
    .line 5
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

.method public d(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/event/l;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
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

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/calendar/event/l;->b:I

    .line 2
    .line 3
    return-void
    .line 4
    .line 5
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

.method public f(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/calendar/event/l;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p0, p0, Lcom/android/calendar/event/l;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/l$b;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/calendar/event/l;->a:Landroid/app/Activity;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/l$b;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    const v1, 0x7f1200c7

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->F(I)Lmiuix/appcompat/app/l$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x1010355

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l$b;->j(I)Lmiuix/appcompat/app/l$b;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f030014

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/calendar/event/l;->e:Landroid/content/DialogInterface$OnClickListener;

    .line 32
    .line 33
    invoke-virtual {v0, v1, p1, v2}, Lmiuix/appcompat/app/l$b;->B(IILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const v1, 0x104000a

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/android/calendar/event/l;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/l$b;->z(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const/high16 v1, 0x1040000

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/l$b;->r(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/l$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lmiuix/appcompat/app/l$b;->J()Lmiuix/appcompat/app/l;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lcom/android/calendar/event/l;->c:Lmiuix/appcompat/app/l;

    .line 58
    .line 59
    const/4 v1, -0x1

    .line 60
    if-ne p1, v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/l;->e(I)Landroid/widget/Button;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void
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

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method
