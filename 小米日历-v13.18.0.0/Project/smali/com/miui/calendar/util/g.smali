.class public Lcom/miui/calendar/util/g;
.super Ljava/lang/Object;
.source "CalendarEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/util/g$l;,
        Lcom/miui/calendar/util/g$e0;,
        Lcom/miui/calendar/util/g$z;,
        Lcom/miui/calendar/util/g$f0;,
        Lcom/miui/calendar/util/g$q0;,
        Lcom/miui/calendar/util/g$b;,
        Lcom/miui/calendar/util/g$r;,
        Lcom/miui/calendar/util/g$p;,
        Lcom/miui/calendar/util/g$d0;,
        Lcom/miui/calendar/util/g$r0;,
        Lcom/miui/calendar/util/g$u0;,
        Lcom/miui/calendar/util/g$b0;,
        Lcom/miui/calendar/util/g$n;,
        Lcom/miui/calendar/util/g$q;,
        Lcom/miui/calendar/util/g$x;,
        Lcom/miui/calendar/util/g$w;,
        Lcom/miui/calendar/util/g$u;,
        Lcom/miui/calendar/util/g$i0;,
        Lcom/miui/calendar/util/g$y;,
        Lcom/miui/calendar/util/g$x0;,
        Lcom/miui/calendar/util/g$w0;,
        Lcom/miui/calendar/util/g$k0;,
        Lcom/miui/calendar/util/g$a;,
        Lcom/miui/calendar/util/g$m;,
        Lcom/miui/calendar/util/g$a0;,
        Lcom/miui/calendar/util/g$l0;,
        Lcom/miui/calendar/util/g$s0;,
        Lcom/miui/calendar/util/g$o;,
        Lcom/miui/calendar/util/g$t;,
        Lcom/miui/calendar/util/g$c;,
        Lcom/miui/calendar/util/g$t0;,
        Lcom/miui/calendar/util/g$k;,
        Lcom/miui/calendar/util/g$i;,
        Lcom/miui/calendar/util/g$g;,
        Lcom/miui/calendar/util/g$h;,
        Lcom/miui/calendar/util/g$c0;,
        Lcom/miui/calendar/util/g$v0;,
        Lcom/miui/calendar/util/g$m0;,
        Lcom/miui/calendar/util/g$f;,
        Lcom/miui/calendar/util/g$p0;,
        Lcom/miui/calendar/util/g$o0;,
        Lcom/miui/calendar/util/g$n0;,
        Lcom/miui/calendar/util/g$s;,
        Lcom/miui/calendar/util/g$g0;,
        Lcom/miui/calendar/util/g$d;,
        Lcom/miui/calendar/util/g$e;,
        Lcom/miui/calendar/util/g$j0;,
        Lcom/miui/calendar/util/g$h0;,
        Lcom/miui/calendar/util/g$v;,
        Lcom/miui/calendar/util/g$j;
    }
.end annotation


# direct methods
.method private static a(Lcom/miui/calendar/util/g$j;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "==>> post event: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "Cal:D:CalendarEvent"

    .line 19
    .line 20
    invoke-static {v0, p0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
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
    .line 65
.end method

.method public static b(Lcom/miui/calendar/util/g$j;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "<<== receive event: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p1, p0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
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

.method public static c(Lcom/miui/calendar/util/g$j;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/miui/calendar/util/g;->d(Lcom/miui/calendar/util/g$j;Z)V

    .line 3
    .line 4
    .line 5
    return-void
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

.method public static d(Lcom/miui/calendar/util/g$j;Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/miui/calendar/util/g;->a(Lcom/miui/calendar/util/g$j;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-static {}, Lpc/c;->c()Lpc/c;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p0}, Lpc/c;->k(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
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
