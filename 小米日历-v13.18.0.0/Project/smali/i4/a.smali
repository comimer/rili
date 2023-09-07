.class public final synthetic Li4/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/calendar/holiday/model/HolidaySchema;

    check-cast p2, Lcom/miui/calendar/holiday/model/HolidaySchema;

    invoke-static {p1, p2}, Lcom/miui/calendar/provider/MiuiCalendarProvider;->a(Lcom/miui/calendar/holiday/model/HolidaySchema;Lcom/miui/calendar/holiday/model/HolidaySchema;)I

    move-result p1

    return p1
.end method
