.class public Lj9/i;
.super Ljava/lang/Object;
.source "VelocityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj9/i$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Long;

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lj9/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1e

    .line 5
    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lj9/i;->a:Ljava/lang/Long;

    .line 11
    .line 12
    const-wide/16 v0, 0x64

    .line 13
    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lj9/i;->b:Ljava/lang/Long;

    .line 19
    .line 20
    new-instance v0, Ljava/util/LinkedList;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 26
    .line 27
    return-void
.end method

.method private a(Lj9/i$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/16 v0, 0xa

    .line 13
    .line 14
    if-le p1, v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lj9/i;->j()V

    .line 23
    .line 24
    .line 25
    return-void
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method private b(ILj9/i$b;Lj9/i$b;)F
    .locals 19

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p3

    .line 6
    .line 7
    iget-object v2, v0, Lj9/i$b;->a:[D

    .line 8
    .line 9
    aget-wide v8, v2, p1

    .line 10
    .line 11
    iget-wide v10, v0, Lj9/i$b;->b:J

    .line 12
    .line 13
    iget-object v0, v1, Lj9/i$b;->a:[D

    .line 14
    .line 15
    aget-wide v3, v0, p1

    .line 16
    .line 17
    iget-wide v0, v1, Lj9/i$b;->b:J

    .line 18
    .line 19
    sub-long v5, v10, v0

    .line 20
    .line 21
    move-object/from16 v0, p0

    .line 22
    .line 23
    move-wide v1, v8

    .line 24
    invoke-direct/range {v0 .. v6}, Lj9/i;->f(DDJ)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    float-to-double v12, v0

    .line 29
    iget-object v0, v7, Lj9/i;->c:Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x2

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :goto_0
    const/4 v14, 0x0

    .line 39
    const v15, 0x7f7fffff    # Float.MAX_VALUE

    .line 40
    .line 41
    .line 42
    if-ltz v0, :cond_3

    .line 43
    .line 44
    iget-object v1, v7, Lj9/i;->c:Ljava/util/LinkedList;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v5, v1

    .line 51
    check-cast v5, Lj9/i$b;

    .line 52
    .line 53
    iget-wide v1, v5, Lj9/i$b;->b:J

    .line 54
    .line 55
    sub-long v16, v10, v1

    .line 56
    .line 57
    iget-object v1, v7, Lj9/i;->a:Ljava/lang/Long;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 60
    .line 61
    .line 62
    move-result-wide v1

    .line 63
    cmp-long v1, v16, v1

    .line 64
    .line 65
    if-lez v1, :cond_2

    .line 66
    .line 67
    iget-object v1, v7, Lj9/i;->b:Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    cmp-long v1, v16, v1

    .line 74
    .line 75
    if-gez v1, :cond_2

    .line 76
    .line 77
    iget-object v0, v5, Lj9/i$b;->a:[D

    .line 78
    .line 79
    aget-wide v3, v0, p1

    .line 80
    .line 81
    move-object/from16 v0, p0

    .line 82
    .line 83
    move-wide v1, v8

    .line 84
    move-object/from16 v18, v5

    .line 85
    .line 86
    move-wide/from16 v5, v16

    .line 87
    .line 88
    invoke-direct/range {v0 .. v6}, Lj9/i;->f(DDJ)F

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    float-to-double v1, v0

    .line 93
    mul-double v3, v12, v1

    .line 94
    .line 95
    const-wide/16 v5, 0x0

    .line 96
    .line 97
    cmpl-double v3, v3, v5

    .line 98
    .line 99
    if-lez v3, :cond_1

    .line 100
    .line 101
    cmpl-float v0, v0, v14

    .line 102
    .line 103
    if-lez v0, :cond_0

    .line 104
    .line 105
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->max(DD)D

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(DD)D

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    :goto_1
    double-to-float v0, v0

    .line 115
    :cond_1
    move-object/from16 v1, v18

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_2
    move-object/from16 v18, v5

    .line 119
    .line 120
    add-int/lit8 v0, v0, -0x1

    .line 121
    .line 122
    move-object/from16 v1, v18

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    move v0, v15

    .line 126
    :goto_2
    cmpl-float v2, v0, v15

    .line 127
    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    iget-wide v2, v1, Lj9/i$b;->b:J

    .line 133
    .line 134
    sub-long v5, v10, v2

    .line 135
    .line 136
    iget-object v2, v7, Lj9/i;->a:Ljava/lang/Long;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v2

    .line 142
    cmp-long v2, v5, v2

    .line 143
    .line 144
    if-lez v2, :cond_4

    .line 145
    .line 146
    iget-object v2, v7, Lj9/i;->b:Ljava/lang/Long;

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v2

    .line 152
    cmp-long v2, v5, v2

    .line 153
    .line 154
    if-gez v2, :cond_4

    .line 155
    .line 156
    iget-object v0, v1, Lj9/i$b;->a:[D

    .line 157
    .line 158
    aget-wide v3, v0, p1

    .line 159
    .line 160
    move-object/from16 v0, p0

    .line 161
    .line 162
    move-wide v1, v8

    .line 163
    invoke-direct/range {v0 .. v6}, Lj9/i;->f(DDJ)F

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    :cond_4
    cmpl-float v1, v0, v15

    .line 168
    .line 169
    if-nez v1, :cond_5

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    move v14, v0

    .line 173
    :goto_3
    return v14
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj9/i;->d:[F

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
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
.end method

.method private e()Lj9/i$b;
    .locals 3

    .line 1
    new-instance v0, Lj9/i$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lj9/i$b;-><init>(Lj9/i$a;)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    iput-wide v1, v0, Lj9/i$b;->b:J

    .line 12
    .line 13
    return-object v0
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
.end method

.method private f(DDJ)F
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    sub-double/2addr p1, p3

    long-to-float p3, p5

    const/high16 p4, 0x447a0000    # 1000.0f

    div-float/2addr p3, p4

    float-to-double p3, p3

    div-double/2addr p1, p3

    :goto_0
    double-to-float p1, p1

    return p1
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-lt v0, v1, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lj9/i$b;

    .line 17
    .line 18
    iget-object v3, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 19
    .line 20
    sub-int/2addr v0, v1

    .line 21
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lj9/i$b;

    .line 26
    .line 27
    iget-object v1, p0, Lj9/i;->d:[F

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    array-length v1, v1

    .line 32
    iget-object v3, v2, Lj9/i$b;->a:[D

    .line 33
    .line 34
    array-length v3, v3

    .line 35
    if-ge v1, v3, :cond_1

    .line 36
    .line 37
    :cond_0
    iget-object v1, v2, Lj9/i$b;->a:[D

    .line 38
    .line 39
    array-length v1, v1

    .line 40
    new-array v1, v1, [F

    .line 41
    .line 42
    iput-object v1, p0, Lj9/i;->d:[F

    .line 43
    .line 44
    :cond_1
    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v3, v2, Lj9/i$b;->a:[D

    .line 46
    .line 47
    array-length v3, v3

    .line 48
    if-ge v1, v3, :cond_3

    .line 49
    .line 50
    iget-object v3, p0, Lj9/i;->d:[F

    .line 51
    .line 52
    invoke-direct {p0, v1, v2, v0}, Lj9/i;->b(ILj9/i$b;Lj9/i$b;)F

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    aput v4, v3, v1

    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-direct {p0}, Lj9/i;->d()V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
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
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lj9/i;->d()V

    .line 7
    .line 8
    .line 9
    return-void
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
.end method

.method public g(I)F
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-lez v2, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lj9/i;->c:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lj9/i$b;

    .line 21
    .line 22
    iget-wide v4, v2, Lj9/i$b;->b:J

    .line 23
    .line 24
    sub-long/2addr v0, v4

    .line 25
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    const-wide/16 v4, 0x32

    .line 30
    .line 31
    cmp-long v0, v0, v4

    .line 32
    .line 33
    if-lez v0, :cond_0

    .line 34
    .line 35
    return v3

    .line 36
    :cond_0
    iget-object v0, p0, Lj9/i;->d:[F

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    array-length v1, v0

    .line 41
    if-le v1, p1, :cond_1

    .line 42
    .line 43
    aget p1, v0, p1

    .line 44
    .line 45
    return p1

    .line 46
    :cond_1
    return v3
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
.end method

.method public varargs h([D)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lj9/i;->e()Lj9/i$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object p1, v0, Lj9/i$b;->a:[D

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lj9/i;->a(Lj9/i$b;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
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
.end method

.method public varargs i([F)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0}, Lj9/i;->e()Lj9/i$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, p1

    .line 12
    new-array v1, v1, [D

    .line 13
    .line 14
    iput-object v1, v0, Lj9/i$b;->a:[D

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    array-length v2, p1

    .line 18
    if-ge v1, v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v0, Lj9/i$b;->a:[D

    .line 21
    .line 22
    aget v3, p1, v1

    .line 23
    .line 24
    float-to-double v3, v3

    .line 25
    aput-wide v3, v2, v1

    .line 26
    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-direct {p0, v0}, Lj9/i;->a(Lj9/i$b;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    :goto_1
    return-void
.end method
