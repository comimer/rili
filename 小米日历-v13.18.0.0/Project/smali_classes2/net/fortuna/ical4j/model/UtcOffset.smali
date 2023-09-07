.class public Lnet/fortuna/ical4j/model/UtcOffset;
.super Ljava/lang/Object;
.source "UtcOffset.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final HOUR_END_INDEX:I = 0x3

.field private static final HOUR_FORMAT:Ljava/text/NumberFormat;

.field private static final HOUR_START_INDEX:I = 0x1

.field private static final MINUTE_END_INDEX:I = 0x5

.field private static final MINUTE_FORMAT:Ljava/text/NumberFormat;

.field private static final MINUTE_START_INDEX:I = 0x3

.field private static final SECOND_END_INDEX:I = 0x7

.field private static final SECOND_FORMAT:Ljava/text/NumberFormat;

.field private static final SECOND_START_INDEX:I = 0x5

.field private static final serialVersionUID:J = 0x51a50330e26d0b50L


# instance fields
.field private offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    .line 2
    .line 3
    const-string v1, "00"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lnet/fortuna/ical4j/model/UtcOffset;->HOUR_FORMAT:Ljava/text/NumberFormat;

    .line 9
    .line 10
    new-instance v0, Ljava/text/DecimalFormat;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lnet/fortuna/ical4j/model/UtcOffset;->MINUTE_FORMAT:Ljava/text/NumberFormat;

    .line 16
    .line 17
    new-instance v0, Ljava/text/DecimalFormat;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lnet/fortuna/ical4j/model/UtcOffset;->SECOND_FORMAT:Ljava/text/NumberFormat;

    .line 23
    .line 24
    return-void
    .line 25
    .line 26
    .line 27
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "UTC offset value must be signed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    const-wide/16 v5, 0x0

    .line 6
    iput-wide v5, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    const/4 v0, 0x3

    .line 7
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v3, v7

    add-long/2addr v5, v3

    iput-wide v5, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    const-string v3, ":"

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/32 v4, 0xea60

    if-eqz v3, :cond_3

    .line 9
    iget-wide v6, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    const/4 v0, 0x4

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    goto :goto_2

    .line 10
    :cond_3
    iget-wide v6, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v8, v0

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 11
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_4

    .line 12
    iget-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    add-long/2addr v4, v0

    iput-wide v4, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    :cond_4
    if-eqz v2, :cond_5

    .line 13
    iget-wide v0, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    neg-long v0, v0

    iput-wide v0, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    :cond_5
    return-void

    .line 14
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid UTC offset ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] - must be of the form: (+/-)HHMM[SS]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lnet/fortuna/ical4j/model/UtcOffset;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    check-cast p1, Lnet/fortuna/ical4j/model/UtcOffset;

    .line 10
    .line 11
    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long p1, v0, v2

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    return p1

    .line 23
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method

.method public final getOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 2
    .line 3
    return-wide v0
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

.method public final hashCode()I
    .locals 3

    .line 1
    new-instance v0, Lorg/apache/commons/lang3/builder/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/UtcOffset;->getOffset()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/e;->f(J)Lorg/apache/commons/lang3/builder/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/e;->t()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
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

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 7
    .line 8
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    iget-wide v3, p0, Lnet/fortuna/ical4j/model/UtcOffset;->offset:J

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    cmp-long v3, v3, v5

    .line 17
    .line 18
    if-gez v3, :cond_0

    .line 19
    .line 20
    const/16 v3, 0x2d

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v3, 0x2b

    .line 27
    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    :goto_0
    sget-object v3, Lnet/fortuna/ical4j/model/UtcOffset;->HOUR_FORMAT:Ljava/text/NumberFormat;

    .line 32
    .line 33
    const-wide/32 v7, 0x36ee80

    .line 34
    .line 35
    .line 36
    div-long v9, v1, v7

    .line 37
    .line 38
    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    rem-long/2addr v1, v7

    .line 46
    sget-object v3, Lnet/fortuna/ical4j/model/UtcOffset;->MINUTE_FORMAT:Ljava/text/NumberFormat;

    .line 47
    .line 48
    const-wide/32 v7, 0xea60

    .line 49
    .line 50
    .line 51
    div-long v9, v1, v7

    .line 52
    .line 53
    invoke-virtual {v3, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    rem-long/2addr v1, v7

    .line 61
    cmp-long v3, v1, v5

    .line 62
    .line 63
    if-lez v3, :cond_1

    .line 64
    .line 65
    sget-object v3, Lnet/fortuna/ical4j/model/UtcOffset;->SECOND_FORMAT:Ljava/text/NumberFormat;

    .line 66
    .line 67
    const-wide/16 v4, 0x3e8

    .line 68
    .line 69
    div-long/2addr v1, v4

    .line 70
    invoke-virtual {v3, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
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
