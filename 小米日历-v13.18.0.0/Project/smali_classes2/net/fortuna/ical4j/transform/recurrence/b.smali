.class public final synthetic Lnet/fortuna/ical4j/transform/recurrence/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

.field public final synthetic b:Lnet/fortuna/ical4j/model/WeekDay;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/model/WeekDay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/b;->a:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    iput-object p2, p0, Lnet/fortuna/ical4j/transform/recurrence/b;->b:Lnet/fortuna/ical4j/model/WeekDay;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/b;->a:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    iget-object v1, p0, Lnet/fortuna/ical4j/transform/recurrence/b;->b:Lnet/fortuna/ical4j/model/WeekDay;

    check-cast p1, Lnet/fortuna/ical4j/model/Date;

    invoke-static {v0, v1, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->b(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Lnet/fortuna/ical4j/model/WeekDay;Lnet/fortuna/ical4j/model/Date;)Z

    move-result p1

    return p1
.end method
