.class public final synthetic Lnet/fortuna/ical4j/model/component/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/DateRange;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/DateRange;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/component/h;->a:Lnet/fortuna/ical4j/model/DateRange;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/h;->a:Lnet/fortuna/ical4j/model/DateRange;

    check-cast p1, Lnet/fortuna/ical4j/model/Period;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/component/VFreeBusy$BusyTimeBuilder;->a(Lnet/fortuna/ical4j/model/DateRange;Lnet/fortuna/ical4j/model/Period;)Z

    move-result p1

    return p1
.end method
