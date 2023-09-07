.class public Lnet/fortuna/ical4j/model/DateRange;
.super Ljava/lang/Object;
.source "DateRange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INCLUSIVE_END:I = 0x2

.field public static final INCLUSIVE_START:I = 0x1

.field private static final serialVersionUID:J = -0x655c79dbc8a6fbf6L


# instance fields
.field private final rangeEnd:Ljava/util/Date;

.field private final rangeStart:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-object p1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 15
    .line 16
    iput-object p2, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p2, "Range start must be before range end"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "Range end is null"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "Range start is null"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
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
.method public final adjacent(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeEnd()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 16
    .line 17
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final after(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeEnd()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
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

.method public final before(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
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

.method public final contains(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeEnd()Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
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

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    check-cast p1, Lnet/fortuna/ical4j/model/DateRange;

    .line 19
    .line 20
    new-instance v0, Lorg/apache/commons/lang3/builder/c;

    .line 21
    .line 22
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/c;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 26
    .line 27
    iget-object v2, p1, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 34
    .line 35
    iget-object p1, p1, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/lang3/builder/c;->g(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/c;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lorg/apache/commons/lang3/builder/c;->v()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 47
    return p1
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

.method public getRangeEnd()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
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

.method public getRangeStart()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
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

.method public hashCode()I
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/builder/e;

    .line 2
    .line 3
    const/16 v1, 0x11

    .line 4
    .line 5
    const/16 v2, 0x25

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/builder/e;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/e;->g(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/e;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/e;->t()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    return v0
    .line 27
.end method

.method public final includes(Ljava/util/Date;)Z
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;I)Z

    move-result p1

    return p1
.end method

.method public final includes(Ljava/util/Date;I)Z
    .locals 3

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    :goto_0
    and-int/lit8 p2, p2, 0x2

    const/4 v2, 0x0

    if-lez p2, :cond_2

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_1

    .line 5
    iget-object p2, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    invoke-virtual {p2, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_1
    return v1
.end method

.method public final intersects(Lnet/fortuna/ical4j/model/DateRange;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeEnd()Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v2, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeStart:Ljava/util/Date;

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/DateRange;->includes(Ljava/util/Date;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lnet/fortuna/ical4j/model/DateRange;->rangeEnd:Ljava/util/Date;

    .line 34
    .line 35
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/DateRange;->getRangeStart()Ljava/util/Date;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    :goto_0
    return v1
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
