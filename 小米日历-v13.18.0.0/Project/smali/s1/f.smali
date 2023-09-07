.class public Ls1/f;
.super Ljava/lang/Object;
.source "FlightEventLoader.java"


# direct methods
.method public static a(Landroid/content/Context;J)Lcom/android/calendar/common/event/schema/FlightEvent;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/calendar/common/event/schema/FlightEvent;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/calendar/common/event/schema/FlightEvent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/android/calendar/common/event/schema/Event;->setId(J)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v0}, Ls1/f;->b(Landroid/content/Context;Lcom/android/calendar/common/event/schema/FlightEvent;)V

    .line 10
    .line 11
    .line 12
    return-object v0
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
.end method

.method public static b(Landroid/content/Context;Lcom/android/calendar/common/event/schema/FlightEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "travel_info"

    .line 6
    .line 7
    invoke-static {p0, v0, v1, v2}, Ls1/d;->f(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/android/calendar/common/event/schema/Event;->getId()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-string v3, "flight_info"

    .line 16
    .line 17
    invoke-static {p0, v1, v2, v3}, Ls1/d;->f(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p1, v0, p0}, Lcom/android/calendar/common/event/schema/FlightEvent;->fillEpInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
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
