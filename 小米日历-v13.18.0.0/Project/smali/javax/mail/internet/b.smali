.class public Ljavax/mail/internet/b;
.super Ljava/lang/Object;
.source "HeaderTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/b$a;
    }
.end annotation


# static fields
.field private static final h:Ljavax/mail/internet/b$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljavax/mail/internet/b$a;

    .line 2
    .line 3
    const/4 v1, -0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-direct {v0, v1, v2}, Ljavax/mail/internet/b$a;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Ljavax/mail/internet/b;->h:Ljavax/mail/internet/b$a;

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
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 7
    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/b;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 2
    :cond_0
    iput-object p1, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 3
    iput-boolean p3, p0, Ljavax/mail/internet/b;->b:Z

    .line 4
    iput-object p2, p0, Ljavax/mail/internet/b;->c:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput p2, p0, Ljavax/mail/internet/b;->g:I

    iput p2, p0, Ljavax/mail/internet/b;->f:I

    iput p2, p0, Ljavax/mail/internet/b;->d:I

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Ljavax/mail/internet/b;->e:I

    return-void
.end method

.method private a(CZ)Ljavax/mail/internet/b$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ljavax/mail/internet/b;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget v2, p0, Ljavax/mail/internet/b;->d:I

    .line 5
    .line 6
    iget v3, p0, Ljavax/mail/internet/b;->e:I

    .line 7
    .line 8
    const/4 v4, -0x2

    .line 9
    const/16 v5, 0x22

    .line 10
    .line 11
    if-ge v2, v3, :cond_5

    .line 12
    .line 13
    iget-object v3, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x5c

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    iget v1, p0, Ljavax/mail/internet/b;->d:I

    .line 25
    .line 26
    add-int/2addr v1, v6

    .line 27
    iput v1, p0, Ljavax/mail/internet/b;->d:I

    .line 28
    .line 29
    :goto_1
    move v1, v6

    .line 30
    goto :goto_3

    .line 31
    :cond_0
    const/16 v3, 0xd

    .line 32
    .line 33
    if-ne v2, v3, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    if-ne v2, p1, :cond_4

    .line 37
    .line 38
    iget p1, p0, Ljavax/mail/internet/b;->d:I

    .line 39
    .line 40
    add-int/2addr p1, v6

    .line 41
    iput p1, p0, Ljavax/mail/internet/b;->d:I

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 46
    .line 47
    sub-int/2addr p1, v6

    .line 48
    invoke-static {v1, v0, p1, p2}, Ljavax/mail/internet/b;->b(Ljava/lang/String;IIZ)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    iget-object p2, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 54
    .line 55
    sub-int/2addr p1, v6

    .line 56
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_2
    if-eq v2, v5, :cond_3

    .line 61
    .line 62
    invoke-static {p1}, Ljavax/mail/internet/b;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget p2, p0, Ljavax/mail/internet/b;->d:I

    .line 67
    .line 68
    sub-int/2addr p2, v6

    .line 69
    iput p2, p0, Ljavax/mail/internet/b;->d:I

    .line 70
    .line 71
    :cond_3
    new-instance p2, Ljavax/mail/internet/b$a;

    .line 72
    .line 73
    invoke-direct {p2, v4, p1}, Ljavax/mail/internet/b$a;-><init>(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object p2

    .line 77
    :cond_4
    :goto_3
    iget v2, p0, Ljavax/mail/internet/b;->d:I

    .line 78
    .line 79
    add-int/2addr v2, v6

    .line 80
    iput v2, p0, Ljavax/mail/internet/b;->d:I

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    if-eq p1, v5, :cond_7

    .line 84
    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    iget-object p1, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {p1, v0, v2, p2}, Ljavax/mail/internet/b;->b(Ljava/lang/String;IIZ)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_4

    .line 94
    :cond_6
    iget-object p1, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_4
    invoke-static {p1}, Ljavax/mail/internet/b;->i(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance p2, Ljavax/mail/internet/b$a;

    .line 105
    .line 106
    invoke-direct {p2, v4, p1}, Ljavax/mail/internet/b$a;-><init>(ILjava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-object p2

    .line 110
    :cond_7
    new-instance p1, Ljavax/mail/internet/ParseException;

    .line 111
    .line 112
    const-string p2, "Unbalanced quoted string"

    .line 113
    .line 114
    invoke-direct {p1, p2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw p1
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

.method private static b(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge p1, p2, :cond_5

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/16 v5, 0xa

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    if-ne v4, v5, :cond_0

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    :goto_1
    move v2, v1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    const/16 v2, 0x5c

    .line 25
    .line 26
    if-nez v3, :cond_3

    .line 27
    .line 28
    if-ne v4, v2, :cond_1

    .line 29
    .line 30
    move v2, v1

    .line 31
    move v3, v6

    .line 32
    goto :goto_2

    .line 33
    :cond_1
    const/16 v2, 0xd

    .line 34
    .line 35
    if-ne v4, v2, :cond_2

    .line 36
    .line 37
    move v2, v6

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_3
    if-eqz p3, :cond_4

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move v2, v1

    .line 52
    move v3, v2

    .line 53
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
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
.end method

.method private c(CZ)Ljavax/mail/internet/b$a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ljavax/mail/internet/b;->d:I

    .line 2
    .line 3
    iget v1, p0, Ljavax/mail/internet/b;->e:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-object p1, Ljavax/mail/internet/b;->h:Ljavax/mail/internet/b$a;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0}, Ljavax/mail/internet/b;->h()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, -0x4

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    sget-object p1, Ljavax/mail/internet/b;->h:Ljavax/mail/internet/b$a;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_1
    iget-object v0, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 21
    .line 22
    iget v2, p0, Ljavax/mail/internet/b;->d:I

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    const/16 v4, 0x28

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    if-ne v0, v4, :cond_b

    .line 34
    .line 35
    iget v0, p0, Ljavax/mail/internet/b;->d:I

    .line 36
    .line 37
    add-int/2addr v0, v5

    .line 38
    iput v0, p0, Ljavax/mail/internet/b;->d:I

    .line 39
    .line 40
    move v6, v5

    .line 41
    :goto_1
    if-lez v6, :cond_6

    .line 42
    .line 43
    iget v7, p0, Ljavax/mail/internet/b;->d:I

    .line 44
    .line 45
    iget v8, p0, Ljavax/mail/internet/b;->e:I

    .line 46
    .line 47
    if-ge v7, v8, :cond_6

    .line 48
    .line 49
    iget-object v8, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    const/16 v8, 0x5c

    .line 56
    .line 57
    if-ne v7, v8, :cond_2

    .line 58
    .line 59
    iget v3, p0, Ljavax/mail/internet/b;->d:I

    .line 60
    .line 61
    add-int/2addr v3, v5

    .line 62
    iput v3, p0, Ljavax/mail/internet/b;->d:I

    .line 63
    .line 64
    :goto_2
    move v3, v5

    .line 65
    goto :goto_3

    .line 66
    :cond_2
    const/16 v8, 0xd

    .line 67
    .line 68
    if-ne v7, v8, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    if-ne v7, v4, :cond_4

    .line 72
    .line 73
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    const/16 v8, 0x29

    .line 77
    .line 78
    if-ne v7, v8, :cond_5

    .line 79
    .line 80
    add-int/lit8 v6, v6, -0x1

    .line 81
    .line 82
    :cond_5
    :goto_3
    iget v7, p0, Ljavax/mail/internet/b;->d:I

    .line 83
    .line 84
    add-int/2addr v7, v5

    .line 85
    iput v7, p0, Ljavax/mail/internet/b;->d:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_6
    if-nez v6, :cond_a

    .line 89
    .line 90
    iget-boolean v4, p0, Ljavax/mail/internet/b;->b:Z

    .line 91
    .line 92
    if-nez v4, :cond_8

    .line 93
    .line 94
    if-eqz v3, :cond_7

    .line 95
    .line 96
    iget-object p1, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 97
    .line 98
    iget v1, p0, Ljavax/mail/internet/b;->d:I

    .line 99
    .line 100
    sub-int/2addr v1, v5

    .line 101
    invoke-static {p1, v0, v1, p2}, Ljavax/mail/internet/b;->b(Ljava/lang/String;IIZ)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    goto :goto_4

    .line 106
    :cond_7
    iget-object p1, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 107
    .line 108
    iget p2, p0, Ljavax/mail/internet/b;->d:I

    .line 109
    .line 110
    sub-int/2addr p2, v5

    .line 111
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :goto_4
    new-instance p2, Ljavax/mail/internet/b$a;

    .line 116
    .line 117
    const/4 v0, -0x3

    .line 118
    invoke-direct {p2, v0, p1}, Ljavax/mail/internet/b$a;-><init>(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object p2

    .line 122
    :cond_8
    invoke-direct {p0}, Ljavax/mail/internet/b;->h()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-ne v0, v1, :cond_9

    .line 127
    .line 128
    sget-object p1, Ljavax/mail/internet/b;->h:Ljavax/mail/internet/b$a;

    .line 129
    .line 130
    return-object p1

    .line 131
    :cond_9
    iget-object v0, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 132
    .line 133
    iget v4, p0, Ljavax/mail/internet/b;->d:I

    .line 134
    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    goto :goto_0

    .line 140
    :cond_a
    new-instance p1, Ljavax/mail/internet/ParseException;

    .line 141
    .line 142
    const-string p2, "Unbalanced comments"

    .line 143
    .line 144
    invoke-direct {p1, p2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p1

    .line 148
    :cond_b
    const/16 v1, 0x22

    .line 149
    .line 150
    if-ne v0, v1, :cond_c

    .line 151
    .line 152
    iget p1, p0, Ljavax/mail/internet/b;->d:I

    .line 153
    .line 154
    add-int/2addr p1, v5

    .line 155
    iput p1, p0, Ljavax/mail/internet/b;->d:I

    .line 156
    .line 157
    invoke-direct {p0, v1, p2}, Ljavax/mail/internet/b;->a(CZ)Ljavax/mail/internet/b$a;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    return-object p1

    .line 162
    :cond_c
    const/16 v3, 0x20

    .line 163
    .line 164
    if-lt v0, v3, :cond_11

    .line 165
    .line 166
    const/16 v6, 0x7f

    .line 167
    .line 168
    if-ge v0, v6, :cond_11

    .line 169
    .line 170
    iget-object v7, p0, Ljavax/mail/internet/b;->c:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    .line 173
    .line 174
    .line 175
    move-result v7

    .line 176
    if-ltz v7, :cond_d

    .line 177
    .line 178
    goto :goto_7

    .line 179
    :cond_d
    iget v0, p0, Ljavax/mail/internet/b;->d:I

    .line 180
    .line 181
    :goto_5
    iget v2, p0, Ljavax/mail/internet/b;->d:I

    .line 182
    .line 183
    iget v7, p0, Ljavax/mail/internet/b;->e:I

    .line 184
    .line 185
    if-ge v2, v7, :cond_10

    .line 186
    .line 187
    iget-object v7, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-lt v2, v3, :cond_f

    .line 194
    .line 195
    if-ge v2, v6, :cond_f

    .line 196
    .line 197
    if-eq v2, v4, :cond_f

    .line 198
    .line 199
    if-eq v2, v3, :cond_f

    .line 200
    .line 201
    if-eq v2, v1, :cond_f

    .line 202
    .line 203
    iget-object v7, p0, Ljavax/mail/internet/b;->c:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    .line 206
    .line 207
    .line 208
    move-result v7

    .line 209
    if-ltz v7, :cond_e

    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_e
    iget v2, p0, Ljavax/mail/internet/b;->d:I

    .line 213
    .line 214
    add-int/2addr v2, v5

    .line 215
    iput v2, p0, Ljavax/mail/internet/b;->d:I

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_f
    :goto_6
    if-lez p1, :cond_10

    .line 219
    .line 220
    if-eq v2, p1, :cond_10

    .line 221
    .line 222
    iput v0, p0, Ljavax/mail/internet/b;->d:I

    .line 223
    .line 224
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/b;->a(CZ)Ljavax/mail/internet/b$a;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    return-object p1

    .line 229
    :cond_10
    new-instance p1, Ljavax/mail/internet/b$a;

    .line 230
    .line 231
    iget-object p2, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 232
    .line 233
    iget v1, p0, Ljavax/mail/internet/b;->d:I

    .line 234
    .line 235
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    const/4 v0, -0x1

    .line 240
    invoke-direct {p1, v0, p2}, Ljavax/mail/internet/b$a;-><init>(ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    return-object p1

    .line 244
    :cond_11
    :goto_7
    if-lez p1, :cond_12

    .line 245
    .line 246
    if-eq v0, p1, :cond_12

    .line 247
    .line 248
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/b;->a(CZ)Ljavax/mail/internet/b$a;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    return-object p1

    .line 253
    :cond_12
    iget p1, p0, Ljavax/mail/internet/b;->d:I

    .line 254
    .line 255
    add-int/2addr p1, v5

    .line 256
    iput p1, p0, Ljavax/mail/internet/b;->d:I

    .line 257
    .line 258
    new-array p1, v5, [C

    .line 259
    .line 260
    aput-char v0, p1, v2

    .line 261
    .line 262
    new-instance p2, Ljavax/mail/internet/b$a;

    .line 263
    .line 264
    new-instance v1, Ljava/lang/String;

    .line 265
    .line 266
    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    .line 267
    .line 268
    .line 269
    invoke-direct {p2, v0, v1}, Ljavax/mail/internet/b$a;-><init>(ILjava/lang/String;)V

    .line 270
    .line 271
    .line 272
    return-object p2
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
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
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
.end method

.method private h()I
    .locals 2

    .line 1
    :goto_0
    iget v0, p0, Ljavax/mail/internet/b;->d:I

    .line 2
    .line 3
    iget v1, p0, Ljavax/mail/internet/b;->e:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    const/16 v1, 0x9

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0xd

    .line 22
    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0xa

    .line 26
    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    iget v0, p0, Ljavax/mail/internet/b;->d:I

    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    iget v0, p0, Ljavax/mail/internet/b;->d:I

    .line 33
    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    iput v0, p0, Ljavax/mail/internet/b;->d:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, -0x4

    .line 40
    return v0
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
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/16 v2, 0x20

    .line 14
    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    const/16 v2, 0x9

    .line 18
    .line 19
    if-eq v1, v2, :cond_0

    .line 20
    .line 21
    const/16 v2, 0xd

    .line 22
    .line 23
    if-eq v1, v2, :cond_0

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    :goto_1
    if-gtz v0, :cond_2

    .line 34
    .line 35
    const-string p0, ""

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_2
    const/4 v1, 0x0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
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
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ljavax/mail/internet/b;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/b;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget v1, p0, Ljavax/mail/internet/b;->f:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
    .line 22
.end method

.method public e()Ljavax/mail/internet/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Ljavax/mail/internet/b;->g(CZ)Ljavax/mail/internet/b$a;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
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

.method public f(C)Ljavax/mail/internet/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/b;->g(CZ)Ljavax/mail/internet/b$a;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
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

.method public g(CZ)Ljavax/mail/internet/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/ParseException;
        }
    .end annotation

    .line 1
    iget v0, p0, Ljavax/mail/internet/b;->f:I

    .line 2
    .line 3
    iput v0, p0, Ljavax/mail/internet/b;->d:I

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/b;->c(CZ)Ljavax/mail/internet/b$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p2, p0, Ljavax/mail/internet/b;->d:I

    .line 10
    .line 11
    iput p2, p0, Ljavax/mail/internet/b;->g:I

    .line 12
    .line 13
    iput p2, p0, Ljavax/mail/internet/b;->f:I

    .line 14
    .line 15
    return-object p1
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
