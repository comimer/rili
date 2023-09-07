.class public final synthetic Lnet/fortuna/ical4j/transform/recurrence/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnet/fortuna/ical4j/model/WeekDay;

    invoke-static {p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule$YearlyExpansionFilter;->b(Lnet/fortuna/ical4j/model/WeekDay;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
