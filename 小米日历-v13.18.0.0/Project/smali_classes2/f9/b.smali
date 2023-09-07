.class public Lf9/b;
.super Ljava/lang/Object;
.source "AnimData.java"


# instance fields
.field public a:Lmiuix/animation/property/b;

.field public b:D

.field public c:I

.field public d:Z

.field public e:B

.field public f:Lj9/c$a;

.field public g:J

.field public h:J

.field public i:J

.field public j:I

.field public k:D

.field public l:D

.field public m:D

.field public n:D

.field o:Z

.field p:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lf9/b;->j:I

    .line 6
    .line 7
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lf9/b;->l:D

    .line 13
    .line 14
    iput-wide v0, p0, Lf9/b;->m:D

    .line 15
    .line 16
    iput-wide v0, p0, Lf9/b;->n:D

    .line 17
    .line 18
    return-void
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


# virtual methods
.method a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf9/b;->a:Lmiuix/animation/property/b;

    .line 3
    .line 4
    iput-object v0, p0, Lf9/b;->f:Lj9/c$a;

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
.end method

.method b(Lg9/c;Ld9/a;Ld9/c;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lg9/c;->a:Lmiuix/animation/property/b;

    .line 2
    .line 3
    iput-object v0, p0, Lf9/b;->a:Lmiuix/animation/property/b;

    .line 4
    .line 5
    iget-wide v0, p1, Lg9/c;->c:D

    .line 6
    .line 7
    iput-wide v0, p0, Lf9/b;->b:D

    .line 8
    .line 9
    iget v0, p1, Lg9/c;->d:I

    .line 10
    .line 11
    iput v0, p0, Lf9/b;->c:I

    .line 12
    .line 13
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 14
    .line 15
    iget-byte v0, v0, Lf9/c;->a:B

    .line 16
    .line 17
    iput-byte v0, p0, Lf9/b;->e:B

    .line 18
    .line 19
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 20
    .line 21
    iget-wide v0, v0, Lf9/c;->c:J

    .line 22
    .line 23
    iput-wide v0, p0, Lf9/b;->h:J

    .line 24
    .line 25
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 26
    .line 27
    iget-wide v0, v0, Lf9/c;->d:J

    .line 28
    .line 29
    iput-wide v0, p0, Lf9/b;->i:J

    .line 30
    .line 31
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 32
    .line 33
    iget-wide v0, v0, Lf9/c;->e:D

    .line 34
    .line 35
    iput-wide v0, p0, Lf9/b;->k:D

    .line 36
    .line 37
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 38
    .line 39
    iget-wide v0, v0, Lf9/c;->g:D

    .line 40
    .line 41
    iput-wide v0, p0, Lf9/b;->l:D

    .line 42
    .line 43
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 44
    .line 45
    iget-wide v0, v0, Lf9/c;->h:D

    .line 46
    .line 47
    iput-wide v0, p0, Lf9/b;->m:D

    .line 48
    .line 49
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 50
    .line 51
    iget-wide v0, v0, Lf9/c;->i:D

    .line 52
    .line 53
    iput-wide v0, p0, Lf9/b;->n:D

    .line 54
    .line 55
    iget-boolean v0, p1, Lg9/c;->e:Z

    .line 56
    .line 57
    iput-boolean v0, p0, Lf9/b;->d:Z

    .line 58
    .line 59
    iget-object p1, p1, Lg9/c;->f:Lf9/c;

    .line 60
    .line 61
    iget-boolean p1, p1, Lf9/c;->k:Z

    .line 62
    .line 63
    iput-boolean p1, p0, Lf9/b;->o:Z

    .line 64
    .line 65
    invoke-static {p2, p3}, Lf9/a;->e(Ld9/a;Ld9/c;)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lf9/b;->j:I

    .line 70
    .line 71
    invoke-static {p2, p3}, Lf9/a;->c(Ld9/a;Ld9/c;)Lj9/c$a;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Lf9/b;->f:Lj9/c$a;

    .line 76
    .line 77
    invoke-static {p2, p3}, Lf9/a;->b(Ld9/a;Ld9/c;)J

    .line 78
    .line 79
    .line 80
    move-result-wide p1

    .line 81
    iput-wide p1, p0, Lf9/b;->g:J

    .line 82
    .line 83
    return-void
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

.method c()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf9/b;->d:Z

    .line 3
    .line 4
    iput v0, p0, Lf9/b;->c:I

    .line 5
    .line 6
    iput-boolean v0, p0, Lf9/b;->o:Z

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

.method public d(B)V
    .locals 1

    .line 1
    iput-byte p1, p0, Lf9/b;->e:B

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-le p1, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 12
    :goto_1
    iput-boolean p1, p0, Lf9/b;->d:Z

    .line 13
    .line 14
    return-void
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
.end method

.method e(Lg9/c;)V
    .locals 3

    .line 1
    iget v0, p0, Lf9/b;->c:I

    .line 2
    .line 3
    iput v0, p1, Lg9/c;->d:I

    .line 4
    .line 5
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 6
    .line 7
    iget-byte v1, p0, Lf9/b;->e:B

    .line 8
    .line 9
    iput-byte v1, v0, Lf9/c;->a:B

    .line 10
    .line 11
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 12
    .line 13
    iget-wide v1, p0, Lf9/b;->g:J

    .line 14
    .line 15
    iput-wide v1, v0, Lf9/c;->b:J

    .line 16
    .line 17
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 18
    .line 19
    iget v1, p0, Lf9/b;->j:I

    .line 20
    .line 21
    iput v1, v0, Lf9/c;->f:I

    .line 22
    .line 23
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 24
    .line 25
    iget-wide v1, p0, Lf9/b;->h:J

    .line 26
    .line 27
    iput-wide v1, v0, Lf9/c;->c:J

    .line 28
    .line 29
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 30
    .line 31
    iget-wide v1, p0, Lf9/b;->i:J

    .line 32
    .line 33
    iput-wide v1, v0, Lf9/c;->d:J

    .line 34
    .line 35
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 36
    .line 37
    iget-wide v1, p0, Lf9/b;->k:D

    .line 38
    .line 39
    iput-wide v1, v0, Lf9/c;->e:D

    .line 40
    .line 41
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 42
    .line 43
    iget-wide v1, p0, Lf9/b;->l:D

    .line 44
    .line 45
    iput-wide v1, v0, Lf9/c;->g:D

    .line 46
    .line 47
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 48
    .line 49
    iget-wide v1, p0, Lf9/b;->m:D

    .line 50
    .line 51
    iput-wide v1, v0, Lf9/c;->h:D

    .line 52
    .line 53
    iget-boolean v0, p0, Lf9/b;->d:Z

    .line 54
    .line 55
    iput-boolean v0, p1, Lg9/c;->e:Z

    .line 56
    .line 57
    iget-object v0, p1, Lg9/c;->f:Lf9/c;

    .line 58
    .line 59
    iget-wide v1, p0, Lf9/b;->n:D

    .line 60
    .line 61
    iput-wide v1, v0, Lf9/c;->i:D

    .line 62
    .line 63
    iget-wide v0, p0, Lf9/b;->b:D

    .line 64
    .line 65
    iput-wide v0, p1, Lg9/c;->c:D

    .line 66
    .line 67
    iget-object p1, p1, Lg9/c;->f:Lf9/c;

    .line 68
    .line 69
    iget-boolean v0, p0, Lf9/b;->o:Z

    .line 70
    .line 71
    iput-boolean v0, p1, Lf9/c;->k:Z

    .line 72
    .line 73
    invoke-virtual {p0}, Lf9/b;->a()V

    .line 74
    .line 75
    .line 76
    return-void
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
