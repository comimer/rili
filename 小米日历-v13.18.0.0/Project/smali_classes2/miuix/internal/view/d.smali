.class public Lmiuix/internal/view/d;
.super Ljava/lang/Object;
.source "CheckWidgetDrawableAnims.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:Lmiuix/internal/view/b;

.field private e:Lmiuix/internal/view/b;

.field private f:Lmiuix/internal/view/b;

.field private g:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

.field private h:Lh9/g;

.field private i:Lh9/g;

.field private j:Lh9/g;

.field private k:Lh9/g;

.field private l:Lh9/g;

.field private m:Lh9/g;

.field private n:Lh9/g;

.field private o:Lh9/g;

.field private p:Lh9/g;

.field private q:Lh9/g;

.field private r:Lh9/c$c;

.field private s:Lh9/c$c;

.field private t:Lmiuix/animation/property/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/b<",
            "Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lmiuix/animation/property/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/b<",
            "Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lmiuix/animation/property/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/b<",
            "Lmiuix/internal/view/d;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lmiuix/animation/property/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/animation/property/b<",
            "Lmiuix/internal/view/b;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z


# direct methods
.method public constructor <init>(Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;ZIIIIIIII)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v8, p6

    .line 3
    .line 4
    move/from16 v9, p7

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    iput v1, v0, Lmiuix/internal/view/d;->c:F

    .line 12
    .line 13
    new-instance v1, Lmiuix/internal/view/c;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lmiuix/internal/view/c;-><init>(Lmiuix/internal/view/d;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lmiuix/internal/view/d;->r:Lh9/c$c;

    .line 19
    .line 20
    new-instance v1, Lmiuix/internal/view/d$a;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lmiuix/internal/view/d$a;-><init>(Lmiuix/internal/view/d;)V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lmiuix/internal/view/d;->s:Lh9/c$c;

    .line 26
    .line 27
    new-instance v1, Lmiuix/internal/view/d$b;

    .line 28
    .line 29
    const-string v2, "Scale"

    .line 30
    .line 31
    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/d$b;-><init>(Lmiuix/internal/view/d;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, v0, Lmiuix/internal/view/d;->t:Lmiuix/animation/property/b;

    .line 35
    .line 36
    new-instance v1, Lmiuix/internal/view/d$c;

    .line 37
    .line 38
    const-string v3, "ContentAlpha"

    .line 39
    .line 40
    invoke-direct {v1, p0, v3}, Lmiuix/internal/view/d$c;-><init>(Lmiuix/internal/view/d;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, v0, Lmiuix/internal/view/d;->u:Lmiuix/animation/property/b;

    .line 44
    .line 45
    new-instance v1, Lmiuix/internal/view/d$d;

    .line 46
    .line 47
    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/d$d;-><init>(Lmiuix/internal/view/d;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lmiuix/internal/view/d;->v:Lmiuix/animation/property/b;

    .line 51
    .line 52
    new-instance v1, Lmiuix/internal/view/d$e;

    .line 53
    .line 54
    const-string v2, "Alpha"

    .line 55
    .line 56
    invoke-direct {v1, p0, v2}, Lmiuix/internal/view/d$e;-><init>(Lmiuix/internal/view/d;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lmiuix/internal/view/d;->w:Lmiuix/animation/property/b;

    .line 60
    .line 61
    iput v8, v0, Lmiuix/internal/view/d;->a:I

    .line 62
    .line 63
    iput v9, v0, Lmiuix/internal/view/d;->b:I

    .line 64
    .line 65
    move v1, p2

    .line 66
    iput-boolean v1, v0, Lmiuix/internal/view/d;->x:Z

    .line 67
    .line 68
    new-instance v10, Lmiuix/internal/view/b;

    .line 69
    .line 70
    move-object v1, v10

    .line 71
    move v2, p3

    .line 72
    move/from16 v3, p6

    .line 73
    .line 74
    move/from16 v4, p7

    .line 75
    .line 76
    move/from16 v5, p8

    .line 77
    .line 78
    move/from16 v6, p9

    .line 79
    .line 80
    move/from16 v7, p10

    .line 81
    .line 82
    invoke-direct/range {v1 .. v7}, Lmiuix/internal/view/b;-><init>(IIIIII)V

    .line 83
    .line 84
    .line 85
    iput-object v10, v0, Lmiuix/internal/view/d;->d:Lmiuix/internal/view/b;

    .line 86
    .line 87
    iget v1, v0, Lmiuix/internal/view/d;->a:I

    .line 88
    .line 89
    invoke-virtual {v10, v1}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lmiuix/internal/view/b;

    .line 93
    .line 94
    move v2, p4

    .line 95
    invoke-direct {v1, p4, v8, v9}, Lmiuix/internal/view/b;-><init>(III)V

    .line 96
    .line 97
    .line 98
    iput-object v1, v0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 99
    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-virtual {v1, v2}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 102
    .line 103
    .line 104
    new-instance v1, Lmiuix/internal/view/b;

    .line 105
    .line 106
    move/from16 v2, p5

    .line 107
    .line 108
    invoke-direct {v1, v2, v8, v9}, Lmiuix/internal/view/b;-><init>(III)V

    .line 109
    .line 110
    .line 111
    iput-object v1, v0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 112
    .line 113
    const/16 v2, 0xff

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 116
    .line 117
    .line 118
    move-object v1, p1

    .line 119
    iput-object v1, v0, Lmiuix/internal/view/d;->g:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 120
    .line 121
    invoke-direct {p0}, Lmiuix/internal/view/d;->g()V

    .line 122
    .line 123
    .line 124
    return-void
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
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
.end method

.method public static synthetic a(Lmiuix/internal/view/d;Lh9/c;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/internal/view/d;->h(Lh9/c;FF)V

    return-void
.end method

.method static synthetic b(Lmiuix/internal/view/d;)Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/d;->g:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

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

.method static synthetic c(Lmiuix/internal/view/d;)Lh9/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/d;->o:Lh9/g;

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

.method static synthetic d(Lmiuix/internal/view/d;)Lh9/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/internal/view/d;->p:Lh9/g;

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

.method private g()V
    .locals 11

    .line 1
    new-instance v0, Lh9/g;

    .line 2
    .line 3
    iget-object v1, p0, Lmiuix/internal/view/d;->v:Lmiuix/animation/property/b;

    .line 4
    .line 5
    const v2, 0x3f19999a    # 0.6f

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1, v2}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x4476bd71

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lh9/i;->f(F)Lh9/i;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 24
    .line 25
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const v3, 0x3f7d70a4    # 0.99f

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lh9/i;->d(F)Lh9/i;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 36
    .line 37
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, v2}, Lh9/i;->e(F)Lh9/i;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 45
    .line 46
    const v4, 0x3b03126f    # 0.002f

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v4}, Lh9/c;->k(F)Lh9/c;

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 53
    .line 54
    iget-object v5, p0, Lmiuix/internal/view/d;->s:Lh9/c$c;

    .line 55
    .line 56
    invoke-virtual {v0, v5}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 57
    .line 58
    .line 59
    new-instance v0, Lh9/g;

    .line 60
    .line 61
    iget-object v5, p0, Lmiuix/internal/view/d;->v:Lmiuix/animation/property/b;

    .line 62
    .line 63
    const/high16 v6, 0x3f800000    # 1.0f

    .line 64
    .line 65
    invoke-direct {v0, p0, v5, v6}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 69
    .line 70
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0, v1}, Lh9/i;->f(F)Lh9/i;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 78
    .line 79
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v2}, Lh9/i;->d(F)Lh9/i;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Lh9/c;->k(F)Lh9/c;

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 92
    .line 93
    new-instance v5, Lmiuix/internal/view/d$f;

    .line 94
    .line 95
    invoke-direct {v5, p0}, Lmiuix/internal/view/d$f;-><init>(Lmiuix/internal/view/d;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v5}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 99
    .line 100
    .line 101
    new-instance v0, Lh9/g;

    .line 102
    .line 103
    iget-object v5, p0, Lmiuix/internal/view/d;->g:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 104
    .line 105
    iget-object v7, p0, Lmiuix/internal/view/d;->u:Lmiuix/animation/property/b;

    .line 106
    .line 107
    const/high16 v8, 0x3f000000    # 0.5f

    .line 108
    .line 109
    invoke-direct {v0, v5, v7, v8}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lmiuix/internal/view/d;->n:Lh9/g;

    .line 113
    .line 114
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0, v1}, Lh9/i;->f(F)Lh9/i;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lmiuix/internal/view/d;->n:Lh9/g;

    .line 122
    .line 123
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0, v3}, Lh9/i;->d(F)Lh9/i;

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lmiuix/internal/view/d;->n:Lh9/g;

    .line 131
    .line 132
    const/high16 v5, 0x3b800000    # 0.00390625f

    .line 133
    .line 134
    invoke-virtual {v0, v5}, Lh9/c;->k(F)Lh9/c;

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lmiuix/internal/view/d;->n:Lh9/g;

    .line 138
    .line 139
    iget-object v7, p0, Lmiuix/internal/view/d;->r:Lh9/c$c;

    .line 140
    .line 141
    invoke-virtual {v0, v7}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 142
    .line 143
    .line 144
    new-instance v0, Lh9/g;

    .line 145
    .line 146
    iget-object v7, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 147
    .line 148
    iget-object v8, p0, Lmiuix/internal/view/d;->w:Lmiuix/animation/property/b;

    .line 149
    .line 150
    const v9, 0x3dcccccd    # 0.1f

    .line 151
    .line 152
    .line 153
    invoke-direct {v0, v7, v8, v9}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 154
    .line 155
    .line 156
    iput-object v0, p0, Lmiuix/internal/view/d;->i:Lh9/g;

    .line 157
    .line 158
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Lh9/i;->f(F)Lh9/i;

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lmiuix/internal/view/d;->i:Lh9/g;

    .line 166
    .line 167
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, v3}, Lh9/i;->d(F)Lh9/i;

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lmiuix/internal/view/d;->i:Lh9/g;

    .line 175
    .line 176
    invoke-virtual {v0, v5}, Lh9/c;->k(F)Lh9/c;

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lmiuix/internal/view/d;->i:Lh9/g;

    .line 180
    .line 181
    iget-object v7, p0, Lmiuix/internal/view/d;->r:Lh9/c$c;

    .line 182
    .line 183
    invoke-virtual {v0, v7}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 184
    .line 185
    .line 186
    new-instance v0, Lh9/g;

    .line 187
    .line 188
    iget-object v7, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 189
    .line 190
    iget-object v8, p0, Lmiuix/internal/view/d;->w:Lmiuix/animation/property/b;

    .line 191
    .line 192
    const/4 v9, 0x0

    .line 193
    invoke-direct {v0, v7, v8, v9}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lmiuix/internal/view/d;->j:Lh9/g;

    .line 197
    .line 198
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0, v1}, Lh9/i;->f(F)Lh9/i;

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lmiuix/internal/view/d;->j:Lh9/g;

    .line 206
    .line 207
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v0, v3}, Lh9/i;->d(F)Lh9/i;

    .line 212
    .line 213
    .line 214
    iget-object v0, p0, Lmiuix/internal/view/d;->j:Lh9/g;

    .line 215
    .line 216
    invoke-virtual {v0, v5}, Lh9/c;->k(F)Lh9/c;

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lmiuix/internal/view/d;->j:Lh9/g;

    .line 220
    .line 221
    iget-object v7, p0, Lmiuix/internal/view/d;->r:Lh9/c$c;

    .line 222
    .line 223
    invoke-virtual {v0, v7}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 224
    .line 225
    .line 226
    new-instance v0, Lh9/g;

    .line 227
    .line 228
    iget-object v7, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 229
    .line 230
    iget-object v8, p0, Lmiuix/internal/view/d;->w:Lmiuix/animation/property/b;

    .line 231
    .line 232
    invoke-direct {v0, v7, v8, v6}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 233
    .line 234
    .line 235
    iput-object v0, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 236
    .line 237
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v0, v1}, Lh9/i;->f(F)Lh9/i;

    .line 242
    .line 243
    .line 244
    iget-object v0, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 245
    .line 246
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    const v7, 0x3f333333    # 0.7f

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v7}, Lh9/i;->d(F)Lh9/i;

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 257
    .line 258
    invoke-virtual {v0, v5}, Lh9/c;->k(F)Lh9/c;

    .line 259
    .line 260
    .line 261
    iget-object v0, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 262
    .line 263
    iget-object v7, p0, Lmiuix/internal/view/d;->r:Lh9/c$c;

    .line 264
    .line 265
    invoke-virtual {v0, v7}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 266
    .line 267
    .line 268
    new-instance v0, Lh9/g;

    .line 269
    .line 270
    iget-object v7, p0, Lmiuix/internal/view/d;->g:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 271
    .line 272
    iget-object v8, p0, Lmiuix/internal/view/d;->u:Lmiuix/animation/property/b;

    .line 273
    .line 274
    invoke-direct {v0, v7, v8, v6}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 275
    .line 276
    .line 277
    iput-object v0, p0, Lmiuix/internal/view/d;->o:Lh9/g;

    .line 278
    .line 279
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const v7, 0x43db51ec

    .line 284
    .line 285
    .line 286
    invoke-virtual {v0, v7}, Lh9/i;->f(F)Lh9/i;

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lmiuix/internal/view/d;->o:Lh9/g;

    .line 290
    .line 291
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v0, v2}, Lh9/i;->d(F)Lh9/i;

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lmiuix/internal/view/d;->o:Lh9/g;

    .line 299
    .line 300
    invoke-virtual {v0, v5}, Lh9/c;->k(F)Lh9/c;

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lmiuix/internal/view/d;->o:Lh9/g;

    .line 304
    .line 305
    iget-object v8, p0, Lmiuix/internal/view/d;->r:Lh9/c$c;

    .line 306
    .line 307
    invoke-virtual {v0, v8}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 308
    .line 309
    .line 310
    new-instance v0, Lh9/g;

    .line 311
    .line 312
    iget-object v8, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 313
    .line 314
    iget-object v10, p0, Lmiuix/internal/view/d;->w:Lmiuix/animation/property/b;

    .line 315
    .line 316
    invoke-direct {v0, v8, v10, v9}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 317
    .line 318
    .line 319
    iput-object v0, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 320
    .line 321
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v0, v1}, Lh9/i;->f(F)Lh9/i;

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 329
    .line 330
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    invoke-virtual {v0, v3}, Lh9/i;->d(F)Lh9/i;

    .line 335
    .line 336
    .line 337
    iget-object v0, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 338
    .line 339
    invoke-virtual {v0, v5}, Lh9/c;->k(F)Lh9/c;

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 343
    .line 344
    iget-object v5, p0, Lmiuix/internal/view/d;->r:Lh9/c$c;

    .line 345
    .line 346
    invoke-virtual {v0, v5}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 347
    .line 348
    .line 349
    new-instance v0, Lh9/g;

    .line 350
    .line 351
    iget-object v5, p0, Lmiuix/internal/view/d;->g:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 352
    .line 353
    iget-object v8, p0, Lmiuix/internal/view/d;->t:Lmiuix/animation/property/b;

    .line 354
    .line 355
    invoke-direct {v0, v5, v8, v6}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 356
    .line 357
    .line 358
    iput-object v0, p0, Lmiuix/internal/view/d;->p:Lh9/g;

    .line 359
    .line 360
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    invoke-virtual {v0, v7}, Lh9/i;->f(F)Lh9/i;

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lmiuix/internal/view/d;->p:Lh9/g;

    .line 368
    .line 369
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v0, v2}, Lh9/i;->d(F)Lh9/i;

    .line 374
    .line 375
    .line 376
    iget-object v0, p0, Lmiuix/internal/view/d;->p:Lh9/g;

    .line 377
    .line 378
    invoke-virtual {v0, v4}, Lh9/c;->k(F)Lh9/c;

    .line 379
    .line 380
    .line 381
    iget-object v0, p0, Lmiuix/internal/view/d;->p:Lh9/g;

    .line 382
    .line 383
    iget-object v2, p0, Lmiuix/internal/view/d;->r:Lh9/c$c;

    .line 384
    .line 385
    invoke-virtual {v0, v2}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 386
    .line 387
    .line 388
    iget-boolean v0, p0, Lmiuix/internal/view/d;->x:Z

    .line 389
    .line 390
    if-eqz v0, :cond_0

    .line 391
    .line 392
    iget-object v0, p0, Lmiuix/internal/view/d;->p:Lh9/g;

    .line 393
    .line 394
    const/high16 v2, 0x40a00000    # 5.0f

    .line 395
    .line 396
    invoke-virtual {v0, v2}, Lh9/c;->o(F)Lh9/c;

    .line 397
    .line 398
    .line 399
    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lmiuix/internal/view/d;->p:Lh9/g;

    .line 401
    .line 402
    const/high16 v2, 0x41200000    # 10.0f

    .line 403
    .line 404
    invoke-virtual {v0, v2}, Lh9/c;->o(F)Lh9/c;

    .line 405
    .line 406
    .line 407
    :goto_0
    new-instance v0, Lh9/g;

    .line 408
    .line 409
    iget-object v2, p0, Lmiuix/internal/view/d;->g:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 410
    .line 411
    iget-object v5, p0, Lmiuix/internal/view/d;->t:Lmiuix/animation/property/b;

    .line 412
    .line 413
    const v6, 0x3e99999a    # 0.3f

    .line 414
    .line 415
    .line 416
    invoke-direct {v0, v2, v5, v6}, Lh9/g;-><init>(Ljava/lang/Object;Lmiuix/animation/property/b;F)V

    .line 417
    .line 418
    .line 419
    iput-object v0, p0, Lmiuix/internal/view/d;->q:Lh9/g;

    .line 420
    .line 421
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0, v1}, Lh9/i;->f(F)Lh9/i;

    .line 426
    .line 427
    .line 428
    iget-object v0, p0, Lmiuix/internal/view/d;->q:Lh9/g;

    .line 429
    .line 430
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    invoke-virtual {v0, v3}, Lh9/i;->d(F)Lh9/i;

    .line 435
    .line 436
    .line 437
    iget-object v0, p0, Lmiuix/internal/view/d;->q:Lh9/g;

    .line 438
    .line 439
    invoke-virtual {v0, v4}, Lh9/c;->k(F)Lh9/c;

    .line 440
    .line 441
    .line 442
    iget-object v0, p0, Lmiuix/internal/view/d;->q:Lh9/g;

    .line 443
    .line 444
    iget-object v1, p0, Lmiuix/internal/view/d;->s:Lh9/c$c;

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Lh9/c;->c(Lh9/c$c;)Lh9/c;

    .line 447
    .line 448
    .line 449
    return-void
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    .line 600
    .line 601
    .line 602
    .line 603
    .line 604
    .line 605
    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    .line 670
    .line 671
    .line 672
    .line 673
    .line 674
    .line 675
    .line 676
    .line 677
    .line 678
    .line 679
    .line 680
    .line 681
    .line 682
    .line 683
    .line 684
    .line 685
    .line 686
    .line 687
    .line 688
    .line 689
    .line 690
    .line 691
    .line 692
    .line 693
    .line 694
    .line 695
    .line 696
    .line 697
    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    .line 789
    .line 790
    .line 791
    .line 792
    .line 793
    .line 794
    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    .line 800
    .line 801
    .line 802
    .line 803
    .line 804
    .line 805
    .line 806
    .line 807
    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    .line 813
    .line 814
    .line 815
    .line 816
    .line 817
    .line 818
    .line 819
    .line 820
    .line 821
    .line 822
    .line 823
    .line 824
    .line 825
    .line 826
    .line 827
    .line 828
    .line 829
    .line 830
    .line 831
    .line 832
    .line 833
    .line 834
    .line 835
    .line 836
    .line 837
    .line 838
    .line 839
    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    .line 845
    .line 846
    .line 847
    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    .line 853
    .line 854
    .line 855
    .line 856
    .line 857
    .line 858
    .line 859
    .line 860
    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    .line 1016
    .line 1017
    .line 1018
    .line 1019
    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    .line 1025
    .line 1026
    .line 1027
    .line 1028
    .line 1029
    .line 1030
    .line 1031
    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    .line 1037
    .line 1038
    .line 1039
    .line 1040
    .line 1041
.end method

.method private synthetic h(Lh9/c;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lmiuix/internal/view/d;->g:Lmiuix/internal/view/CheckBoxAnimatedStateListDrawable;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

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


# virtual methods
.method public e(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/d;->d:Lmiuix/internal/view/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/view/b;->draw(Landroid/graphics/Canvas;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lmiuix/internal/view/b;->draw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lmiuix/internal/view/b;->draw(Landroid/graphics/Canvas;)V

    .line 14
    .line 15
    .line 16
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

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/internal/view/d;->c:F

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public i(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/d;->d:Lmiuix/internal/view/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    .line 15
    .line 16
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
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
.end method

.method public j(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/d;->d:Lmiuix/internal/view/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
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

.method public k(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/d;->d:Lmiuix/internal/view/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmiuix/internal/view/b;->a(F)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lmiuix/internal/view/b;->a(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lmiuix/internal/view/b;->a(F)V

    .line 14
    .line 15
    .line 16
    iput p1, p0, Lmiuix/internal/view/d;->c:F

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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method protected l(ZZ)V
    .locals 1

    .line 1
    if-eqz p2, :cond_a

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eq p2, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object p2, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 20
    .line 21
    invoke-virtual {p2}, Lh9/c;->i()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 28
    .line 29
    invoke-virtual {p2}, Lh9/g;->q()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p2, p0, Lmiuix/internal/view/d;->n:Lh9/g;

    .line 33
    .line 34
    invoke-virtual {p2}, Lh9/c;->i()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-nez p2, :cond_2

    .line 39
    .line 40
    iget-object p2, p0, Lmiuix/internal/view/d;->n:Lh9/g;

    .line 41
    .line 42
    invoke-virtual {p2}, Lh9/g;->q()V

    .line 43
    .line 44
    .line 45
    :cond_2
    if-nez p1, :cond_3

    .line 46
    .line 47
    iget-object p1, p0, Lmiuix/internal/view/d;->i:Lh9/g;

    .line 48
    .line 49
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_3

    .line 54
    .line 55
    iget-object p1, p0, Lmiuix/internal/view/d;->i:Lh9/g;

    .line 56
    .line 57
    invoke-virtual {p1}, Lh9/g;->q()V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object p1, p0, Lmiuix/internal/view/d;->j:Lh9/g;

    .line 61
    .line 62
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object p1, p0, Lmiuix/internal/view/d;->j:Lh9/g;

    .line 69
    .line 70
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 74
    .line 75
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 82
    .line 83
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p1, p0, Lmiuix/internal/view/d;->o:Lh9/g;

    .line 87
    .line 88
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_6

    .line 93
    .line 94
    iget-object p1, p0, Lmiuix/internal/view/d;->o:Lh9/g;

    .line 95
    .line 96
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 97
    .line 98
    .line 99
    :cond_6
    iget-object p1, p0, Lmiuix/internal/view/d;->p:Lh9/g;

    .line 100
    .line 101
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    iget-object p1, p0, Lmiuix/internal/view/d;->p:Lh9/g;

    .line 108
    .line 109
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 110
    .line 111
    .line 112
    :cond_7
    iget-object p1, p0, Lmiuix/internal/view/d;->q:Lh9/g;

    .line 113
    .line 114
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    iget-object p1, p0, Lmiuix/internal/view/d;->q:Lh9/g;

    .line 121
    .line 122
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 123
    .line 124
    .line 125
    :cond_8
    iget-object p1, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 126
    .line 127
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_9

    .line 132
    .line 133
    iget-object p1, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 134
    .line 135
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 136
    .line 137
    .line 138
    :cond_9
    iget-object p1, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 139
    .line 140
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_a

    .line 145
    .line 146
    iget-object p1, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 147
    .line 148
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 149
    .line 150
    .line 151
    :cond_a
    :goto_0
    return-void
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
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
.end method

.method protected m(ZZ)V
    .locals 2

    .line 1
    if-eqz p2, :cond_c

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eq p2, v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object p2, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 20
    .line 21
    invoke-virtual {p2}, Lh9/c;->i()Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    iget-object p2, p0, Lmiuix/internal/view/d;->h:Lh9/g;

    .line 28
    .line 29
    invoke-virtual {p2}, Lh9/c;->d()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p2, p0, Lmiuix/internal/view/d;->n:Lh9/g;

    .line 33
    .line 34
    invoke-virtual {p2}, Lh9/c;->i()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_2

    .line 39
    .line 40
    iget-object p2, p0, Lmiuix/internal/view/d;->n:Lh9/g;

    .line 41
    .line 42
    invoke-virtual {p2}, Lh9/c;->d()V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object p2, p0, Lmiuix/internal/view/d;->i:Lh9/g;

    .line 46
    .line 47
    invoke-virtual {p2}, Lh9/c;->i()Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_3

    .line 52
    .line 53
    iget-object p2, p0, Lmiuix/internal/view/d;->i:Lh9/g;

    .line 54
    .line 55
    invoke-virtual {p2}, Lh9/c;->d()V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object p2, p0, Lmiuix/internal/view/d;->j:Lh9/g;

    .line 59
    .line 60
    invoke-virtual {p2}, Lh9/c;->i()Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-nez p2, :cond_4

    .line 65
    .line 66
    iget-object p2, p0, Lmiuix/internal/view/d;->j:Lh9/g;

    .line 67
    .line 68
    invoke-virtual {p2}, Lh9/g;->q()V

    .line 69
    .line 70
    .line 71
    :cond_4
    if-eqz p1, :cond_8

    .line 72
    .line 73
    iget-object p1, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 74
    .line 75
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 82
    .line 83
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p1, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 87
    .line 88
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_6

    .line 93
    .line 94
    iget-object p1, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 95
    .line 96
    invoke-virtual {p1}, Lh9/g;->q()V

    .line 97
    .line 98
    .line 99
    :cond_6
    new-instance p1, Landroid/os/Handler;

    .line 100
    .line 101
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance p2, Lmiuix/internal/view/d$g;

    .line 105
    .line 106
    invoke-direct {p2, p0}, Lmiuix/internal/view/d$g;-><init>(Lmiuix/internal/view/d;)V

    .line 107
    .line 108
    .line 109
    const-wide/16 v0, 0x32

    .line 110
    .line 111
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .line 113
    .line 114
    iget-boolean p1, p0, Lmiuix/internal/view/d;->x:Z

    .line 115
    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    iget-object p1, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 119
    .line 120
    const/high16 p2, 0x41200000    # 10.0f

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Lh9/c;->o(F)Lh9/c;

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    iget-object p1, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 127
    .line 128
    const/high16 p2, 0x40a00000    # 5.0f

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lh9/c;->o(F)Lh9/c;

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_8
    iget-object p1, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 135
    .line 136
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_9

    .line 141
    .line 142
    iget-object p1, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 143
    .line 144
    invoke-virtual {p1}, Lh9/c;->d()V

    .line 145
    .line 146
    .line 147
    :cond_9
    iget-object p1, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 148
    .line 149
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_a

    .line 154
    .line 155
    iget-object p1, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 156
    .line 157
    invoke-virtual {p1}, Lh9/g;->q()V

    .line 158
    .line 159
    .line 160
    :cond_a
    iget-object p1, p0, Lmiuix/internal/view/d;->q:Lh9/g;

    .line 161
    .line 162
    invoke-virtual {p1}, Lh9/c;->i()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_b

    .line 167
    .line 168
    iget-object p1, p0, Lmiuix/internal/view/d;->q:Lh9/g;

    .line 169
    .line 170
    invoke-virtual {p1}, Lh9/g;->q()V

    .line 171
    .line 172
    .line 173
    :cond_b
    :goto_0
    iget-object p1, p0, Lmiuix/internal/view/d;->k:Lh9/g;

    .line 174
    .line 175
    invoke-virtual {p1}, Lh9/g;->q()V

    .line 176
    .line 177
    .line 178
    return-void

    .line 179
    :cond_c
    :goto_1
    const/high16 p2, 0x437f0000    # 255.0f

    .line 180
    .line 181
    if-eqz p1, :cond_d

    .line 182
    .line 183
    iget-object p1, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 184
    .line 185
    iget-object v0, p0, Lmiuix/internal/view/d;->l:Lh9/g;

    .line 186
    .line 187
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lh9/i;->a()F

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    mul-float/2addr v0, p2

    .line 196
    float-to-int p2, v0

    .line 197
    invoke-virtual {p1, p2}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_d
    iget-object p1, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 202
    .line 203
    iget-object v0, p0, Lmiuix/internal/view/d;->m:Lh9/g;

    .line 204
    .line 205
    invoke-virtual {v0}, Lh9/g;->u()Lh9/i;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lh9/i;->a()F

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    mul-float/2addr v0, p2

    .line 214
    float-to-int p2, v0

    .line 215
    invoke-virtual {p1, p2}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 216
    .line 217
    .line 218
    :goto_2
    return-void
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
.end method

.method protected n(ZZ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 7
    .line 8
    const/16 p2, 0xff

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 14
    .line 15
    const/16 p2, 0x19

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p1, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object p1, p0, Lmiuix/internal/view/d;->d:Lmiuix/internal/view/b;

    .line 32
    .line 33
    iget p2, p0, Lmiuix/internal/view/d;->a:I

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, Lmiuix/internal/view/d;->f:Lmiuix/internal/view/b;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lmiuix/internal/view/d;->e:Lmiuix/internal/view/b;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lmiuix/internal/view/d;->d:Lmiuix/internal/view/b;

    .line 50
    .line 51
    iget p2, p0, Lmiuix/internal/view/d;->b:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Lmiuix/internal/view/b;->setAlpha(I)V

    .line 54
    .line 55
    .line 56
    :goto_1
    return-void
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method
