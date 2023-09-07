.class public final synthetic Lnet/fortuna/ical4j/model/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/Period;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/Period;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/j;->a:Lnet/fortuna/ical4j/model/Period;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/j;->a:Lnet/fortuna/ical4j/model/Period;

    check-cast p1, Lnet/fortuna/ical4j/model/Date;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/Component;->i(Lnet/fortuna/ical4j/model/Period;Lnet/fortuna/ical4j/model/Date;)Z

    move-result p1

    return p1
.end method
