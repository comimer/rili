.class public final synthetic Lnet/fortuna/ical4j/model/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/property/DtStart;

.field public final synthetic b:Lnet/fortuna/ical4j/model/DateTime;

.field public final synthetic c:Lnet/fortuna/ical4j/model/Period;

.field public final synthetic d:Lnet/fortuna/ical4j/model/parameter/Value;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/q;->a:Lnet/fortuna/ical4j/model/property/DtStart;

    iput-object p2, p0, Lnet/fortuna/ical4j/model/q;->b:Lnet/fortuna/ical4j/model/DateTime;

    iput-object p3, p0, Lnet/fortuna/ical4j/model/q;->c:Lnet/fortuna/ical4j/model/Period;

    iput-object p4, p0, Lnet/fortuna/ical4j/model/q;->d:Lnet/fortuna/ical4j/model/parameter/Value;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lnet/fortuna/ical4j/model/q;->a:Lnet/fortuna/ical4j/model/property/DtStart;

    iget-object v1, p0, Lnet/fortuna/ical4j/model/q;->b:Lnet/fortuna/ical4j/model/DateTime;

    iget-object v2, p0, Lnet/fortuna/ical4j/model/q;->c:Lnet/fortuna/ical4j/model/Period;

    iget-object v3, p0, Lnet/fortuna/ical4j/model/q;->d:Lnet/fortuna/ical4j/model/parameter/Value;

    check-cast p1, Lnet/fortuna/ical4j/model/property/RRule;

    invoke-static {v0, v1, v2, v3, p1}, Lnet/fortuna/ical4j/model/Component;->o(Lnet/fortuna/ical4j/model/property/DtStart;Lnet/fortuna/ical4j/model/DateTime;Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/parameter/Value;Lnet/fortuna/ical4j/model/property/RRule;)Lnet/fortuna/ical4j/model/DateList;

    move-result-object p1

    return-object p1
.end method
