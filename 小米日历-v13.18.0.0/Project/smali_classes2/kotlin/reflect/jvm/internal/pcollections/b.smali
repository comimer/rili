.class public final Lkotlin/reflect/jvm/internal/pcollections/b;
.super Ljava/lang/Object;
.source "HashPMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final c:Lkotlin/reflect/jvm/internal/pcollections/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/b<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/pcollections/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/d<",
            "Lkotlin/reflect/jvm/internal/pcollections/a<",
            "Lkotlin/reflect/jvm/internal/pcollections/MapEntry<",
            "TK;TV;>;>;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/b;

    .line 2
    .line 3
    invoke-static {}, Lkotlin/reflect/jvm/internal/pcollections/d;->a()Lkotlin/reflect/jvm/internal/pcollections/d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/pcollections/b;-><init>(Lkotlin/reflect/jvm/internal/pcollections/d;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lkotlin/reflect/jvm/internal/pcollections/b;->c:Lkotlin/reflect/jvm/internal/pcollections/b;

    .line 12
    .line 13
    return-void
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

.method private constructor <init>(Lkotlin/reflect/jvm/internal/pcollections/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/pcollections/d<",
            "Lkotlin/reflect/jvm/internal/pcollections/a<",
            "Lkotlin/reflect/jvm/internal/pcollections/MapEntry<",
            "TK;TV;>;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/pcollections/b;->a:Lkotlin/reflect/jvm/internal/pcollections/d;

    .line 5
    .line 6
    iput p2, p0, Lkotlin/reflect/jvm/internal/pcollections/b;->b:I

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
.end method

.method private static synthetic a(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "kotlin/reflect/jvm/internal/pcollections/HashPMap"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const-string p0, "empty"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "minus"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "@NotNull method %s.%s must not return null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()Lkotlin/reflect/jvm/internal/pcollections/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/jvm/internal/pcollections/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/pcollections/b;->c:Lkotlin/reflect/jvm/internal/pcollections/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/pcollections/b;->a(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-object v0
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

.method private d(I)Lkotlin/reflect/jvm/internal/pcollections/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/reflect/jvm/internal/pcollections/a<",
            "Lkotlin/reflect/jvm/internal/pcollections/MapEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/b;->a:Lkotlin/reflect/jvm/internal/pcollections/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/pcollections/d;->b(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lkotlin/reflect/jvm/internal/pcollections/a;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lkotlin/reflect/jvm/internal/pcollections/a;->d()Lkotlin/reflect/jvm/internal/pcollections/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_0
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
.end method

.method private static e(Lkotlin/reflect/jvm/internal/pcollections/a;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/pcollections/a<",
            "Lkotlin/reflect/jvm/internal/pcollections/MapEntry<",
            "TK;TV;>;>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    if-eqz p0, :cond_1

    .line 3
    .line 4
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/pcollections/a;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lez v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/pcollections/a;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lkotlin/reflect/jvm/internal/pcollections/MapEntry;

    .line 13
    .line 14
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/pcollections/MapEntry;->key:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/pcollections/a;->b:Lkotlin/reflect/jvm/internal/pcollections/a;

    .line 24
    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, -0x1

    .line 29
    return p0
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


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/pcollections/b;->d(I)Lkotlin/reflect/jvm/internal/pcollections/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/pcollections/a;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-lez v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/pcollections/a;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lkotlin/reflect/jvm/internal/pcollections/MapEntry;

    .line 20
    .line 21
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/pcollections/MapEntry;->key:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object p1, v1, Lkotlin/reflect/jvm/internal/pcollections/MapEntry;->value:Ljava/lang/Object;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/pcollections/a;->b:Lkotlin/reflect/jvm/internal/pcollections/a;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    return-object p1
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
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lkotlin/reflect/jvm/internal/pcollections/b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/pcollections/b;->d(I)Lkotlin/reflect/jvm/internal/pcollections/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/pcollections/a;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/pcollections/b;->e(Lkotlin/reflect/jvm/internal/pcollections/a;Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/pcollections/a;->j(I)Lkotlin/reflect/jvm/internal/pcollections/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    new-instance v2, Lkotlin/reflect/jvm/internal/pcollections/MapEntry;

    .line 25
    .line 26
    invoke-direct {v2, p1, p2}, Lkotlin/reflect/jvm/internal/pcollections/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Lkotlin/reflect/jvm/internal/pcollections/a;->l(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/a;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/b;

    .line 34
    .line 35
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/pcollections/b;->a:Lkotlin/reflect/jvm/internal/pcollections/d;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-virtual {v2, p1, p2}, Lkotlin/reflect/jvm/internal/pcollections/d;->c(ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget v2, p0, Lkotlin/reflect/jvm/internal/pcollections/b;->b:I

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/pcollections/a;->size()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    add-int/2addr v2, p2

    .line 53
    invoke-direct {v0, p1, v2}, Lkotlin/reflect/jvm/internal/pcollections/b;-><init>(Lkotlin/reflect/jvm/internal/pcollections/d;I)V

    .line 54
    .line 55
    .line 56
    return-object v0
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
.end method
