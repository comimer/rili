.class Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$l;
.super Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$p;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
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
    invoke-direct {p0}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$l;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->a()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence;->b:I

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    new-instance p2, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "Invalid FREQ value: "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-direct {p2, p1}, Lcom/miui/calendar/util/calendarcommon2/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p2
    .line 44
    .line 45
    .line 46
    .line 47
.end method
