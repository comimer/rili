.class public Lf9/i;
.super Lj9/e;
.source "AnimTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj9/e<",
        "Lf9/i;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final h:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final b:Lf9/h;

.field public volatile c:I

.field public volatile d:Lf9/q;

.field public volatile e:J

.field public volatile f:J

.field public volatile g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf9/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

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
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lj9/e;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lf9/h;

    .line 5
    .line 6
    invoke-direct {v0}, Lf9/h;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf9/i;->b:Lf9/h;

    .line 10
    .line 11
    return-void
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

.method public static e(B)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lf9/i;->b:Lf9/h;

    .line 2
    .line 3
    iget v0, v0, Lf9/h;->g:I

    .line 4
    .line 5
    return v0
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
.end method

.method public d()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, p0

    .line 3
    :goto_0
    if-eqz v1, :cond_0

    .line 4
    .line 5
    iget-object v2, v1, Lf9/i;->b:Lf9/h;

    .line 6
    .line 7
    iget v2, v2, Lf9/h;->g:I

    .line 8
    .line 9
    add-int/2addr v0, v2

    .line 10
    iget-object v1, v1, Lj9/e;->a:Lj9/e;

    .line 11
    .line 12
    check-cast v1, Lf9/i;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v0
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

.method public f(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf9/i;->b:Lf9/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lf9/h;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf9/i;->b:Lf9/h;

    .line 7
    .line 8
    iput p2, v0, Lf9/h;->g:I

    .line 9
    .line 10
    iput p1, p0, Lf9/i;->c:I

    .line 11
    .line 12
    return-void
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
.end method

.method public g(JJZ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lf9/i;->e:J

    .line 2
    .line 3
    iput-wide p3, p0, Lf9/i;->f:J

    .line 4
    .line 5
    iput-boolean p5, p0, Lf9/i;->g:Z

    .line 6
    .line 7
    invoke-static {p0}, Lf9/p;->d(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
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
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
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

.method h()V
    .locals 6

    .line 1
    iget v0, p0, Lf9/i;->c:I

    .line 2
    .line 3
    iget v1, p0, Lf9/i;->c:I

    .line 4
    .line 5
    iget-object v2, p0, Lf9/i;->b:Lf9/h;

    .line 6
    .line 7
    iget v2, v2, Lf9/h;->g:I

    .line 8
    .line 9
    add-int/2addr v1, v2

    .line 10
    :goto_0
    if-ge v0, v1, :cond_6

    .line 11
    .line 12
    iget-object v2, p0, Lf9/i;->d:Lf9/q;

    .line 13
    .line 14
    iget-object v2, v2, Lf9/q;->j:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lg9/c;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_0
    iget-object v3, v2, Lg9/c;->f:Lf9/c;

    .line 26
    .line 27
    iget-byte v3, v3, Lf9/c;->a:B

    .line 28
    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_5

    .line 31
    .line 32
    iget-object v3, v2, Lg9/c;->f:Lf9/c;

    .line 33
    .line 34
    iget-byte v3, v3, Lf9/c;->a:B

    .line 35
    .line 36
    if-ne v3, v4, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v3, p0, Lf9/i;->b:Lf9/h;

    .line 40
    .line 41
    iget v5, v3, Lf9/h;->b:I

    .line 42
    .line 43
    add-int/2addr v5, v4

    .line 44
    iput v5, v3, Lf9/h;->b:I

    .line 45
    .line 46
    iget-object v2, v2, Lg9/c;->f:Lf9/c;

    .line 47
    .line 48
    iget-byte v2, v2, Lf9/c;->a:B

    .line 49
    .line 50
    const/4 v3, 0x3

    .line 51
    if-eq v2, v3, :cond_4

    .line 52
    .line 53
    const/4 v3, 0x4

    .line 54
    if-eq v2, v3, :cond_3

    .line 55
    .line 56
    const/4 v3, 0x5

    .line 57
    if-eq v2, v3, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    iget-object v2, p0, Lf9/i;->b:Lf9/h;

    .line 61
    .line 62
    iget v3, v2, Lf9/h;->c:I

    .line 63
    .line 64
    add-int/2addr v3, v4

    .line 65
    iput v3, v2, Lf9/h;->c:I

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    iget-object v2, p0, Lf9/i;->b:Lf9/h;

    .line 69
    .line 70
    iget v3, v2, Lf9/h;->e:I

    .line 71
    .line 72
    add-int/2addr v3, v4

    .line 73
    iput v3, v2, Lf9/h;->e:I

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_4
    iget-object v2, p0, Lf9/i;->b:Lf9/h;

    .line 77
    .line 78
    iget v3, v2, Lf9/h;->f:I

    .line 79
    .line 80
    add-int/2addr v3, v4

    .line 81
    iput v3, v2, Lf9/h;->f:I

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    :goto_1
    iget-object v2, p0, Lf9/i;->b:Lf9/h;

    .line 85
    .line 86
    iget v3, v2, Lf9/h;->a:I

    .line 87
    .line 88
    add-int/2addr v3, v4

    .line 89
    iput v3, v2, Lf9/h;->a:I

    .line 90
    .line 91
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    return-void
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

.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-wide v1, p0, Lf9/i;->e:J

    .line 2
    .line 3
    iget-wide v3, p0, Lf9/i;->f:J

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    iget-boolean v6, p0, Lf9/i;->g:Z

    .line 7
    .line 8
    move-object v0, p0

    .line 9
    invoke-static/range {v0 .. v6}, Lf9/g;->a(Lf9/i;JJZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    const-string v1, "miuix_anim"

    .line 15
    .line 16
    const-string v2, "doAnimationFrame failed"

    .line 17
    .line 18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    sget-object v0, Lf9/i;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    sget-object v0, Lf9/f;->h:Lf9/m;

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
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
