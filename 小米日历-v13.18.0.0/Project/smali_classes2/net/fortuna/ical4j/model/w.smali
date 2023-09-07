.class public final synthetic Lnet/fortuna/ical4j/model/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/property/RecurrenceId;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/property/RecurrenceId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/w;->a:Lnet/fortuna/ical4j/model/property/RecurrenceId;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/w;->a:Lnet/fortuna/ical4j/model/property/RecurrenceId;

    check-cast p1, Lnet/fortuna/ical4j/model/Period;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/ComponentGroup;->a(Lnet/fortuna/ical4j/model/property/RecurrenceId;Lnet/fortuna/ical4j/model/Period;)Z

    move-result p1

    return p1
.end method
