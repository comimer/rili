.class public Lcom/android/calendar/homepage/c0$j;
.super Ljava/lang/Object;
.source "BaseWeekView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/homepage/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "j"
.end annotation


# instance fields
.field a:I

.field b:Ljava/util/Calendar;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field final synthetic l:Lcom/android/calendar/homepage/c0;


# direct methods
.method public constructor <init>(Lcom/android/calendar/homepage/c0;I)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcom/android/calendar/homepage/c0$j;->l:Lcom/android/calendar/homepage/c0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/android/calendar/homepage/c0$j;->a:I

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/calendar/homepage/c0;->d:Ljava/util/Calendar;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/Calendar;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->add(II)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 23
    .line 24
    iget-object v1, p1, Lcom/android/calendar/homepage/c0;->e:Ljava/util/Calendar;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/miui/calendar/util/s0;->u(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$j;->c:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/miui/calendar/util/s0;->A(Ljava/util/Calendar;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$j;->d:Z

    .line 39
    .line 40
    iget-object v0, p1, Lcom/android/calendar/homepage/c0;->f:Ljava/util/Calendar;

    .line 41
    .line 42
    const/4 v1, 0x2

    .line 43
    const/4 v2, 0x0

    .line 44
    const/4 v3, 0x1

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v4, p0, Lcom/android/calendar/homepage/c0$j;->b:Ljava/util/Calendar;

    .line 52
    .line 53
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-ne v0, v4, :cond_0

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move v0, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    move v0, v3

    .line 63
    :goto_1
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$j;->e:Z

    .line 64
    .line 65
    iget-object v0, p1, Lcom/android/calendar/homepage/c0;->j:[Z

    .line 66
    .line 67
    aget-boolean v0, v0, p2

    .line 68
    .line 69
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$j;->f:Z

    .line 70
    .line 71
    iget-object v0, p1, Lcom/android/calendar/homepage/c0;->i:[I

    .line 72
    .line 73
    aget v0, v0, p2

    .line 74
    .line 75
    if-ne v0, v3, :cond_2

    .line 76
    .line 77
    move v4, v3

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move v4, v2

    .line 80
    :goto_2
    iput-boolean v4, p0, Lcom/android/calendar/homepage/c0$j;->g:Z

    .line 81
    .line 82
    if-ne v0, v1, :cond_3

    .line 83
    .line 84
    move v0, v3

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    move v0, v2

    .line 87
    :goto_3
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$j;->h:Z

    .line 88
    .line 89
    iget-object v0, p1, Lcom/android/calendar/homepage/c0;->c:Lcom/android/calendar/common/e;

    .line 90
    .line 91
    iget-boolean v0, v0, Lcom/android/calendar/common/e;->t:Z

    .line 92
    .line 93
    xor-int/2addr v0, v3

    .line 94
    iput-boolean v0, p0, Lcom/android/calendar/homepage/c0$j;->i:Z

    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/calendar/homepage/c0;->k:[Z

    .line 97
    .line 98
    aget-boolean p1, p1, p2

    .line 99
    .line 100
    iput-boolean p1, p0, Lcom/android/calendar/homepage/c0$j;->j:Z

    .line 101
    .line 102
    iput-boolean v2, p0, Lcom/android/calendar/homepage/c0$j;->k:Z

    .line 103
    .line 104
    return-void
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
