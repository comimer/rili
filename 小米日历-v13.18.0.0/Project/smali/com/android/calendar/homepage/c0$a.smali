.class Lcom/android/calendar/homepage/c0$a;
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
.field final synthetic k:Lcom/android/calendar/homepage/c0;


# direct methods
.method constructor <init>(Lcom/android/calendar/homepage/c0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$a;->k:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/homepage/c0$i;-><init>(Lcom/android/calendar/homepage/c0;I)V

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
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$a;->k:Lcom/android/calendar/homepage/c0;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/calendar/homepage/c0;->a(Lcom/android/calendar/homepage/c0;)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/calendar/homepage/c0$i;->f:F

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/calendar/homepage/c0$k;->b:F

    .line 23
    .line 24
    iput v0, p0, Lcom/android/calendar/homepage/c0$k;->c:F

    .line 25
    .line 26
    iget-boolean v0, p1, Lcom/android/calendar/homepage/c0$j;->d:Z

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$a;->k:Lcom/android/calendar/homepage/c0;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/calendar/homepage/c0;->V()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$i;->h:Landroid/graphics/Paint$Style;

    .line 41
    .line 42
    sget p1, Lcom/android/calendar/homepage/c0;->E0:I

    .line 43
    .line 44
    iput p1, p0, Lcom/android/calendar/homepage/c0$i;->g:I

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-boolean p1, p1, Lcom/android/calendar/homepage/c0$j;->d:Z

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/calendar/homepage/c0$a;->k:Lcom/android/calendar/homepage/c0;

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/android/calendar/common/Utils;->o0(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$i;->h:Landroid/graphics/Paint$Style;

    .line 66
    .line 67
    sget p1, Lcom/android/calendar/homepage/c0;->D0:I

    .line 68
    .line 69
    iput p1, p0, Lcom/android/calendar/homepage/c0$i;->g:I

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iput-boolean v1, p0, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iput-boolean v1, p0, Lcom/android/calendar/homepage/c0$k;->a:Z

    .line 76
    .line 77
    :goto_0
    return-void
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
