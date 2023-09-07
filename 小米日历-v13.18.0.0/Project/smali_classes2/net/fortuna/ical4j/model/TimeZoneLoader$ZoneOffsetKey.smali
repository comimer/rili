.class Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;
.super Ljava/lang/Object;
.source "TimeZoneLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/TimeZoneLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZoneOffsetKey"
.end annotation


# instance fields
.field private final offsetAfter:Ljava/time/ZoneOffset;

.field private final offsetBefore:Ljava/time/ZoneOffset;


# direct methods
.method private constructor <init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetBefore:Ljava/time/ZoneOffset;

    .line 5
    .line 6
    iput-object p2, p0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetAfter:Ljava/time/ZoneOffset;

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

.method static synthetic access$000(Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;)Ljava/time/ZoneOffset;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetAfter:Ljava/time/ZoneOffset;

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

.method static synthetic access$100(Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;)Ljava/time/ZoneOffset;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetBefore:Ljava/time/ZoneOffset;

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

.method static of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;
    .locals 1

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;-><init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    .line 4
    .line 5
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


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;

    .line 12
    .line 13
    iget-object v1, p0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetBefore:Ljava/time/ZoneOffset;

    .line 14
    .line 15
    iget-object v3, p1, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetBefore:Ljava/time/ZoneOffset;

    .line 16
    .line 17
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetAfter:Ljava/time/ZoneOffset;

    .line 24
    .line 25
    iget-object p1, p1, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetAfter:Ljava/time/ZoneOffset;

    .line 26
    .line 27
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v0, v2

    .line 35
    :goto_0
    return v0
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
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetBefore:Ljava/time/ZoneOffset;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/time/ZoneOffset;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lnet/fortuna/ical4j/model/TimeZoneLoader$ZoneOffsetKey;->offsetAfter:Ljava/time/ZoneOffset;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    invoke-virtual {v2}, Ljava/time/ZoneOffset;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    :goto_1
    mul-int/2addr v0, v1

    .line 24
    return v0
    .line 25
    .line 26
    .line 27
.end method
