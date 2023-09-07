.class public Lcom/android/calendar/common/k;
.super Ljava/lang/Object;
.source "MaxYearUtils.java"


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:J

.field private static f:J


# direct methods
.method public static a(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/Calendar;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    sget v1, Lcom/android/calendar/common/k;->d:I

    .line 12
    .line 13
    if-le p0, v1, :cond_0

    .line 14
    .line 15
    :goto_0
    sub-int/2addr v1, p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget v1, Lcom/android/calendar/common/k;->c:I

    .line 18
    .line 19
    if-ge p0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v1, 0x0

    .line 23
    :goto_1
    const/4 p0, 0x6

    .line 24
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 25
    .line 26
    .line 27
    return-object v0
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
.end method

.method public static b()I
    .locals 1

    .line 1
    sget v0, Lcom/android/calendar/common/k;->d:I

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
.end method

.method public static c()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/calendar/common/k;->f:J

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
.end method

.method public static d()I
    .locals 1

    .line 1
    sget v0, Lcom/android/calendar/common/k;->b:I

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
.end method

.method public static e()I
    .locals 1

    .line 1
    sget v0, Lcom/android/calendar/common/k;->c:I

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
.end method

.method public static f()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/calendar/common/k;->e:J

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
.end method

.method public static g()I
    .locals 1

    .line 1
    sget v0, Lcom/android/calendar/common/k;->a:I

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
.end method

.method public static h(Ljava/util/Calendar;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/miui/calendar/util/s0;->m(Ljava/util/Calendar;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    sget v1, Lcom/android/calendar/common/k;->c:I

    .line 10
    .line 11
    if-lt p0, v1, :cond_1

    .line 12
    .line 13
    sget v1, Lcom/android/calendar/common/k;->d:I

    .line 14
    .line 15
    if-gt p0, v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    :cond_1
    return v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public static i()V
    .locals 8

    .line 1
    const/16 v0, 0x7b2

    .line 2
    .line 3
    sput v0, Lcom/android/calendar/common/k;->a:I

    .line 4
    .line 5
    const/16 v1, 0x7f5

    .line 6
    .line 7
    sput v1, Lcom/android/calendar/common/k;->b:I

    .line 8
    .line 9
    new-instance v2, Lcom/miui/calendar/util/r0;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/calendar/util/r0;->B(III)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->l()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-static {v4, v5, v6, v7}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/android/calendar/common/k;->c:I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    sput-wide v4, Lcom/android/calendar/common/k;->e:J

    .line 38
    .line 39
    const/16 v0, 0x1f

    .line 40
    .line 41
    const/16 v4, 0xb

    .line 42
    .line 43
    invoke-virtual {v2, v0, v4, v1}, Lcom/miui/calendar/util/r0;->B(III)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->l()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-static {v0, v1, v4, v5}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sput v0, Lcom/android/calendar/common/k;->d:I

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    sput-wide v0, Lcom/android/calendar/common/k;->f:J

    .line 65
    .line 66
    return-void
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

.method public static j()V
    .locals 8

    .line 1
    const/16 v0, 0x76d

    .line 2
    .line 3
    sput v0, Lcom/android/calendar/common/k;->a:I

    .line 4
    .line 5
    const/16 v1, 0x833

    .line 6
    .line 7
    sput v1, Lcom/android/calendar/common/k;->b:I

    .line 8
    .line 9
    new-instance v2, Lcom/miui/calendar/util/r0;

    .line 10
    .line 11
    invoke-direct {v2}, Lcom/miui/calendar/util/r0;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-virtual {v2, v3, v4, v0}, Lcom/miui/calendar/util/r0;->B(III)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->l()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-static {v4, v5, v6, v7}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/android/calendar/common/k;->c:I

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    sput-wide v4, Lcom/android/calendar/common/k;->e:J

    .line 38
    .line 39
    const/16 v0, 0x1f

    .line 40
    .line 41
    const/16 v4, 0xb

    .line 42
    .line 43
    invoke-virtual {v2, v0, v4, v1}, Lcom/miui/calendar/util/r0;->B(III)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    invoke-virtual {v2}, Lcom/miui/calendar/util/r0;->l()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-static {v0, v1, v4, v5}, Lcom/miui/calendar/util/r0;->n(JJ)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sput v0, Lcom/android/calendar/common/k;->d:I

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lcom/miui/calendar/util/r0;->P(Z)J

    .line 61
    .line 62
    .line 63
    move-result-wide v0

    .line 64
    sput-wide v0, Lcom/android/calendar/common/k;->f:J

    .line 65
    .line 66
    return-void
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
