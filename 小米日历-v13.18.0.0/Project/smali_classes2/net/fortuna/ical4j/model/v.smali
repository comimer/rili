.class public final synthetic Lnet/fortuna/ical4j/model/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/PeriodList;

.field public final synthetic b:Lnet/fortuna/ical4j/model/Period;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/PeriodList;Lnet/fortuna/ical4j/model/Period;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/v;->a:Lnet/fortuna/ical4j/model/PeriodList;

    iput-object p2, p0, Lnet/fortuna/ical4j/model/v;->b:Lnet/fortuna/ical4j/model/Period;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lnet/fortuna/ical4j/model/v;->a:Lnet/fortuna/ical4j/model/PeriodList;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/v;->b:Lnet/fortuna/ical4j/model/Period;

    check-cast p1, Lnet/fortuna/ical4j/model/Component;

    invoke-static {v0, v1, p1}, Lnet/fortuna/ical4j/model/ComponentGroup;->b(Lnet/fortuna/ical4j/model/PeriodList;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Component;)V

    return-void
.end method
