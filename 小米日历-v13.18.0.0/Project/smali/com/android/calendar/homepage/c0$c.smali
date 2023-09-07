.class Lcom/android/calendar/homepage/c0$c;
.super Lcom/android/calendar/homepage/c0$l;
.source "BaseWeekView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/homepage/c0;->P()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lcom/android/calendar/homepage/c0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/c0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/c0$l;-><init>(Lcom/android/calendar/homepage/c0;I)V

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
.method b(Lcom/android/calendar/homepage/c0$j;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/calendar/homepage/c0$l;->f:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->n(Lcom/android/calendar/homepage/c0;)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/calendar/homepage/c0$l;->g:F

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->y(Lcom/android/calendar/homepage/c0;)Landroid/graphics/Typeface;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/calendar/homepage/c0$l;->i:Landroid/graphics/Typeface;

    .line 32
    .line 33
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->e:Z

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->H(Lcom/android/calendar/homepage/c0;)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/android/calendar/homepage/c0$l;->h:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->c:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-boolean v1, p1, Lcom/android/calendar/homepage/c0$j;->d:Z

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/calendar/homepage/c0;->V()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->I(Lcom/android/calendar/homepage/c0;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->J(Lcom/android/calendar/homepage/c0;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    :goto_0
    iput p1, p0, Lcom/android/calendar/homepage/c0$l;->h:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_2
    if-nez v0, :cond_3

    .line 79
    .line 80
    iget-boolean p1, p1, Lcom/android/calendar/homepage/c0$j;->d:Z

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->I(Lcom/android/calendar/homepage/c0;)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput p1, p0, Lcom/android/calendar/homepage/c0$l;->h:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->K(Lcom/android/calendar/homepage/c0;)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, p0, Lcom/android/calendar/homepage/c0$l;->h:I

    .line 100
    .line 101
    :goto_1
    invoke-virtual {p0}, Lcom/android/calendar/homepage/c0$l;->c()Landroid/graphics/Paint$FontMetrics;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 106
    .line 107
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 108
    .line 109
    sub-float p1, v0, p1

    .line 110
    .line 111
    const/high16 v1, 0x40000000    # 2.0f

    .line 112
    .line 113
    div-float/2addr p1, v1

    .line 114
    sub-float/2addr p1, v0

    .line 115
    iput p1, p0, Lcom/android/calendar/homepage/c0$k;->c:F

    .line 116
    .line 117
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->L(Lcom/android/calendar/homepage/c0;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    iget p1, p0, Lcom/android/calendar/homepage/c0$k;->c:F

    .line 126
    .line 127
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$c;->p:Lcom/android/calendar/homepage/c0;

    .line 128
    .line 129
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->M(Lcom/android/calendar/homepage/c0;)F

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    sub-float/2addr p1, v0

    .line 134
    iput p1, p0, Lcom/android/calendar/homepage/c0$k;->c:F

    .line 135
    .line 136
    :cond_4
    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/android/calendar/homepage/c0$k;->b:F

    .line 138
    .line 139
    return-void
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
