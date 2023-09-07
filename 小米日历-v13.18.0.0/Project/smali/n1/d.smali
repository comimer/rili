.class public Ln1/d;
.super Ljava/lang/Object;
.source "AgendaHelper.java"


# direct methods
.method public static a(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x7

    if-eq p0, v0, :cond_4

    const/16 v0, 0x8

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const p0, 0x7f080171

    goto :goto_0

    :cond_1
    const p0, 0x7f080170

    goto :goto_0

    :cond_2
    const p0, 0x7f080228

    goto :goto_0

    :cond_3
    const p0, 0x7f08020c

    goto :goto_0

    :cond_4
    const p0, 0x7f080210

    goto :goto_0

    :cond_5
    const p0, 0x7f08016f

    :goto_0
    return p0
.end method

.method static b(Lcom/android/calendar/common/event/schema/Event;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/calendar/common/event/schema/Event;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ln1/d;->a(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
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

.method static c(Ln1/e$a;)I
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
    iget-boolean v1, p0, Ln1/e$a;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x2

    .line 10
    return p0

    .line 11
    :cond_1
    iget-boolean p0, p0, Ln1/e$a;->a:Z

    .line 12
    .line 13
    if-eqz p0, :cond_2

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_2
    return v0
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
