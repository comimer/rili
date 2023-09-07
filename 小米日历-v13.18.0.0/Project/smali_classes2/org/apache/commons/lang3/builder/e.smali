.class public Lorg/apache/commons/lang3/builder/e;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"


# static fields
.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lorg/apache/commons/lang3/builder/f;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/apache/commons/lang3/builder/e;->c:Ljava/lang/ThreadLocal;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x25

    .line 2
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    const/16 v0, 0x11

    .line 3
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 6
    rem-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "HashCodeBuilder requires an odd initial value"

    invoke-static {v1, v4, v3}, Lorg/apache/commons/lang3/f;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    rem-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-static {v2, v1, v0}, Lorg/apache/commons/lang3/f;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iput p2, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 9
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    return-void
.end method

.method private s(Ljava/lang/Object;)V
    .locals 1

    .line 1
    instance-of v0, p1, [J

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, [J

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->o([J)Lorg/apache/commons/lang3/builder/e;

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    instance-of v0, p1, [I

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    check-cast p1, [I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->n([I)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    instance-of v0, p1, [S

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    check-cast p1, [S

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->q([S)Lorg/apache/commons/lang3/builder/e;

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    instance-of v0, p1, [C

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    check-cast p1, [C

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->k([C)Lorg/apache/commons/lang3/builder/e;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_3
    instance-of v0, p1, [B

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    check-cast p1, [B

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->j([B)Lorg/apache/commons/lang3/builder/e;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_4
    instance-of v0, p1, [D

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    check-cast p1, [D

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->l([D)Lorg/apache/commons/lang3/builder/e;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_5
    instance-of v0, p1, [F

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    check-cast p1, [F

    .line 66
    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->m([F)Lorg/apache/commons/lang3/builder/e;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_6
    instance-of v0, p1, [Z

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    check-cast p1, [Z

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->r([Z)Lorg/apache/commons/lang3/builder/e;

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_7
    check-cast p1, [Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/builder/e;->p([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
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


# virtual methods
.method public a(B)Lorg/apache/commons/lang3/builder/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    add-int/2addr v0, p1

    .line 7
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 8
    .line 9
    return-object p0
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

.method public b(C)Lorg/apache/commons/lang3/builder/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    add-int/2addr v0, p1

    .line 7
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 8
    .line 9
    return-object p0
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

.method public c(D)Lorg/apache/commons/lang3/builder/e;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/builder/e;->f(J)Lorg/apache/commons/lang3/builder/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
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

.method public d(F)Lorg/apache/commons/lang3/builder/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    add-int/2addr v0, p1

    .line 11
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 12
    .line 13
    return-object p0
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

.method public e(I)Lorg/apache/commons/lang3/builder/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    add-int/2addr v0, p1

    .line 7
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 8
    .line 9
    return-object p0
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

.method public f(J)Lorg/apache/commons/lang3/builder/e;
    .locals 3

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    const/16 v1, 0x20

    .line 7
    .line 8
    shr-long v1, p1, v1

    .line 9
    .line 10
    xor-long/2addr p1, v1

    .line 11
    long-to-int p1, p1

    .line 12
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 14
    .line 15
    return-object p0
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

.method public g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lorg/apache/commons/lang3/builder/e;->s(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 26
    .line 27
    iget v1, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 28
    .line 29
    mul-int/2addr v0, v1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    add-int/2addr v0, p1

    .line 35
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 36
    .line 37
    :goto_0
    return-object p0
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
.end method

.method public h(S)Lorg/apache/commons/lang3/builder/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    add-int/2addr v0, p1

    .line 7
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 8
    .line 9
    return-object p0
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

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/builder/e;->t()I

    .line 2
    .line 3
    .line 4
    move-result v0

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

.method public i(Z)Lorg/apache/commons/lang3/builder/e;
    .locals 2

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 2
    .line 3
    iget v1, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 4
    .line 5
    mul-int/2addr v0, v1

    .line 6
    xor-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    add-int/2addr v0, p1

    .line 9
    iput v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 10
    .line 11
    return-object p0
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

.method public j([B)Lorg/apache/commons/lang3/builder/e;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-byte v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/e;->a(B)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public k([C)Lorg/apache/commons/lang3/builder/e;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-char v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/e;->b(C)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public l([D)Lorg/apache/commons/lang3/builder/e;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-wide v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/builder/e;->c(D)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public m([F)Lorg/apache/commons/lang3/builder/e;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/e;->d(F)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public n([I)Lorg/apache/commons/lang3/builder/e;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/e;->e(I)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public o([J)Lorg/apache/commons/lang3/builder/e;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-wide v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/builder/e;->f(J)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public p([Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-object v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public q([S)Lorg/apache/commons/lang3/builder/e;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-short v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/e;->h(S)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public r([Z)Lorg/apache/commons/lang3/builder/e;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 4
    .line 5
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->a:I

    .line 6
    .line 7
    mul-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/apache/commons/lang3/builder/e;->b:I

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    array-length v0, p1

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    aget-boolean v2, p1, v1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/builder/e;->i(Z)Lorg/apache/commons/lang3/builder/e;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    return-object p0
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

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/apache/commons/lang3/builder/e;->b:I

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
