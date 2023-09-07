.class public final synthetic Lnet/fortuna/ical4j/model/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/time/temporal/TemporalAmount;


# direct methods
.method public synthetic constructor <init>(Ljava/time/temporal/TemporalAmount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/r;->a:Ljava/time/temporal/TemporalAmount;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/r;->a:Ljava/time/temporal/TemporalAmount;

    check-cast p1, Lnet/fortuna/ical4j/model/Date;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/Component;->b(Ljava/time/temporal/TemporalAmount;Lnet/fortuna/ical4j/model/Date;)Lnet/fortuna/ical4j/model/Period;

    move-result-object p1

    return-object p1
.end method
