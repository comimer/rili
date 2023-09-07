.class Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$m;
.super Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$p;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$p;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$m;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)I
    .locals 4

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    const v1, 0x7fffffff

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$p;->a(Ljava/lang/String;IIZ)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->e:I

    .line 12
    .line 13
    if-ge v0, v2, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Invalid Interval. Forcing INTERVAL to 1 from "

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iput v2, p2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->e:I

    .line 40
    .line 41
    :cond_0
    const/16 p1, 0x8

    .line 42
    .line 43
    return p1
    .line 44
    .line 45
    .line 46
    .line 47
.end method
