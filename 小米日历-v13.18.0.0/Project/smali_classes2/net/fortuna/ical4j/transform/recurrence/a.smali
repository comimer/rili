.class public final synthetic Lnet/fortuna/ical4j/transform/recurrence/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lnet/fortuna/ical4j/model/DateList;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Ljava/util/List;Ljava/util/List;Lnet/fortuna/ical4j/model/DateList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/transform/recurrence/a;->a:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    iput-object p2, p0, Lnet/fortuna/ical4j/transform/recurrence/a;->b:Ljava/util/List;

    iput-object p3, p0, Lnet/fortuna/ical4j/transform/recurrence/a;->c:Ljava/util/List;

    iput-object p4, p0, Lnet/fortuna/ical4j/transform/recurrence/a;->d:Lnet/fortuna/ical4j/model/DateList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lnet/fortuna/ical4j/transform/recurrence/a;->a:Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;

    iget-object v1, p0, Lnet/fortuna/ical4j/transform/recurrence/a;->b:Ljava/util/List;

    iget-object v2, p0, Lnet/fortuna/ical4j/transform/recurrence/a;->c:Ljava/util/List;

    iget-object v3, p0, Lnet/fortuna/ical4j/transform/recurrence/a;->d:Lnet/fortuna/ical4j/model/DateList;

    check-cast p1, Lnet/fortuna/ical4j/model/WeekDay;

    invoke-static {v0, v1, v2, v3, p1}, Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;->a(Lnet/fortuna/ical4j/transform/recurrence/ByDayRule;Ljava/util/List;Ljava/util/List;Lnet/fortuna/ical4j/model/DateList;Lnet/fortuna/ical4j/model/WeekDay;)V

    return-void
.end method
