.class Lkb/b$e;
.super Ljava/lang/Object;
.source "CustomTrigger.java"

# interfaces
.implements Lkb/a$b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkb/b;


# direct methods
.method constructor <init>(Lkb/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkb/b$e;->a:Lkb/b;

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


# virtual methods
.method public a(Lkb/a$b;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 2
    .line 3
    invoke-static {v0}, Lkb/b;->m(Lkb/b;)Lkb/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lkb/b$e;->a:Lkb/b;

    .line 8
    .line 9
    iget-object v2, v1, Lkb/b;->Q:Lkb/b$g;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v0, v2, :cond_3

    .line 13
    .line 14
    invoke-static {v1}, Lkb/b;->J(Lkb/b;)Lkb/a$a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-ne v0, p1, :cond_3

    .line 19
    .line 20
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 21
    .line 22
    iget-object v0, v0, Lkb/b;->j:Lmiuix/springback/view/SpringBackLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 31
    .line 32
    iget-object v1, v0, Lkb/b;->R:Lkb/b$f;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lkb/b;->U0(Lkb/d;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 38
    .line 39
    invoke-static {v0}, Lkb/b;->z(Lkb/b;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 46
    .line 47
    invoke-static {v0}, Lkb/b;->z(Lkb/b;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x2

    .line 52
    if-ne v0, v1, :cond_2

    .line 53
    .line 54
    :cond_0
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 55
    .line 56
    iget-object v0, v0, Lkb/b;->j:Lmiuix/springback/view/SpringBackLayout;

    .line 57
    .line 58
    invoke-virtual {v0, v3, v3}, Lmiuix/springback/view/SpringBackLayout;->F(II)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 63
    .line 64
    iget-object v1, v0, Lkb/b;->O:Lkb/b$i;

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Lkb/b;->U0(Lkb/d;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 70
    .line 71
    invoke-static {v0}, Lkb/b;->p(Lkb/b;)Lkb/b$j;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lkb/b$e;->a:Lkb/b;

    .line 78
    .line 79
    invoke-static {v0}, Lkb/b;->p(Lkb/b;)Lkb/b$j;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0, p1}, Lkb/b$j;->a(Lkb/a$b;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object p1, p0, Lkb/b$e;->a:Lkb/b;

    .line 87
    .line 88
    invoke-static {p1}, Lkb/b;->n(Lkb/b;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    iget-object p1, p0, Lkb/b$e;->a:Lkb/b;

    .line 95
    .line 96
    invoke-static {p1}, Lkb/b;->q(Lkb/b;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    const-wide/16 v4, 0x1388

    .line 101
    .line 102
    cmp-long p1, v0, v4

    .line 103
    .line 104
    if-lez p1, :cond_4

    .line 105
    .line 106
    iget-object p1, p0, Lkb/b$e;->a:Lkb/b;

    .line 107
    .line 108
    iget-object p1, p1, Lkb/b;->j:Lmiuix/springback/view/SpringBackLayout;

    .line 109
    .line 110
    sget v0, Lmiuix/view/f;->w:I

    .line 111
    .line 112
    sget v1, Lmiuix/view/f;->k:I

    .line 113
    .line 114
    invoke-static {p1, v0, v1}, Lmiuix/view/HapticCompat;->e(Landroid/view/View;II)Z

    .line 115
    .line 116
    .line 117
    iget-object p1, p0, Lkb/b$e;->a:Lkb/b;

    .line 118
    .line 119
    invoke-static {p1}, Lkb/b;->r(Lkb/b;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    iget-object p1, p0, Lkb/b$e;->a:Lkb/b;

    .line 123
    .line 124
    invoke-static {p1, v3}, Lkb/b;->o(Lkb/b;Z)Z

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public b(Lkb/a$b;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lkb/a$b;->f:[Ljava/lang/String;

    .line 2
    .line 3
    aput-object p3, p1, p2

    .line 4
    .line 5
    return-void
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
