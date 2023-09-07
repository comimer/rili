.class public final synthetic Lnet/fortuna/ical4j/model/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lnet/fortuna/ical4j/model/property/RDate;

    invoke-static {p1}, Lnet/fortuna/ical4j/model/Component;->e(Lnet/fortuna/ical4j/model/property/RDate;)Z

    move-result p1

    return p1
.end method
