.class Lcom/android/calendar/homepage/c0$e;
.super Lcom/android/calendar/homepage/c0$i;
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
.field final synthetic k:Lcom/android/calendar/homepage/c0$l;

.field final synthetic l:Lcom/android/calendar/homepage/c0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/c0;ILcom/android/calendar/homepage/c0$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$e;->l:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/android/calendar/homepage/c0$e;->k:Lcom/android/calendar/homepage/c0$l;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/c0$i;-><init>(Lcom/android/calendar/homepage/c0;I)V

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
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
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
.end method


# virtual methods
.method b(Lcom/android/calendar/homepage/c0$j;)V
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$e;->l:Lcom/android/calendar/homepage/c0;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->k(Lcom/android/calendar/homepage/c0;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$e;->l:Lcom/android/calendar/homepage/c0;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->l(Lcom/android/calendar/homepage/c0;)F

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/android/calendar/homepage/c0$i;->f:F

    .line 24
    .line 25
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/calendar/homepage/c0$i;->h:Landroid/graphics/Paint$Style;

    .line 28
    .line 29
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->e:Z

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$e;->l:Lcom/android/calendar/homepage/c0;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->m(Lcom/android/calendar/homepage/c0;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$e;->l:Lcom/android/calendar/homepage/c0;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->o(Lcom/android/calendar/homepage/c0;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    :goto_0
    iput v0, p0, Lcom/android/calendar/homepage/c0$i;->g:I

    .line 47
    .line 48
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->c:Z

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    iget-boolean p1, p1, Lcom/android/calendar/homepage/c0$j;->d:Z

    .line 53
    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$e;->l:Lcom/android/calendar/homepage/c0;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/android/calendar/homepage/c0;->V()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$e;->l:Lcom/android/calendar/homepage/c0;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->I(Lcom/android/calendar/homepage/c0;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$e;->l:Lcom/android/calendar/homepage/c0;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/android/calendar/homepage/c0;->J(Lcom/android/calendar/homepage/c0;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    :goto_1
    iput p1, p0, Lcom/android/calendar/homepage/c0$i;->g:I

    .line 78
    .line 79
    :cond_3
    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/android/calendar/homepage/c0$k;->b:F

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$e;->k:Lcom/android/calendar/homepage/c0$l;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/android/calendar/homepage/c0$l;->c()Landroid/graphics/Paint$FontMetrics;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$e;->k:Lcom/android/calendar/homepage/c0$l;

    .line 89
    .line 90
    iget v0, v0, Lcom/android/calendar/homepage/c0$l;->g:F

    .line 91
    .line 92
    neg-float v0, v0

    .line 93
    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->leading:F

    .line 94
    .line 95
    sub-float/2addr v0, p1

    .line 96
    iput v0, p0, Lcom/android/calendar/homepage/c0$k;->c:F

    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 101
    .line 102
    :goto_3
    return-void
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
