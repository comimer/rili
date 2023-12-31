.class public Lorg/apache/commons/collections4/comparators/NullComparator;
.super Ljava/lang/Object;
.source "NullComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x50c789d15007a6d3L


# instance fields
.field private final nonNullComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field private final nullsAreHigh:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lhc/f;->a:Ljava/util/Comparator;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;Z)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    .line 6
    iput-boolean p2, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    if-eqz p1, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null nonNullComparator"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    sget-object v0, Lhc/f;->a:Ljava/util/Comparator;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)I"
        }
    .end annotation

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x1

    .line 6
    const/4 v1, -0x1

    .line 7
    if-nez p1, :cond_2

    .line 8
    .line 9
    iget-boolean p1, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_0
    return v0

    .line 16
    :cond_2
    if-nez p2, :cond_4

    .line 17
    .line 18
    iget-boolean p1, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_3
    return v0

    .line 24
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    .line 25
    .line 26
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
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

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    if-ne p1, p0, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_2

    .line 22
    .line 23
    return v0

    .line 24
    :cond_2
    check-cast p1, Lorg/apache/commons/collections4/comparators/NullComparator;

    .line 25
    .line 26
    iget-boolean v2, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    .line 27
    .line 28
    iget-boolean v3, p1, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    .line 29
    .line 30
    if-ne v2, v3, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    .line 33
    .line 34
    iget-object p1, p1, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    .line 35
    .line 36
    invoke-interface {v2, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    move v0, v1

    .line 43
    :cond_3
    return v0
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

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nullsAreHigh:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/NullComparator;->nonNullComparator:Ljava/util/Comparator;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    mul-int/2addr v0, v1

    .line 15
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
