.class Lcom/android/calendar/cards/f0$a;
.super Ljava/lang/Object;
.source "EventCard.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/cards/f0;->q(Lcom/android/calendar/cards/f0$e;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/cards/f0;


# direct methods
.method constructor <init>(Lcom/android/calendar/cards/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/cards/f0$a;->a:Lcom/android/calendar/cards/f0;

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
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Landroid/view/View;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 6
    .line 7
    invoke-static {v1}, Lmiuix/animation/a;->y([Landroid/view/View;)Lmiuix/animation/d;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lmiuix/animation/d;->d()Lmiuix/animation/ITouchStyle;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 16
    .line 17
    sget-object v4, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    .line 18
    .line 19
    aput-object v4, v3, v2

    .line 20
    .line 21
    const/high16 v4, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-array v3, v0, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 28
    .line 29
    sget-object v5, Lmiuix/animation/ITouchStyle$TouchType;->UP:Lmiuix/animation/ITouchStyle$TouchType;

    .line 30
    .line 31
    aput-object v5, v3, v2

    .line 32
    .line 33
    invoke-interface {v1, v4, v3}, Lmiuix/animation/ITouchStyle;->O(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, p2}, Lmiuix/animation/ITouchStyle;->e(Landroid/view/MotionEvent;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, v0, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x3

    .line 54
    if-ne v1, v2, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/calendar/cards/f0$a;->a:Lcom/android/calendar/cards/f0;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/android/calendar/cards/f0;->g(Lcom/android/calendar/cards/f0;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/calendar/cards/f0$a;->a:Lcom/android/calendar/cards/f0;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/android/calendar/cards/f0;->i(Lcom/android/calendar/cards/f0;)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    cmpl-float v1, v1, v2

    .line 75
    .line 76
    if-nez v1, :cond_1

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 79
    .line 80
    .line 81
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/cards/f0$a;->a:Lcom/android/calendar/cards/f0;

    .line 82
    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-static {p1, v1}, Lcom/android/calendar/cards/f0;->h(Lcom/android/calendar/cards/f0;I)I

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/android/calendar/cards/f0$a;->a:Lcom/android/calendar/cards/f0;

    .line 91
    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    invoke-static {p1, p2}, Lcom/android/calendar/cards/f0;->j(Lcom/android/calendar/cards/f0;F)F

    .line 97
    .line 98
    .line 99
    return v0
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
