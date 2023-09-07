.class public final synthetic Lnet/fortuna/ical4j/model/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lnet/fortuna/ical4j/model/Component;


# direct methods
.method public synthetic constructor <init>(Lnet/fortuna/ical4j/model/Component;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/fortuna/ical4j/model/e;->a:Lnet/fortuna/ical4j/model/Component;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnet/fortuna/ical4j/model/e;->a:Lnet/fortuna/ical4j/model/Component;

    check-cast p1, Lnet/fortuna/ical4j/model/Period;

    invoke-static {v0, p1}, Lnet/fortuna/ical4j/model/Component;->g(Lnet/fortuna/ical4j/model/Component;Lnet/fortuna/ical4j/model/Period;)V

    return-void
.end method
