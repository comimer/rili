.class public Lt1/d;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lt1/d;->a:Ljava/lang/String;

    .line 10
    .line 11
    return-void
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

.method public static a(J)I
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lt1/d;->b(Ljava/util/Calendar;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
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

.method public static b(Ljava/util/Calendar;)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/4 v2, 0x2

    .line 7
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    add-int/2addr v3, v0

    .line 12
    const/4 v0, 0x5

    .line 13
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    rsub-int/lit8 v4, v3, 0xe

    .line 18
    .line 19
    div-int/lit8 v4, v4, 0xc

    .line 20
    .line 21
    add-int/lit16 v1, v1, 0x12c0

    .line 22
    .line 23
    sub-int/2addr v1, v4

    .line 24
    mul-int/lit8 v4, v4, 0xc

    .line 25
    .line 26
    add-int/2addr v3, v4

    .line 27
    add-int/lit8 v3, v3, -0x3

    .line 28
    .line 29
    mul-int/lit16 v3, v3, 0x99

    .line 30
    .line 31
    add-int/2addr v3, v2

    .line 32
    div-int/2addr v3, v0

    .line 33
    add-int/2addr p0, v3

    .line 34
    mul-int/lit16 v0, v1, 0x16d

    .line 35
    .line 36
    add-int/2addr p0, v0

    .line 37
    div-int/lit8 v0, v1, 0x4

    .line 38
    .line 39
    add-int/2addr p0, v0

    .line 40
    div-int/lit8 v0, v1, 0x64

    .line 41
    .line 42
    sub-int/2addr p0, v0

    .line 43
    div-int/lit16 v1, v1, 0x190

    .line 44
    .line 45
    add-int/2addr p0, v1

    .line 46
    add-int/lit16 p0, p0, -0x7d2d

    .line 47
    .line 48
    return p0
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
